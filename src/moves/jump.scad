// By: chickenchuck040, https://www.thingiverse.com/thing:1092611
module arc(radius, thick, angle) {
    intersection() {
        union() {
            rights = floor(angle/90);
            remain = angle-rights*90;
            if(angle > 90) {
                for(i = [0:rights-1]) {
                    rotate(i*90-(rights-1)*90/2) {
                         polygon([[0, 0], [radius+thick, (radius+thick)*tan(90/2)], [radius+thick, -(radius+thick)*tan(90/2)]]);
                    }
                }
                rotate(-(rights)*90/2)
                    polygon([[0, 0], [radius+thick, 0], [radius+thick, -(radius+thick)*tan(remain/2)]]);
                rotate((rights)*90/2)
                    polygon([[0, 0], [radius+thick, (radius+thick)*tan(remain/2)], [radius+thick, 0]]);
            } else {
                polygon([[0, 0], [radius+thick, (radius+thick)*tan(angle/2)], [radius+thick, -(radius+thick)*tan(angle/2)]]);
            }
        }

        difference() {
            circle(radius+thick);
            circle(radius);
        }
    }
}

module shogi_move_jump(radius=6, thick=0.6) {
    translate([-radius-thick, 0, 0]) rotate(a=30)
        arc(radius=radius, thick=thick*2, angle=60);

    translate([radius+thick, 0, 0]) rotate(a=150)
        arc(radius=radius, thick=thick*2, angle=60);

    circle(thick);
    translate([(-radius-thick) * cos(60), (radius+thick) * sin(60)]) circle(thick);
    translate([(+radius+thick) * cos(60), (radius+thick) * sin(60)]) circle(thick);
}

shogi_move_jump();