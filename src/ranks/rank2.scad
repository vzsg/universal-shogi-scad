module shogi_rank_2(thick=0.6) {
    hull() {
        translate([-12.7, 13.148182, 0]) circle(thick);
        translate([0, 20, 0]) circle(thick);
    }

    hull() {
        translate([0, 20, 0]) circle(thick);
        translate([12.7, 13.148182, 0]) circle(thick);
    }
}
