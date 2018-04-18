module shogi_rank_3(thick=0.6) {
    hull() {
        translate([-11, 10.58, 0]) circle(thick);
        translate([0, 16.5, 0]) circle(thick);
    }

    hull() {
        translate([0, 16.5, 0]) circle(thick);
        translate([11, 10.58, 0]) circle(thick);
    }
}

shogi_rank_3();