module testbench;
    logic clk;
    logic rst_n;
    logic [7:0] count;

    exe7 uut (
        .clk(clk),
        .rst_n(rst_n),
        .count(count)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk; 
    end

    initial begin
        rst_n = 0;
        #15 rst_n = 1; 

        #200;
    end
endmodule