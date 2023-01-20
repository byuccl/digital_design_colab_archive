module mod_counter#(
  //Add the parameter
  parameter MOD_VALUE = 4'ha;
)(
  //Add the Inputs exactly as listed
  input wire logic clk, reset, increment,
  output logic rollover,
  output logic [3:0] count
);
  //Code

  always_ff@(posedge clk) begin
    increment <= 0;
    if(reset)
      count <= 0;
    else if(increment)
      if(count == MOD_VALUE - 1)
        begin
        count <= 0;
        end
      else if (count == MOD_VALUE - 2)
        increment <= 1;
      else
        count <= count + 1;
  end
endmodule
