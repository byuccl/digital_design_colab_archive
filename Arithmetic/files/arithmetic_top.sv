module arithmetic_top (
  input logic [15:0] sw,
  intput logic btnc,
  output logic [8:0] led
  );
  //half of sw should be a and half should be b
  //when btnc is high it should subtract a-b and not add
  //Led [7:0] should show the results. Led[8] should be high if overflow has occurred.
  endmodule
