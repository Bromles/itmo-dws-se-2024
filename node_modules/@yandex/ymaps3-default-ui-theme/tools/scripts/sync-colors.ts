import {createSpinner} from 'nanospinner';
import {fetchFigmaColors} from '../icons/fetch-colors';
import {generateColorsFile} from '../icons/generate-colors';

async function main() {
    const spinner = createSpinner();
    try {
        spinner.start({text: 'Start sync colors'});

        spinner.update({text: 'Getting information about colors from Figma'});
        const fetchedColors = await fetchFigmaColors();

        spinner.update({text: 'Updating the file with colors'});
        await generateColorsFile(fetchedColors);

        spinner.success({text: 'Colors are successfully synchronized'});
    } catch (error) {
        spinner.error({text: error.message || error.toString()});
    }
}

main().catch(() => {
    process.exit(1);
});
