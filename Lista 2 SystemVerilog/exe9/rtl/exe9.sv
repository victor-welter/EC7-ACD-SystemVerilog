/*
9) Modifique o tutorial da catraca para fazer um contador de créditos, criando um sinal
interno de 8 bits para armazenar a quantidade de crédito, que deve inicializar zerado.
Sempre que houver crédito, a catraca mantém desbloqueada. Quando inserido uma
moeda, aumenta a contagem de crédito, e quando passa uma pessoa, diminui a
contagem de crédito. Teste a funcionalidade do circuito fazendo um testbench e
simulando no Modelsim.
*/

module exe9(
    input logic clk,
    input logic rst_n,
    input logic coin,      
    input logic pass,      
    output logic unlocked  
);

    logic [7:0] credit_cnt;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            credit_cnt <= 8'b0; 
        else begin
            if (coin)
                credit_cnt <= credit_cnt + 1;
            if (pass && credit_cnt > 0)
                credit_cnt <= credit_cnt - 1;
        end
    end

    assign unlocked = (credit_cnt > 0) ? 1 : 0;
endmodule
