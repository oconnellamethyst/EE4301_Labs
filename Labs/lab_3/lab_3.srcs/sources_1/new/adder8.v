`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/22/2020 07:03:11 PM
// Design Name: 
// Module Name: adder8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder8(
    output cout,
    output [7:0] s,
    input [7:0] a,
    input [7:0] b,
    input cin
    );
    
    wire [7:1] carry;
    
    full_adder FA0(carry[1],s[0],a[0],b[0],cin,cin);
    full_adder FA1(carry[2],s[1],a[1],b[1],carry[1],cin); //added these cins for nin
    full_adder FA2(carry[3],s[2],a[2],b[2],carry[2],cin); //see https://www.electronicshub.org/binary-adder-and-subtractor/ for reasoning
    full_adder FA3(carry[4],s[3],a[3],b[3],carry[3],cin);
    full_adder FA4(carry[5],s[4],a[4],b[4],carry[4],cin);
    full_adder FA5(carry[6],s[5],a[5],b[5],carry[5],cin);
    full_adder FA6(carry[7],s[6],a[6],b[6],carry[6],cin);
    full_adder FA7(cout,s[7],a[7],b[7],carry[7],cin);
    
    //assign FA = !(FA^carry[1]); //This syntax doesn't actually work //This line makes it a subtractor if carry bit using twos complement method
    
endmodule
