const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const path = require('path');

const ESM_BUILD = process.env.ESM_BUILD === 'true';

module.exports = (args, env, dir = process.cwd()) => {
    const coreWebpackModule = require('@yandex/ymaps3-cli/webpack.config')(args, env, dir);

    if (!ESM_BUILD) {
        return coreWebpackModule;
    }

    return {
        ...coreWebpackModule,
        experiments: {outputModule: true},
        entry: {index: {import: './src/index.ts', library: {type: 'module'}}},
        output: {...coreWebpackModule.output, path: path.resolve(dir, 'dist/esm')},
        plugins: [new MiniCssExtractPlugin()],
        module: {
            rules: [
                {
                    test: /\.(ts|tsx)$/i,
                    loader: 'ts-loader',
                    options: {
                        compilerOptions: {declaration: true, declarationDir: 'dist/types'},
                        onlyCompileBundledFiles: true
                    },
                    exclude: ['/node_modules/']
                },
                {
                    test: /\.css$/i,
                    use: [MiniCssExtractPlugin.loader, 'css-loader', 'postcss-loader']
                },
                {
                    test: /\.(eot|ttf|woff|woff2|png|jpg|gif)$/i,
                    type: 'asset'
                },
                {
                    test: /\.(svg|frag|vert)$/i,
                    oneOf: [{resourceQuery: /inline/, type: 'asset/inline'}, {type: 'asset/source'}]
                }
            ]
        }
    };
};
