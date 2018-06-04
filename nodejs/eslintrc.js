// eslint@4.19.1

module.exports = {
    parserOptions: {
        ecmaVersion: 2018,
        sourceType: 'module',
        ecmaFeatures: {
            globalReturn: false,
            jsx: false,
        },
    },
    parser: 'esprima',
    // parser: 'babel-eslint',
    env: {
        browser: true,
        node: true,
        commonjs: true,
        'shared-node-browser': true,
        worker: true,
        serviceworker: true,
    },
    globals: {},
    plugins: [],
    extends: [
        'eslint:recommended',
    ],
    root: true,
    rules: {
        'no-console': 0,
        'no-constant-condition': [1, {'checkLoops': false}],
        'no-debugger': 1,
        'no-unreachable': 1,
        'no-unused-vars': [1, {'args': 'none'}],
        'quotes': [1, 'single', {'avoidEscape': true, 'allowTemplateLiterals': true}],
        'semi': 1,
        'prefer-destructuring': 0,
    },
};
