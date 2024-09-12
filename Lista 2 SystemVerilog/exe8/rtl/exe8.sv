/*
8) Crie um módulo que possui uma entrada de 4 bits além do clock e reset (reset em
ativo-baixo), além de uma saída equal_cnt de 8 bits. O circuito deve conferir se a
parte alta (2 bits mais significativos) da entrada é igual a sua parte baixa (2 bits
menos significativos). Toda vez que isso ocorrer, equal_cnt deve ser incrementado
em 1. Lembrar de zerar equal_cnt no reset. Implemente o testbench e simule no
Modelsim.
*/

module exe8(
    input logic [3:0] in,
    input logic clk,
    input logic rst_n,
    output logic [7:0] equal_cnt
);

    logic [1:0] upper, lower;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            equal_cnt <= 8'b0;
        else begin
            upper = in[3:2];
            lower = in[1:0];

            if (upper == lower)
                equal_cnt <= equal_cnt + 1;
        end
    end
endmodule
