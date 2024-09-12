module testbench;
    logic a, b, c, d;
    logic [7:0] ascii_out;

    exe6 uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .ascii_out(ascii_out)
    );

    initial begin
        $monitor("a=%b, b=%b, c=%b, d=%b -> ascii_out=%h", a, b, c, d, ascii_out);

        a = 1; b = 0; c = 0; d = 0; #10;
        a = 0; b = 1; c = 0; d = 0; #10;
        a = 0; b = 0; c = 1; d = 0; #10;
        a = 0; b = 0; c = 0; d = 1; #10;
    end
endmodule