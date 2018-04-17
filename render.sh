#!/bin/bash
for file in src/*.scad; do
    openscad "$file" -o "stl/$(basename "$file" .scad).stl";
done
