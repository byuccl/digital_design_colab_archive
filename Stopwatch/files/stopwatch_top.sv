module stopwatch_top (
  //Signals
  input wire logic clk, btnc, sw, 
  output logic [3:0] anode,
  output logic [7:0] segment
);
  logic temp;
  assign temp = 8'b11111111;
  logic [15:0] data;
  stopwatch stop(.clk(clk), .reset(btnc), .run(sw), .digit0(data[7:4]), .digit1(data[11:8]), .digit2(data[3:0]), .digit3(data[15:12]));
  SevenSegmentControl display(.dataIn(data), .digitPoint(4'b0010), .digitDisplay(temp), .anode(anode), .segment(segment), .reset(reset), .clk(clk));
endmodule
