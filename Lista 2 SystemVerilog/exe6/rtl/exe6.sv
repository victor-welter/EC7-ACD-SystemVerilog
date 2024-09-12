/*
6) Crie um módulo que implementa um decodificador de teclas que tem como entrada
a, b, c, e d. A saída deve ser no formato do código ASCII (8 bits). Exemplo: quando a
entrada a é alta, a saída deve ser 41 em hexadecimal. Faça um testbench para testar
e simule no Modelsim.
*/

module exe6(
    input logic a,
    input logic b,
    input logic c,
    input logic d,
    output logic [7:0] ascii_out
);

    always_comb begin
        case ({a, b, c, d})
            4'b0001: ascii_out = 8'h41; // ASCII de 'A'
            4'b0010: ascii_out = 8'h42; // ASCII de 'B'
            4'b0100: ascii_out = 8'h43; // ASCII de 'C'
            4'b1000: ascii_out = 8'h44; // ASCII de 'D'
            default: ascii_out = 8'h00; // Nenhum valor
        endcase
    end
endmodule
