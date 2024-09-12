module testbench;
    logic [2:0] in1, in2;
    logic a, b, c;
    logic [2:0] out1;

    exe5 uut (
        .in1(in1),
        .in2(in2),
        .a(a),
        .b(b),
        .c(c),
        .out1(out1)
    );

    initial begin
        $monitor("in1=%b, in2=%b, a=%b, b=%b, c=%b -> out1=%b", in1, in2, a, b, c, out1);

        in1 = 3'b101; in2 = 3'b010;
        a = 0; b = 0; c = 0; #10;
        a = 1; b = 0; c = 0; #10;
        a = 0; b = 1; c = 1; #10;
        a = 0; b = 1; c = 0; #10;
    end
endmodule