module pic16f131_counter(CLK, STOP, RESET, COUNT_IS_0, COUNT_IS_1, COUNT_IS_2, COUNT_IS_3, COUNT_IS_4, COUNT_IS_5, COUNT_IS_6, COUNT_IS_7);
    input CLK, STOP, RESET;
    output COUNT_IS_0, COUNT_IS_1, COUNT_IS_2, COUNT_IS_3, COUNT_IS_4, COUNT_IS_5, COUNT_IS_6, COUNT_IS_7;



    CLB_COUNTER C(.CLK(CLK),
        .STOP(STOP),
        .RESET(RESET),
        .COUNT_IS_0(COUNT_IS_0),
        .COUNT_IS_1(COUNT_IS_1),
        .COUNT_IS_2(COUNT_IS_2),
        .COUNT_IS_3(COUNT_IS_3),
        .COUNT_IS_4(COUNT_IS_4),
        .COUNT_IS_5(COUNT_IS_5),
        .COUNT_IS_6(COUNT_IS_6),
        .COUNT_IS_7(COUNT_IS_7));

endmodule