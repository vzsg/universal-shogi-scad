module shogi_rank_1(thick=0.6) {
    hull() {
        translate([-12, 15, 0]) circle(thick);
        translate([0, 21.5, 0]) circle(thick);
    }

    hull() {
        translate([0, 21.5, 0]) circle(thick);
        translate([12, 15, 0]) circle(thick);
    }
}

shogi_rank_1();