module testbench;
    logic in1;
    logic out1;

    exe4 dut (
        .in1(in1),
        .out1(out1)
    );

    initial begin
        in1 = 0;
        #1 $display("in1=%b -> out1=%b", in1, out1);

        in1 = 1;
        #1 $display("in1=%b -> out1=%b", in1, out1);
    end
endmodule