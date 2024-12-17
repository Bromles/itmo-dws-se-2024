import {Api as FigmaApi, isNodeType, Node} from 'figma-api';
import {GetImageResult} from 'figma-api/lib/api-types';
import lodashChunk from 'lodash/chunk';

export type IconDescription = {
    componentId: string;
    name: string;
};

export type IconDescriptionWithLink = IconDescription & {
    link: string;
};

/** The name of the canvas in the file from which the icons will be loaded */
const CANVAS_NAME = 'glyphs';
/** Available icon sizes specified in Figma */
const AVAILABLE_SIZES = [24];
/** RegExp for getting the region code from the component name */
const REGION_CODE_REGEXP = /_([a-z]{2})_/;
/** RegExp for getting the size from the component name*/
export const SIZE_REGEXP = /_([0-9]{2})/;
/** RegExp to discard rubrics fallbacks */
const RUBRIC_FALLBACK_REGEXP = /fallback_.+\d{2}$/;
const INTL_REGION_CODES = new Intl.DisplayNames(['en'], {type: 'region'});
/** A number between 0.01 and 4, the image scaling factor */
const IMAGE_SCALE = 1;
const ICONS_PER_CHUNK = 100;

/**
 * Gets a description and links to download icons from Figma
 * @returns Description of the icons and links to download them, which are located in Figma.
 */
export async function fetchFigmaIcons(): Promise<IconDescriptionWithLink[]> {
    const personalAccessToken: string | undefined = process.env.FIGMA_API_TOKEN;
    const fileId: string | undefined = process.env.FIGMA_FILE_ID;

    if (!personalAccessToken) {
        throw new Error('No Figma access token found in environment variable FIGMA_API_TOKEN');
    }
    if (!fileId) {
        throw new Error('No Figma file id found in environment variable FIGMA_FILE_ID');
    }

    const api = new FigmaApi({personalAccessToken});
    const components = await getComponents(fileId, CANVAS_NAME, api);
    const iconDescriptions = getIconDescriptions(components, AVAILABLE_SIZES);
    const imageLinks = await getImageLinks(iconDescriptions, fileId, api);
    return imageLinks;
}

/**
 * Get components that are included in the canvas from Figma
 * @param fileId - ID of the document where the canvas is located
 * @param canvasName - The name of the canvas from which the components come
 * @param api - Object for accessing the Figma API
 * @returns Array of component nodes
 */
const getComponents = async (fileId: string, canvasName: string, api: FigmaApi): Promise<Node<'COMPONENT'>[]> => {
    const file = await api.getFile(fileId);

    const canvas = file.document.children.find((child) => child.name === canvasName) as Node<'CANVAS'>;
    if (!canvas) {
        throw new Error(`Canvas "${canvasName}" not found!`);
    }

    return canvas.children.reduce((components, child) => {
        if (!isNodeType(child, 'GROUP')) {
            return components;
        }
        const newComponents = child.children.filter((child) => isNodeType(child, 'INSTANCE')) as Node<'COMPONENT'>[];
        return components.concat(newComponents);
    }, [] as Node<'COMPONENT'>[]);
};

/**
 * Gets a description of icons from the component nodes
 * @param components - Array of component nodes
 * @param availableSizes - Acceptable icon sizes
 * @returns Array of objects with icon descriptions
 */
const getIconDescriptions = (components: Node<'COMPONENT'>[], availableSizes: number[]): IconDescription[] => {
    return components
        .filter((component) => {
            // the component must have export settings
            if (component.exportSettings === undefined || component.exportSettings.length === 0) {
                return false;
            }
            // the component should not have a regional code
            if (componentNameHasRegionCode(component.name)) {
                return false;
            }
            // the component must be of allowed size and square
            if (!componentAvailableSize(component.name, availableSizes)) {
                return false;
            }
            // without fallback icons
            if (RUBRIC_FALLBACK_REGEXP.test(component.name)) {
                return false;
            }
            const {height, width} = component.absoluteBoundingBox;
            return height === width;
        })
        .map<IconDescription>((component) => ({componentId: component.id, name: component.name}));
};

/**
 * Adds download links to the icon descriptions
 * @param descriptions - Array of objects with icon descriptions
 * @param fileId - ID of the document where the icons are located
 * @param api - Object for accessing the Figma API
 * @returns Array of objects with descriptions and download links for icons
 */
const getImageLinks = async (
    descriptions: IconDescription[],
    fileId: string,
    api: FigmaApi
): Promise<IconDescriptionWithLink[]> => {
    const chunks = lodashChunk(descriptions, ICONS_PER_CHUNK);
    const linkChunks = await Promise.all(
        chunks.map((chunk) =>
            api.getImage(fileId, {
                ids: chunk.map((icon) => icon.componentId).join(','),
                scale: IMAGE_SCALE,
                format: 'svg'
            })
        )
    );
    const links = linkChunks.reduce<GetImageResult>(
        (memo, chunk) => {
            if (chunk.err) {
                memo.err = chunk.err;
            }
            if (chunk.images) {
                memo.images = {...memo.images, ...chunk.images};
            }
            return memo;
        },
        {images: {}}
    );

    if (links.err) {
        throw new Error(`Error while loading links: ${links.err}`);
    }

    return descriptions.reduce<IconDescriptionWithLink[]>((descriptionsWithLink, description) => {
        const link = links.images[description.componentId];
        if (link) {
            return descriptionsWithLink.concat({...description, link});
        }
        return descriptionsWithLink;
    }, []);
};

/**
 * Checks that the component name has a region code
 * @param componentName - Component name
 * @returns `true` if the component name contains the region code
 */
const componentNameHasRegionCode = (componentName: string): boolean => {
    const regionMatch = REGION_CODE_REGEXP.exec(componentName);
    if (regionMatch === null) {
        return false;
    }
    const [, regionCode] = regionMatch;
    const uppercaseCode = regionCode.toUpperCase();
    return INTL_REGION_CODES.of(uppercaseCode) !== uppercaseCode;
};

/**
 * Checks that the allowed size is specified in the component name
 * @param componentName - Component name
 * @param availableSizes - Array with acceptable icon sizes
 * @returns `true` if the component name contains a valid size
 */
const componentAvailableSize = (componentName: string, availableSizes: number[]): boolean => {
    const sizeMatch = SIZE_REGEXP.exec(componentName);
    if (sizeMatch === null) {
        return false;
    }
    const [, rawSize] = sizeMatch;
    const size = rawSize ? Number(rawSize) : undefined;
    return availableSizes.includes(size as number);
};
