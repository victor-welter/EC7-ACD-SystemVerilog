/*
7) Crie um módulo que implementa um contador de 8 bits. Lembrar de adicionar clock
e reset (reset ativo-baixo) nas entradas e a saída do contador. O contador deve partir
de um valor inicial após o seu reset (a ser definido pelo projetista). O testbench deve
criar um clock de 50 MHz e implementar a lógica de reset.
*/

module exe7(
    input logic clk,
    input logic rst_n,     
    output logic [7:0] count 
);

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            count <= 8'b0; 
        else
            count <= count + 1;
    end
endmodule