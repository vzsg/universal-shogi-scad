#!/bin/bash
for file in src/*.scad; do
    echo "Rendering $(basename "$file" .scad)...";
    openscad "$file" -o "stl/$(basename "$file" .scad).stl";
done
