module stopwatch_top (
  //Signals
  input wire logic clk, btnc, sw, 
  output logic [3:0] anode,
  output logic [7:0] segment
);
  logic [15:0] data;
  Stopwatch stop(.clk(clk), .reset(btnc), .run(sw), .digit0(data[3:0]), .digit1(data[7:4]), .digit2(data[11:8]), .digit3(data[15:12]));
  SevenSegmentControl display(.dataIn(data), .digitPoint(0), .digitDisplay(4'hf), .anode(anode), .segment(segment), .reset(reset), .clk(clk));
endmodule
