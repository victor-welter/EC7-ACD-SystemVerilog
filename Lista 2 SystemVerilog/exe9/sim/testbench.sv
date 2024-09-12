module testbench;
    logic clk;
    logic rst_n;
    logic coin;
    logic pass;
    logic unlocked;

    exe9 uut (
        .clk(clk),
        .rst_n(rst_n),
        .coin(coin),
        .pass(pass),
        .unlocked(unlocked)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin
        rst_n = 0;
        coin = 0;
        pass = 0;
        #15 rst_n = 1;

        coin = 1; #20; coin = 0; 
        pass = 1; #20; pass = 0; 
    end
endmodule