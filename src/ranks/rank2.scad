module shogi_rank_2(thick=0.6) {
    hull() {
        translate([-11.5, 12.81, 0]) circle(thick);
        translate([0, 19, 0]) circle(thick);
    }

    hull() {
        translate([0, 19, 0]) circle(thick);
        translate([11.5, 12.81, 0]) circle(thick);
    }
}

shogi_rank_2();