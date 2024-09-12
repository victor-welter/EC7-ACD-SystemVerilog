module testbench;
    logic clk_i;
    logic rst_ni;
    logic in1;
    logic out1;
    logic out2;
    logic out3;

    exe1 exe (
        .clk_i(clk_i),
        .rst_ni(rst_ni),
        .in1(in1),
        .out1(out1),
        .out2(out2),
        .out3(out3)
    );

    initial begin
        clk_i = 0;
        forever #5 clk_i = ~clk_i; 
    end

    initial begin
        rst_ni = 0;
        in1 = 0;
        #10;

        rst_ni = 1;

        in1 = 0;
        #10;
        $display("in1=0: out1=%b, out2=%b, out3=%b", out1, out2, out3);

        in1 = 1;
        #10;
        $display("in1=1: out1=%b, out2=%b, out3=%b", out1, out2, out3);
    end

endmodule