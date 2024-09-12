/*
3) Crie um módulo que tem uma entrada de 4 bits e uma constante interna de 6 bits
que devem ser 0. Implemente o comportamento abaixo no módulo, faça o testbench
e teste no Modelsim.
*/

module exe3 (
    input logic [3:0] in,   // Entrada de 4 bits
    output logic out        // Saída de 1 bit
);
    
    localparam logic [5:0] CONST = 6'b000000;

    assign out = (in == 4'b1010) ? 1'b1 : 1'b0;
endmodule