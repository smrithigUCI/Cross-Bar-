module crossBar (input [3:0]in ,
                 input [3:0]weight,
                 output [7:0]result);
                 
    clk clk_instance(.c(clock)); // 1.5Ghz Clock
    integer shift3 = 0;
    integer shift2 = 0;
    integer shift1 = 0;
    integer rem = 0;
    always@(posedge clock)
    begin
       shift3 = in/8 > 0 ? 3:0;
       shift2 = (shift3 == 3)? ((in%8)/4 > 0 ? 2:0):0;
       //shift1 =  
        
    end
        
        
    
    

        

        
    
        
    
                 
    //assign result = mulAns_reg;
endmodule
