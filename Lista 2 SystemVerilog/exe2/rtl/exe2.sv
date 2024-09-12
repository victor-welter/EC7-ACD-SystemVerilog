/*
2) Crie um módulo que implementa o circuito abaixo. Crie um testbench que testa
todas as combinações de entradas e mostra as saídas.
*/

module exe2 (
    input logic in1, in2, in3,
    output logic out1
);
    assign out1 = (in1 | in2) & (~in3); 
endmodule