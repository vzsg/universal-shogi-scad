use <base/piece.scad>;
use <koma/slim.scad>;
use <ranks/rank1.scad>;
use <ranks/rank2.scad>;
use <ranks/rank3.scad>;
use <moves/step.scad>;

shogi_piece() {
    shogi_koma_slim();
    union() {}
    union() {
        shogi_rank_1();
        shogi_rank_2();
        shogi_rank_3();
        shogi_move_step(edges=[0, 1, 2, 3, 4, 5, 6, 7]);
    }
    union() {}
}
