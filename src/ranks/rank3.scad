module shogi_rank_3(thick=0.6) {
    hull() {
        translate([-12.4, 10.796364, 0]) circle(thick);
        translate([0, 17.5, 0]) circle(thick);
    }

    hull() {
        translate([0, 17.5, 0]) circle(thick);
        translate([12.4, 10.796364, 0]) circle(thick);
    }
}

shogi_rank_3();