module shogi_rank_1(thick=0.6) {
    hull() {
        translate([-13, 15.5, 0]) circle(thick);
        translate([0, 22.5, 0]) circle(thick);
    }

    hull() {
        translate([0, 22.5, 0]) circle(thick);
        translate([13, 15.5, 0]) circle(thick);
    }
}
