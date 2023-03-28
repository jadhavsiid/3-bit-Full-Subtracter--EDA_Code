// Code your testbench here
// or browse Examples
module tb_full_subtractor;

  reg A;
  reg B;
  reg Bin;
  wire S;
  wire Bout;

  full_subtractor fs(A, B, Bin, S, Bout);

  initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0, tb_full_subtractor);

    A = 0; B = 0; Bin = 0;
    #10 A = 0; B = 0; Bin = 1;
    #10 A = 0; B = 1; Bin = 0;
    #10 A = 0; B = 1; Bin = 1;
    #10 A = 1; B = 0; Bin = 0;
    #10 A = 1; B = 0; Bin = 1;
    #10 A = 1; B = 1; Bin = 0;
    #10 A = 1; B = 1; Bin = 1;
    #10 $finish;
  end

endmodule
