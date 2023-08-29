`timescale 1ps/1ps
module clk(output reg c);
    
    initial 
    begin
        c = 1'b0;
        forever 
        begin
            #333;
            c = ~c;
        end
    end
endmodule

