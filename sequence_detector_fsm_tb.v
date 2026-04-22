 `timescale 1ns/1ps

module testbench;

reg x;
reg clk;
reg rst;
wire z;

// Instantiate DUT
seq_detector uut (
    .x(x),
    .clk(clk),
    .rst(rst),
    .z(z)
);

// Clock generation
always #5 clk = ~clk;

// Initial block
initial begin
    clk = 0;
    rst = 1;
    #15 rst = 0;
end

// Stimulus
initial begin
    #10 x = 0;
    #10 x = 1;
    #10 x = 1;
    #10 x = 0;
    #10 x = 1;
    #10 x = 1;
    #10 x = 0;
    #10 x = 1;
    #10 x = 1;

    #10 $finish;
end

endmodule