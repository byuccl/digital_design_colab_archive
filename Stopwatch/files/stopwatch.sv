module stopwatch(
  //Signals
  input wire logic clk, reset, run,
  output logic [3:0] digit0, digit1, digit2, digit3
);
  //Code
  input wire logic rollover1, rollover2, rollover3, rollover4;
  mod_counter #(8'd10000) MILLISECOND (.clk(clk), .reset(reset), .increment(run), .rollover(rollover1));
  mod_counter #(4'd10) HUNDREDTHS (.clk(clk), .reset(reset), .increment(rollover1), .rollover(rollover2), .count(digit0));
  mod_counter #(4'd10) TENTHSS (.clk(clk), .reset(reset), .increment(rollover2), .rollover(rollover3), .count(digit1));
  mod_counter #(4'd10) SECONDS (.clk(clk), .reset(reset), .increment(rollover3), .rollover(rollover4), .count(digit2));
  mod_counter #(4'd6) TENS_SECONDS (.clk(clk), .reset(reset), .increment(rollover4), .count(digit3));



endmodule
