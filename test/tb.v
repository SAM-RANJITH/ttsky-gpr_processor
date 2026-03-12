`default_nettype none
`timescale 1ns / 1ps

module tb ();

  // Dump signals for waveform viewing
  initial begin
    $dumpfile("tb.fst");
    $dumpvars(0, tb);
    #1;
  end

  // Inputs
  reg clk;
  reg rst_n;
  reg ena;
  reg [7:0] ui_in;
  reg [7:0] uio_in;

  // Outputs
  wire [7:0] uo_out;
  wire [7:0] uio_out;
  wire [7:0] uio_oe;

`ifdef GL_TEST
  wire VPWR = 1'b1;
  wire VGND = 1'b0;
`endif

  // DUT instantiation
  tt_um_gpr_processor user_project (

`ifdef GL_TEST
      .VPWR(VPWR),
      .VGND(VGND),
`endif

      .ui_in  (ui_in),     // Dedicated inputs
      .uo_out (uo_out),    // Dedicated outputs
      .uio_in (uio_in),    // IO inputs
      .uio_out(uio_out),   // IO outputs
      .uio_oe (uio_oe),    // IO direction
      .ena    (ena),       // enable
      .clk    (clk),       // clock
      .rst_n  (rst_n)      // reset
  );

endmodule
