/*
5) Crie um módulo com entradas in1 e in2 (de 3 bits) e a, b, c de 1 bit, contendo
também uma saída out1 de 3 bits. Internamente, implemente a funcionalidade
abaixo que gera o sinal interno sel. Quando sel é 1, out1 recebe in1. Quando sel é 0,
out1 recebe in2. Crie o testbench e simule no Modelsim.
*/

module exe5(
    input logic [2:0] in1, 
    input logic [2:0] in2, 
    input logic a,         
    input logic b,
    input logic c,
    output logic [2:0] out1 
);

    logic sel;

    assign sel = a | b & c;

    always_comb begin
        if (sel)
            out1 = in1;
        else
            out1 = in2;
    end
endmodule