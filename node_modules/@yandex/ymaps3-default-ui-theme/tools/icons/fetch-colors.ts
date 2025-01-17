import {Color, Api as FigmaApi, Node} from 'figma-api';

/** The name of the canvas in the file from which the colors will be loaded */
const CANVAS_NAME = 'colors';
const PALETTE_NAME = 'rubrics';

const PRIMARY_DAY = 'maps_pin_primary_day';
const PRIMARY_NIGHT = 'maps_pin_primary_night';

type RubricColors = {
    rubricName: string;
    primaryDay: string;
    primaryNight: string;
};

export type MarkerColors = {
    day: string;
    night: string;
};

export type FetchedColors = {
    colors: MarkerColors[];
};

export const fetchFigmaColors = async (): Promise<FetchedColors> => {
    const personalAccessToken: string | undefined = process.env.FIGMA_API_TOKEN;
    const fileId: string | undefined = process.env.FIGMA_FILE_ID;

    if (!personalAccessToken) {
        throw new Error('No Figma access token found in environment variable FIGMA_API_TOKEN');
    }
    if (!fileId) {
        throw new Error('No Figma file id found in environment variable FIGMA_FILE_ID');
    }

    const api = new FigmaApi({personalAccessToken});
    const file = await api.getFile(fileId);
    const canvas = file.document.children.find((child) => child.name === CANVAS_NAME) as Node<'CANVAS'>;
    const rubricsPalette = canvas.children.find((child) => child.name === PALETTE_NAME) as Node<'GROUP'>;
    const rubrics = rubricsPalette.children.filter(({name}) => !name.includes('fallback')) as Node<'GROUP'>[];

    const rubricColors = rubrics.reduce((rubricColors, {name, children}) => {
        const colors = children as Node<'RECTANGLE'>[];

        const primaryDay = colors.find((color) => color.name === PRIMARY_DAY)?.fills[0].color;
        const primaryNight = colors.find((color) => color.name === PRIMARY_NIGHT)?.fills[0].color;

        if (primaryDay === undefined || primaryNight === undefined) {
            return rubricColors;
        }

        return rubricColors.concat({
            rubricName: name,
            primaryDay: rgbaToHex(primaryDay),
            primaryNight: rgbaToHex(primaryNight)
        });
    }, [] as RubricColors[]);

    const dayNightColorsMap = rubricColors.reduce((colorsMap, {primaryDay, primaryNight}) => {
        colorsMap.set(primaryDay, primaryNight);
        return colorsMap;
    }, new Map<string, string>());

    const colors = Array.from(dayNightColorsMap.entries()).map(([day, night]) => ({day, night}));
    return {colors};
};

const rgbaToHex = (rgba: Color): string => {
    const r255 = Math.floor(rgba.r * 255);
    const g255 = Math.floor(rgba.g * 255);
    const b255 = Math.floor(rgba.b * 255);
    const a255 = Math.floor(rgba.a * 255);
    return '#' + componentToHex(r255) + componentToHex(g255) + componentToHex(b255) + componentToHex(a255);
};

const componentToHex = (c: number): string => c.toString(16).padStart(2, '0');
