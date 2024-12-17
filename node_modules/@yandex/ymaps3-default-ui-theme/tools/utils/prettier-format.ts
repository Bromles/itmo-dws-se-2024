import prettier from 'prettier';

export const prettierFormat = async (rawContent: string, parser: prettier.Options['parser']): Promise<string> => {
    const prettierConfig = await prettier.resolveConfig(process.cwd());
    return prettier.format(rawContent, {...prettierConfig, parser});
};
