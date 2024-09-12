/*
4) Crie um módulo com entradas a e b e uma saída c que implementa o circuito abaixo:
Crie um segundo módulo que instancia o módulo recém criado, tendo uma entrada
in1, e ums saída out1, combinando os módulos recém criados da forma abaixo:
Faça um testbench para testar os valores da saída out1 para todos os valores da
entrada in1.
*/

module submodule (
    input logic a, b,
    output logic c
);
    assign c = a & b;
endmodule

module exe4 (
    input logic in1,
    output logic out1
);
    logic sub_out;

    submodule u1 (.a(in1), .b(in1), .c(sub_out));

    assign out1 = sub_out | in1;
endmodule