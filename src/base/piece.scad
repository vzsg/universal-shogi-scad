include <consts.scad>;

module shogi_piece(thick=9.6) {
    unit=thick/12;

    difference() {
        translate([-12, -10, 0])
        linear_extrude(thick) children(0);
        translate([0, 0, -1*unit]) linear_extrude(6*unit) children(1);
        translate([0, 0, 7*unit]) linear_extrude(6*unit) children(2);
        translate([0, 0, 9*unit]) linear_extrude(6*unit) children(3);
    }
}

shogi_piece() {
    // 2D koma shape
    union() {
        square(24);
    }
    // 2D bottom symbol shape
    union() {
        circle(5);
    }
    // 2D top symbol shape
    union() {
        circle(5);
    }
    // 2D top raised symbol shape
    union() {
        circle(8);
    }
}