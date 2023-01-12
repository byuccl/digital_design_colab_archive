module seven_segment(
  input logic [3:0] data,
  output logic [6:0] segment
);
 //A
  assign segment[0] = (data==4'h01)?1'b1:
                      (data==4'h02)?1'b1:
                      (data==4'h03)?1'b1:
                      (data==4'h07)?1'b1:
                      (data==4'h13)?1'b1:
                        1'b0;
   //B
  assign segment[1] = (data==4'h01)?1'b1:
                      (data==4'h02)?1'b1:
                      (data==4'h03)?1'b1:
                      (data==4'h07)?1'b1:
                      (data==4'h13)?1'b1:
                        1'b0;
   //CC
  assign segment[2] = (data==4'h01)?1'b1:
                      (data==4'h02)?1'b1:
                      (data==4'h03)?1'b1:
                      (data==4'h07)?1'b1:
                      (data==4'h13)?1'b1:
                        1'b0;
   //D
  assign segment[3] = (data==4'h01)?1'b1:
                      (data==4'h02)?1'b1:
                      (data==4'h03)?1'b1:
                      (data==4'h07)?1'b1:
                      (data==4'h13)?1'b1:
                        1'b0;
   //E
  assign segment[4] = (data==4'h01)?1'b1:
                      (data==4'h02)?1'b1:
                      (data==4'h03)?1'b1:
                      (data==4'h07)?1'b1:
                      (data==4'h13)?1'b1:
                        1'b0;
   //F
  assign segment[5] = (data==4'h01)?1'b1:
                      (data==4'h02)?1'b1:
                      (data==4'h03)?1'b1:
                      (data==4'h07)?1'b1:
                      (data==4'h13)?1'b1:
                        1'b0;
   //G
  assign segment[6] = (data==4'h01)?1'b1:
                      (data==4'h02)?1'b1:
                      (data==4'h03)?1'b1:
                      (data==4'h07)?1'b1:
                      (data==4'h13)?1'b1:
                        1'b0;
  
endmodule
