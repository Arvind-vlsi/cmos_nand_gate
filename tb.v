`timescale 1ns / 1ps

module tb();
reg a=0;
reg b=0;
wire y;
supply1 vdd;
supply0 vss;

cmos_nand_gate dut(a,b,y);

always #5 a=~a;
always #10 b=~b;

initial begin 
#80 $stop;
end
endmodule
