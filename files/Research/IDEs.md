## IDE Settings

### Atom
* Disable Auto-remove Trailing WhiteSpace
  * `Settings > Packages > WhiteSpace > Remove Trailing WhiteSpace`
* Change Autocomplete setting: `autocomplete-plus> Keymap for comfirming a suggestion`
* Install Packages
`apm install atom-beautify atom-clock autocomplete-modules language-markdown color-picker emmet language-babel highlight-selected platformio-ide-terminal todo-show linter linter-ui-default linter-eslint linter-jshint linter-sass-lint intentions busy-signal `

### linter
```
apm install linter linter-ui-default linter-eslint linter-jshint linter-sass-lint intentions busy-signal
sudo npm install eslint@4.x babel-eslint@7 eslint-plugin-react@7 eslint-config-google --save-dev
sudo npm install
```

`.eslintrc.js`  file
```
module.exports = {
    "globals": {
        "React": true
    },
    "extends": [
        "eslint:recommended",
        "plugin:react/recommended",
        "google"
    ],
    "plugins": [
        "react"
    ],

    "parser": "babel-eslint",

    "parserOptions": {
        "ecmaVersion": 7,
        "sourceType": "module",
        "ecmaFeatures": {
            "jsx": true
        }
    },

    "rules": {
        "react/jsx-uses-react": "error",
        "react/jsx-uses-vars": "error",
        "require-jsdoc": 0,
        "react/jsx-uses-vars": 2,
        "max-len": 0,
        "no-unused-vars": 0,
        "no-undef": 0,
    }
};

```
