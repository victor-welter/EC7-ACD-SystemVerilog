module testbench;
    logic [3:0] in;
    logic out;

    exe3 exe (
        .in(in),
        .out(out)
    );

    initial begin
        in = 4'b0000; #1;
        $display("in = %b -> out = %b", in, out);

        in = 4'b1010; #1;
        $display("in = %b -> out = %b", in, out);

        in = 4'b1111; #1;
        $display("in = %b -> out = %b", in, out);

        in = 4'b0101; #1;
        $display("in = %b -> out = %b", in, out);
    end
endmodule