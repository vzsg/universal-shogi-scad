module shogi_move_range(edges=[0], thick=0.6) {
    for (a=edges) {
        rotate(a=a*45) {
            hull() {
                translate([-2.5, 5.5, 0]) circle(thick);
                translate([0, 8, 0]) circle(thick);
            }

            hull() {
                translate([0, 8, 0]) circle(thick);
                translate([2.5, 5.5, 0]) circle(thick);
            }
        }
    }
}
