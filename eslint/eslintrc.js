'use strict';

// eslint@2.2.0

module.exports = {
    parserOptions: {
        ecmaVersion: 6,
        sourceType: 'module',
        ecmaFeatures: {
            globalReturn: false,
            impliedStrict: true,
            jsx: true,
            experimentalObjectRestSpread: true
        }
    },
    //parser: 'babel-eslint',
    env: {
        browser: true,
        node: true,
        commonjs: true,
        'shared-node-browser': true,
        es6: true,
        worker: true,
        serviceworker: true
    },
    globals: {},
    plugins: [
        //'react'
    ],
    root: true,
    //extends: ["plugin:react/recommended"]
    rules: {
        // Possible Errors
        'comma-dangle': [0, 'never'],
        'no-cond-assign': [2, 'except-parens'],
        'no-console': 0,
        'no-constant-condition': 2,
        'no-control-regex': 2,
        'no-debugger': 2,
        'no-dupe-args': 2,
        'no-dupe-keys': 2,
        'no-duplicate-case': 2,
        'no-empty': 0,
        'no-empty-character-class': 2,
        'no-ex-assign': 2,
        'no-extra-boolean-cast': 2,
        'no-extra-parens': 0,
        'no-extra-semi': 2,
        'no-func-assign': 2,
        'no-inner-declarations': 2,
        'no-invalid-regexp': 2,
        'no-irregular-whitespace': 2,
        'no-negated-in-lhs': 2,
        'no-obj-calls': 2,
        'no-regex-spaces': 2,
        'no-sparse-arrays': 2,
        'no-unexpected-multiline': 2,
        'no-unreachable': 2,
        'use-isnan': 2,
        'valid-jsdoc': 0,
        'valid-typeof': 2,

        // Best Practices
        'accessor-pairs': [2, {
            getWithoutSet: false,
            setWithoutGet: true
        }],
        'block-scoped-var': 2,
        'complexity': 0,
        'consistent-return': 0,
        'curly': [1, 'multi-line'],
        'default-case': 0,
        'dot-location': [1, 'property'],
        'dot-notation': 0,
        'eqeqeq': [1, 'smart'],
        'guard-for-in': 1,
        'no-alert': 1,
        'no-caller': 2,
        'no-case-declarations': 0,
        'no-div-regex': 0,
        'no-else-return': 0,
        'no-empty-pattern': 2,
        'no-eq-null': 2,
        'no-eval': 2,
        'no-extend-native': 2,
        'no-extra-bind': 2,
        'no-fallthrough': 2,
        'no-floating-decimal': 2,
        'no-implicit-coercion': 0,
        'no-implied-eval': 2,
        'no-invalid-this': 0,
        'no-iterator': 2,
        'no-labels': 2,
        'no-lone-blocks': 2,
        'no-loop-func': 0,
        'no-magic-numbers': 0,
        'no-multi-spaces': 2,
        'no-multi-str': 1,
        'no-native-reassign': 2,
        'no-new': 0,
        'no-new-func': 2,
        'no-new-wrappers': 2,
        'no-octal': 2,
        'no-octal-escape': 2,
        'no-param-reassign': 0,
        'no-process-env': 0,
        'no-proto': 1,
        'no-redeclare': 2,
        'no-return-assign': 2,
        'no-script-url': 2,
        'no-self-compare': 2,
        'no-sequences': 2,
        'no-throw-literal': 2,
        'no-unused-expressions': 2,
        'no-useless-call': 1,
        'no-useless-concat': 2,
        'no-void': 1,
        'no-warning-comments': [1, {
            'terms': ['TODO', 'FIXME', 'XXX'],
            'location': 'start'
        }],
        'no-with': 2,
        'radix': 2,
        'vars-on-top': 0,
        'wrap-iife': [1, 'inside'],
        'yoda': 0,

        // Strict Mode
        'strict': 0,

        // Variables
        'init-declarations': 0,
        'no-catch-shadow': 2,
        'no-delete-var': 2,
        'no-label-var': 2,
        'no-shadow': 0,
        'no-shadow-restricted-names': 2,
        'no-undef': 2,
        'no-undef-init': 2,
        'no-undefined': 0,
        'no-unused-vars': [1, {
            'args': 'none'
        }],
        'no-use-before-define': 2,

        // Node.js and CommonJS
        'callback-return': 0,
        'global-require': 0,
        'handle-callback-err': 0,
        'no-mixed-requires': 2,
        'no-new-require': 2,
        'no-path-concat': 2,
        'no-process-exit': 1,
        'no-restricted-imports': 0,
        'no-restricted-modules': 0,
        'no-sync': 0,

        // Stylistic Issues
        'array-bracket-spacing': [1, 'never'],
        'block-spacing': [2, 'always'],
        'brace-style': [1, '1tbs', {
            'allowSingleLine': true
        }],
        'camelcase': [1, {
            'properties': 'never'
        }],
        'comma-spacing': [1, {
            'before': false,
            'after': true
        }],
        'comma-style': [1, 'last'],
        'computed-property-spacing': [1, 'never'],
        'consistent-this': 0,
        'eol-last': 1,
        'func-names': 0,
        'func-style': 0,
        'id-length': 0,
        'id-match': 0,
        'indent': [0, 4, {
            'SwitchCase': 1
        }],
        'jsx-quotes': [1, 'prefer-double'],
        'key-spacing': 1,
        'linebreak-style': [1, 'unix'],
        'lines-around-comment': 0,
        'max-depth': 0,
        'max-len': 0,
        'max-nested-callbacks': 0,
        'max-params': 0,
        'max-statements': 0,
        'new-cap': 0,
        'new-parens': 1,
        'newline-after-var': 0,
        'no-array-constructor': 1,
        'no-bitwise': 0,
        'no-continue': 0,
        'no-inline-comments': 0,
        'no-lonely-if': 0,
        'no-mixed-spaces-and-tabs': 2,
        'no-multiple-empty-lines': 0,
        'no-negated-condition': 0,
        'no-nested-ternary': 0,
        'keyword-spacing': [2, {
            'before': true,
            'after': true
        }],
        'no-new-object': 2,
        'no-plusplus': 0,
        'no-restricted-syntax': [1, 'WithStatement'],
        'no-spaced-func': 1,
        'no-ternary': 0,
        'no-trailing-spaces': 1,
        'no-underscore-dangle': 0,
        'no-unneeded-ternary': 1,
        'object-curly-spacing': 0,
        'one-var': 0,
        'operator-assignment': 0,
        'operator-linebreak': [1, 'after'],
        'padded-blocks': 0,
        'quote-props': [0, 'as-needed'],
        'quotes': [1, 'single', 'avoid-escape'],
        'require-jsdoc': 0,
        'semi': [0, 'always'],
        'semi-spacing': [2, {
            'before': false,
            'after': true
        }],
        'sort-vars': 0,
        'space-before-blocks': [1, 'always'],
        'space-before-function-paren': [1, 'never'],
        'space-in-parens': [1, 'never'],
        'space-infix-ops': 1,
        'space-unary-ops': [1, {
            'words': true,
            'nonwords': false
        }],
        'spaced-comment': 0,
        'wrap-regex': 1,

        // ECMAScript 6
        'arrow-body-style': [2, 'always'],
        'arrow-parens': 2,
        'arrow-spacing': [2, {
            'before': true,
            'after': true
        }],
        'constructor-super': 1,
        'generator-star-spacing': [2, 'after'],
        'no-class-assign': 2,
        'no-confusing-arrow': 2,
        'no-const-assign': 2,
        'no-dupe-class-members': 2,
        'no-new-symbol': 2,
        'no-this-before-super': 1,
        'no-useless-constructor': 2,
        'no-var': 0,
        'object-shorthand': [2, 'never'],
        'prefer-arrow-callback': 0,
        'prefer-const': 0,
        'prefer-reflect': 0,
        'prefer-rest-params': 0,
        'prefer-spread': 0,
        'prefer-template': 0,
        'require-yield': 2,
        'template-curly-spacing': 0,
        'yield-star-spacing': [2, 'after']
    }
};
