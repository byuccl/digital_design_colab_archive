module dataflow_sv(
    input logic[15:0] sw,
    input wire logic btnu, btnd, btnl, btnr,
    output logic[15:0] led
);

always_comb begin
    if(btnl) begin
//Function 1
        end
    else if(btnr) begin
//Function 2
        end
    else if(btnd) begin
//Function 3
    end
    else if(btnu) begin
//Function 4
    end
    else
        led = sw;
end

endmodule
