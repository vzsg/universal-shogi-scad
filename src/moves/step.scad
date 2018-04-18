module shogi_move_step(edges=[0], length=6, thick=0.6) {
    for (a=edges) {
        rotate(a=a*45) hull() {
            circle(thick);
            translate([0, length, 0]) circle(thick);
        }
    }
}

shogi_move_step(edges=[0, 1, 2, 3, 4, 5, 6, 7]);