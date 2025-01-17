import {uniq} from 'lodash';
import {IconDescription, SIZE_REGEXP} from './fetch-icons';

export const getUniqNames = (icons: IconDescription[]) => {
    return uniq(icons.map(({name}) => name.replace(SIZE_REGEXP, ''))).sort();
};
