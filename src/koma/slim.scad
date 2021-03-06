module shogi_koma_slim(width=24, length=32, rounding=2) {
    points=[
        [width/6 , 0],
        [0, length*0.8],
        [width/2, length],
        [width, length*0.8],
        [5*width/6, 0]
    ];

    minkowski() {
        polygon(points);
        circle(rounding);
    }
}

shogi_koma_slim();