# Universal Shogi [![](https://img.shields.io/badge/Made%20with-OpenSCAD-brightgreen.svg)](http://www.openscad.org/) 

This repo contains the result of a two-nighter experiment with the following goals:
- learning the basic syntax of OpenSCAD
- creating 3D printable shogi pieces with embedded symbols

## Original design

The project is based on [International Shogi by Marc Novella](http://www.marcnovella.com/personal/universal-shogi/?lang=en), which is licensed under [(CC) BY-NC 3.0](https://creativecommons.org/licenses/by-nc/3.0/deed.ca).  
Therefore, this project is available similarly under a non-commercial license: [![](https://i.creativecommons.org/l/by-nc/4.0/80x15.png)](http://creativecommons.org/licenses/by-nc/4.0/)

## Rendering

Make sure to clone the whole repo. The SCAD files include cross-references to reduce code duplication, so all source files are needed for a successful render.

Any of the following should work:
- Open the source file of a piece – for example `src/king.scad` – with OpenSCAD.
- Assuming `openscad` is available on the command line, use to render files.
    Example: `openscad src/king.scad -o stl/king.stl`
- Or, use the included `render.sh` script to batch render all pieces.

## Printing

The sunken symbols are optimized for multicolor printing on budget printers that support the `M600` Change Filament command in G-code. Tested on a BQ Hephestos.

If you set your slicer to use 0.25 mm layer height, the pieces will consist of 24 layers - an easily divisible number. See the following chart for suggested color changes per piece.

![shogi sandwich](https://user-images.githubusercontent.com/1783465/38902809-642a84c8-42a2-11e8-803c-634e4251fad8.png)

