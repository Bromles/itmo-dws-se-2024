import fs from 'fs/promises';
import path from 'path';
import {IconDescriptionWithData} from './get-image-files';
import {STATIC_ICONS_PATH} from './paths';

export type LocalIconDescription = {
    name: string;
};

export const getLocalIcons = async (): Promise<LocalIconDescription[]> => {
    const currentFilenames = await fs.readdir(STATIC_ICONS_PATH);
    const descriptions: LocalIconDescription[] = await Promise.all(
        currentFilenames.map(async (filename) => {
            const fileExtension = path.parse(filename).ext.slice(1);
            if (fileExtension !== 'svg' && fileExtension !== 'png') {
                throw new Error('Unknown file extension.');
            }
            const cleanFilename = path.parse(filename).name;
            return {
                name: cleanFilename
            };
        })
    );
    return descriptions;
};

export const updateLocalFiles = async (icons: IconDescriptionWithData[]) => {
    await Promise.all(
        icons.map((icon) => {
            const filePath = path.join(STATIC_ICONS_PATH, `${icon.name}.svg`);
            return fs.writeFile(filePath, icon.data, 'utf-8');
        })
    );
};

export const deleteLocalFiles = async (iconsToDelete: LocalIconDescription[]) => {
    await Promise.all(
        iconsToDelete.map((icon) => {
            const filePath = path.join(STATIC_ICONS_PATH, `${icon.name}.svg`);
            return fs.rm(filePath);
        })
    );
};
