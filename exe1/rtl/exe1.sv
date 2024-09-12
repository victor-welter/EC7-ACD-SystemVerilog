/*
Crie um módulo que implementa as seguintes expressões:
	s1 = ~a | b
	s2 = (a | b) & (c | d)
	s3 = a & ~b | ~(c & (a | d))
Onde a, b, c, d são entradas e s1, s2 e s3 são saídas. Implemente o testbench para testar o módulo criado e simule usando o Modelsim.
*/

module exe1 (
    input logic a,
    input logic b,
    input logic c,
    input logic d,

    output logic s1,
    output logic s2,
    output logic s3
);

    assign s1 = ~a | b;
    assign s2 = (a | b) & (c | d);
    assign s3 = a & ~b | ~(c & (a | d));

endmodule
