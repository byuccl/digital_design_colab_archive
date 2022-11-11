module function4(
   input logic btnu, student, prof, pm,
   input logic[3:0] hour,
   input logic[8:0] sw,
   output logic[15:0] led
);

always_comb begin
   if(btnu) begin
      if(prof)
         led = 16'hFFFF;
      else 
         led = 16'h0000;
   end
   else begin
       led[15:7] = sw;
       led[6:3] = hour;
       led[2:0] = {pm, prof, student};
   end
end

endmodule
