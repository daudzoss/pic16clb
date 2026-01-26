set_property PACKAGE_PIN IN0 [get_ports CLBIN0PPS_sync]
set_property PACKAGE_PIN CLK [get_ports CLK]
set_property PACKAGE_PIN PPS_OUT0 [get_ports PPS_OUT0]
(* pincfg.IN0.syncmode.sync *)
(* pincfg.IN0.mux = 6'd0 *)
(* syscfg.clkdiv.DIV1 *)


module main
    (CLBIN0PPS_sync, CLK, PPS_OUT0);
    input CLBIN0PPS_sync, CLK;
    output PPS_OUT0;
    logic net2;

    oneshot U1 (
        .d(CLBIN0PPS_sync),
        .q(net2),
        .CLK(CLK)
    );
    assign PPS_OUT0 = net2;
endmodule
