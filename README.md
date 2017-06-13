![ColorClaim](http://www.vanschneider.com/wp-content/uploads/2016/02/cc_title_vector.svg)  

![version: v0.5.0-docs](https://img.shields.io/badge/release-v0.5.0--docs-blue.svg)

color-claim-sass is a color library and a set of functions, classes and mixins.
They are based on Tobias van Schneider's ColorClaim. See all the color swatches over at http://www.vanschneider.com/colors/

## Installation
### NPM
`npm install --save color-claim-sass` installs color-claim-sass. You can copy the scss or css files to your assets. 
Alternatively, use `@import "path/to/node_modules/color-claim-sass/scss/colorclaim";` in your SASS project.

### .zip file
You can always download the latest version through [this link](https://github.com/JeroenPtrs/color-claim-sass/archive/master.zip) or via the "Download ZIP" button on [GitHub](https://github.com/JeroenPtrs/color-claim-sass);

## Usage
### Function
```sass
colorclaim($color, $claim);
```
`$color` selects the corresponding ColorClaim swatch and accepts a number from 1 to 50. I'm working on adding 51-102 right now.
`$claim` accepts either "bg" or "text" as value. This respectfully returns the background and text ColorClaim colors that are stored in `$colorclaim`.

You should use this if you want to set something else than `background-color` or `color`, or if you want to set `background-color` to the text's `color` (or vice versa).
In case of setting `background-color` and/or `color` to their respective ColorClaim values, use the mixin instead.

### Mixin
```sass
@include colorclaim($color[, $claim]);
```
This mixin sets your element's background and/or text colors to the corresponding ColorClaim values.
`$color` selects the corresponding ColorClaim swatch.
Not passing a value for `$claim` automatically sets both, passing "bg" or "text" as value respectfully only sets `background-color` and `color`.

### Classes
You can use the following classes if you really need to use it as a class (f.e. in HTML, jQuery, ...). In any other cases - like the ones addressed above - just use the mixin or the function. 

With `#color` a number from 1-50, use `.colorclaim-#color` to set both the `background-color` and `color` attributes,
`.color-claim-bg-#color` to only set the `background-color` attribute and `.color-claim-text-#color` to only set the `color` attribute.