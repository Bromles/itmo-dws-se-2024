import {differenceBy, intersectionBy} from 'lodash';
import {IconDescription, fetchFigmaIcons} from './fetch-icons';
import {deleteLocalFiles, getLocalIcons, updateLocalFiles} from './local';
import {downloadAndTransform} from './get-image-files';
import {Spinner} from 'nanospinner';

export const updateIcons = async (spinner: Spinner): Promise<IconDescription[]> => {
    spinner.update({text: 'Getting information about icons from Figma'});
    const figmaIcons = await fetchFigmaIcons();

    spinner.update({text: 'Getting information about current local icons'});
    const localIcons = await getLocalIcons();

    spinner.update({text: 'Downloading and transforming icons from Figma'});
    const iconsWithData = await downloadAndTransform(figmaIcons);

    spinner.update({text: 'Updating local icons'});
    await updateLocalFiles(iconsWithData);

    const existingLocalIcons = intersectionBy(localIcons, iconsWithData, (d) => d.name);
    const iconsToDelete = differenceBy(localIcons, existingLocalIcons, (d) => d.name);

    spinner.update({text: 'Removing unnecessary old local icons'});
    await deleteLocalFiles(iconsToDelete);

    return iconsWithData
        .map(({componentId, name}) => ({componentId, name}))
        .sort((a, b) => a.name.localeCompare(b.name));
};
