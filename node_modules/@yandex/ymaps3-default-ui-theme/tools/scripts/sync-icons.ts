import {createSpinner} from 'nanospinner';
import {generateIconsDocsList} from '../icons/generate-docs';
import {generateImports} from '../icons/generate-imports';
import {generateIconsTypes} from '../icons/generate-types';
import {getUniqNames} from '../icons/get-uniq-names';
import {updateIcons} from '../icons/update-icons';

async function main() {
    const spinner = createSpinner();
    try {
        spinner.start({text: 'Start sync icons'});

        const iconsDescription = await updateIcons(spinner);
        const iconNames = getUniqNames(iconsDescription);

        spinner.update({text: 'Generating a file with typescript icon types'});
        await generateIconsTypes(iconNames);

        spinner.update({text: 'Generating a file with import icons svg'});
        await generateImports(iconsDescription, iconNames);

        spinner.update({text: 'Generating a markdown file with a list of available icons'});
        await generateIconsDocsList(iconNames);

        spinner.success({text: 'Icons are successfully synchronized'});
    } catch (error) {
        spinner.error({text: error.message || error.toString()});
    }
}

main().catch(() => {
    process.exit(1);
});
