`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
//  FILL IN THE FOLLOWING INFORMATION:
//  STUDENT A NAME: 
//  STUDENT B NAME:
//  STUDENT C NAME: 
//  STUDENT D NAME:  
//
//////////////////////////////////////////////////////////////////////////////////


module Top_Student (
    input CLOCK,
    output[7:0] JX
);
 
wire clk6p25m;
reg [15:0] oled_data = 16'h07E0;
wire frame_begin;
wire sending_pixels;
wire [12:0] pixel_index;
wire sample_pixel;

 clock_generator #(6250000) dp0(CLOCK, clk6p25m);  // 6.25MHZ     
 Oled_Display dp1(clk6p25m, 0, frame_begin, sending_pixels,
   sample_pixel, pixel_index, oled_data, JX[0], JX[1], JX[3], JX[4], JX[5], JX[6],
   JX[7]);       


endmodule
