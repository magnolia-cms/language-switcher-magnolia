# Language Switcher - Component template for Magnolia CMS

A simple control to allow users to switch the language on the website. Displays all languages configured for the current site.

## Features
The control can render as an unordered list or as a select box.
How it renders can be configured by developers via parameters in the definition, and by authors in the dialog.

![Demo page with component](/_dev/README-language-switcher.png)

![Component Dialog](/_dev/README-language-switcher-dialog.png)

## Usage
Make the component available to authors, and include the files in `webresources` on your pages using standard magnolia techniques.

(To make this component available on the mtk basic page, you could use the decoration included in `_dev/decorations`.)

### Template parameters
Set `switcherTypeDefault` to `list` or `select` to set the type of the control to be rendered when an author does not set a specific type.

## Demo
To see a demo page demonstrating this component, open the Pages app in Magnolia AdminCentral and import the files in `_dev/demos`. (Import it directly at the root of the tree to see a demo of the included css styling.)


## Information on Magnolia CMS
This directory is a 'light module'.

https://docs.magnolia-cms.com

Search the docs for `sharing light modules` for details on how to share and use light modules on npm and github.


## Contribute to the Magnolia component ecosystem
It's easy to create components for Magnolia and share them on github and npm. I invite you to do so and join the community. Let's stop wasting time by developing the same thing again and again, rather let's help each other out by sharing our work and create a rich library of components.

Just add `magnolia-light-module` as a keyword to the package.json to make them easy to find and use.


## License

MIT

## Contributors

Magnolia, https://magnolia-cms.com

Christopher Zimmermann, @topherzee
