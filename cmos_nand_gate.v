`timescale 1ns / 1ps

module cmos_nand_gate(
    input a,b,
    output y
    );
    wire temp;
    supply1 vdd;
    supply0 vss;
    
    pmos p1(y,vdd,a);
    pmos p2(y,vdd,b);
    
    nmos n1(y,temp,a);
    nmos n2(temp,vss,b);
endmodule
