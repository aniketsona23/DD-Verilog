`include "../OneTwoMUX/module.v"

// One to Eight DeMUX using 

module OneEightMux (
    input I,
    input [2:0] Sel,
    output [7:0] Y
);
    //  Raw Code (Making One to Eight Mux with only following 8 lines)
    // assign Y[0] = (!Sel[2]) * (!Sel[1]) * (!Sel[0]) * I;
    // assign Y[1] = (!Sel[2]) * (!Sel[1]) * (Sel[0]) * I;
    // assign Y[2] = (!Sel[2]) * (Sel[1]) * (!Sel[0]) * I;
    // assign Y[3] = (!Sel[2]) * (Sel[1]) * (Sel[0]) * I;
    // assign Y[4] = (Sel[2]) * (!Sel[1]) * (!Sel[0]) * I;
    // assign Y[5] = (Sel[2]) * (!Sel[1]) * (Sel[0]) * I;
    // assign Y[6] = (Sel[2]) * (Sel[1]) * (!Sel[0]) * I;
    // assign Y[7] = (Sel[2]) * (Sel[1]) * (Sel[0]) * I;

    // "One to Eight DeMUX" Using "1 to 2 DeMUX"
    wire [1:0] W11;
    wire [1:0] W21;
    wire [1:0] W22;

    OneTwoMux T11 (
        I,
        Sel[2],
        W11
    );

    OneTwoMux T21 (
        W11[0],
        Sel[1],
        W21
    );

    OneTwoMux T22 (
        W11[1],
        Sel[1],
        W22
    );

    OneTwoMux T31 (
        W21[0],
        Sel[0],
        Y[1:0]
    );
    OneTwoMux T32 (
        W21[1],
        Sel[0],
        Y[3:2]
    );
    OneTwoMux T33 (
        W22[0],
        Sel[0],
        Y[5:4]
    );
    OneTwoMux T34 (
        W22[1],
        Sel[0],
        Y[7:6]
    );


endmodule
