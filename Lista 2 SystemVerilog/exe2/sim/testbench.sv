module testbench;
    logic in1, in2, in3;
    logic out1;

    exe2 exe (
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .out1(out1)
    );

    initial begin
        in1 = 0; in2 = 0; in3 = 0; #1;
        $display("in1 = %b, in2 = %b, in3 = %b -> out1 = %b", in1, in2, in3, out1);
        
        in1 = 0; in2 = 0; in3 = 1; #1;
        $display("in1 = %b, in2 = %b, in3 = %b -> out1 = %b", in1, in2, in3, out1);

        in1 = 0; in2 = 1; in3 = 0; #1;
        $display("in1 = %b, in2 = %b, in3 = %b -> out1 = %b", in1, in2, in3, out1);

        in1 = 0; in2 = 1; in3 = 1; #1;
        $display("in1 = %b, in2 = %b, in3 = %b -> out1 = %b", in1, in2, in3, out1);

        in1 = 1; in2 = 0; in3 = 0; #1;
        $display("in1 = %b, in2 = %b, in3 = %b -> out1 = %b", in1, in2, in3, out1);

        in1 = 1; in2 = 0; in3 = 1; #1;
        $display("in1 = %b, in2 = %b, in3 = %b -> out1 = %b", in1, in2, in3, out1);

        in1 = 1; in2 = 1; in3 = 0; #1;
        $display("in1 = %b, in2 = %b, in3 = %b -> out1 = %b", in1, in2, in3, out1);

        in1 = 1; in2 = 1; in3 = 1; #1;
        $display("in1 = %b, in2 = %b, in3 = %b -> out1 = %b", in1, in2, in3, out1);
    end
endmodule