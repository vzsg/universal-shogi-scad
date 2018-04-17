use <base/piece.scad>;
use <koma/slim.scad>;
use <ranks/rank1.scad>;
use <ranks/rank2.scad>;
use <ranks/rank3.scad>;
use <moves/step.scad>;
use <moves/range.scad>;

shogi_piece() {
    shogi_koma_slim();
    union() {
        shogi_rank_1();
        shogi_rank_2();
        shogi_move_range(edges=[0, 2, 4, 6]);
    }
    union() {
        shogi_rank_1();
        shogi_rank_2();
        shogi_move_range(edges=[0, 2, 4, 6]);
    }
    union() {
        shogi_rank_3();
        shogi_move_step(edges=[1, 3, 5, 7], length=5.5);
    }
}
