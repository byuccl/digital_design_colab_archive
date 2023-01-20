module mod_counter#(
  //Add the parameter
  parameter [31:0] MOD_VALUE = 4'ha
)(
  //Add the Inputs exactly as listed
  input wire logic clk, reset, increment,
  output logic rollover,
  output logic [31:0] count
);
  //Code

  always_ff@(posedge clk) begin
    rollover <= 0;
    if(reset)
      count <= 0;
    else if(increment)
      if(count == MOD_VALUE - 1)
        begin
        count <= 0;
        end
      else if (count == MOD_VALUE - 2)
        begin
        rollover <= 1;
        count <= count +1;
        end
      else
        count <= count + 1;
  end
endmodule
