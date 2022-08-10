`timescale 1ns / 1ps

module updowncounter_testbench();
reg clk, reset,up_down;
wire [7:0] counter;

up_down_counter dut(clk, reset,up_down, counter);
initial begin 

$dumpfile("waveform.vcd");
$dumpvars(0,updowncounter_testbench);

clk=0;
forever #5 clk=~clk;
end
initial begin
reset=1;
up_down=0;
#20;
reset=0;
#200;
up_down=1;
end
endmodule