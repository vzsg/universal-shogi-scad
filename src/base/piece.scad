include <consts.scad>;

module shogi_piece(thick=9.6) {
    unit=thick/12;

    difference() {
        translate([-15, -16, 0])
        linear_extrude(thick) children(0);
        translate([0, 0, -1*unit]) linear_extrude(6*unit) children(1);
        translate([0, 0, 7*unit]) linear_extrude(6*unit) children(2);
        translate([0, 0, 9*unit]) linear_extrude(6*unit) children(3);
    }
}
