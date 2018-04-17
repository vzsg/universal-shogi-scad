use <base/piece.scad>;
use <koma/slim.scad>;
use <ranks/rank1.scad>;
use <ranks/rank2.scad>;
use <moves/step.scad>;
use <moves/range.scad>;

shogi_piece() {
    shogi_koma_slim();
    shogi_move_range();
    union() {
        shogi_rank_1();
        shogi_rank_2();
        shogi_move_step(edges=[0, 1, 2, 4, 6, 7]);
    }
    union() {}
}
