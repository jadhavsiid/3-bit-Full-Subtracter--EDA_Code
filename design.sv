// Code your design here
module full_subtractor(
  input A,
  input B,
  input Bin,
  output S,
  output Bout
);

  assign S = A ^ B ^ Bin;
  assign Bout = (~A & B & Bin) | (A & ~B & Bin);

endmodule
