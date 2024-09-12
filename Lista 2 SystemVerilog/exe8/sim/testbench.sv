module testbench;
    logic [3:0] in;
    logic clk;
    logic rst_n;
    logic [7:0] equal_cnt;

    exe8 uut (
        .in(in),
        .clk(clk),
        .rst_n(rst_n),
        .equal_cnt(equal_cnt)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin
        rst_n = 0;
        in = 4'b0000;
        #15 rst_n = 1; 

        in = 4'b1100; #20;
        in = 4'b1010; #20;
        in = 4'b0011; #20;
        in = 4'b0101; #20;
    end
endmodule