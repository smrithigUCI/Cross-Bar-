module crossBar (input [3:0]in ,
                 input [3:0]weight,
                 output [7:0]result,
                 output [7:0]result0,
                 output [7:0]result1);
                 
    clk clk_instance(.c(clock)); // 1.5Ghz Clock
    reg[1:0] shift3 = 2'b00;
    reg[1:0] shift2 = 2'b00;
    reg[1:0] shift1 = 2'b00;
    reg[1:0] shift0 = 2'b00;
    reg[7:0] resultReg3 = 8'b00000000;
    reg[7:0] resultReg2 = 8'b00000000;
    reg[7:0] resultReg1 = 8'b00000000;
    reg[7:0] resultReg0 = 8'b00000000;
    wire [7:0]r0 ;
    wire [7:0]r1 ;
    
    always@(posedge clock)

    begin
       shift3 <= in[3]==1'b1 ? 2'b11 : 2'b00;
       shift2 <= in[2]==1'b1 ? 2'b10 : 2'b00;
       shift1 <= in[1]==1'b1 ? 2'b01 : 2'b00; 
       resultReg0 <= in[0]==1'b1 ? weight : 8'b00000000; 
       resultReg3 = weight<<shift3 ;
       resultReg2 = weight<<shift2 ;
       resultReg1 = weight<<shift1 ;
       
       
    end  
    
       add3 a1(result1, resultReg3, resultReg2);
       add3 a2(result0, resultReg1, resultReg0);
       assign r0 = result0;
       assign r1 = result1;
       add3 a3(result, r0, r1);
                 
    
endmodule
