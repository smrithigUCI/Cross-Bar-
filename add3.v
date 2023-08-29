module add3(output [7:0]Sum, 
            input[7:0] op1, 
            input[7:0] op2);
    wire[7:0] sumReg ;
    wire[7:0] sum1;
    wire[7:0] sum2;
    wire[7:0] carry1;
    wire[7:0] carry2;
    wire[7:0] sum3;
    wire[7:0] carry3;
    wire[7:0] sumEnd1;
    
    
    assign sum1 = op1 ^ op2;
    assign carry1 = (op1 & op2)<< 1'b1;
    assign sum2 = sum1 ^ carry1 ;
    assign carry2 = (carry1 & sum1) << 1'b1;
    assign sum3 = sum2 ^ carry2 ;
    assign carry3 = (carry2 & sum2) << 1'b1;
    assign sumReg  =  carry3 ^ sum3;
    assign Sum = sumReg;
    
endmodule
