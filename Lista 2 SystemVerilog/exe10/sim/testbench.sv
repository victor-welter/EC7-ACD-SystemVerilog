module testbench;
    logic clk;
    logic rst_n;
    logic bit_i;
    logic seq_o;

    exe10 uut (
        .clk(clk),
        .rst_n(rst_n),
        .bit_i(bit_i),
        .seq_o(seq_o)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        rst_n = 0; bit_i = 0; #15; 
        rst_n = 1;

        bit_i = 1; #10;
        bit_i = 0; #10;
        bit_i = 0; #10;
        bit_i = 1; #10; 
        $display("Detectado sequência 1001 -> seq_o = %b", seq_o);

        bit_i = 0; #10;
        bit_i = 1; #10;
        bit_i = 1; #10;
        bit_i = 0; #10; 
        $display("Sem sequência 1001 -> seq_o = %b", seq_o);
    end
endmodule