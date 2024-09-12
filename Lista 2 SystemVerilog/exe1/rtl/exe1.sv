/*
1) Crie um módulo com uma entrada in1 e três saídas out1, out2, out3. Crie 3
constantes:
● ENABLED (logic) com valor 1
● BUS_S (logic de 8 bits), com o valor hexadecimal AF
● INDEX (int) com valor 4
As três saídas devem ter o comportamento abaixo:
● out1 recebe in1 & ENABLED
● out2 recebe o 6º bit mais significativo de BUS_S
● out3 recebe o bit da posição INDEX de BUS_S
Faça um testbench para testar o módulo criado e simule usando o Modelsim.
*/

module exe1(
    input logic clk_i,
    input logic rst_ni,
    input logic in1,
    output logic out1,
    output logic out2,
    output logic out3
);

    localparam logic ENABLED = 1'b1;         
    localparam logic [7:0] BUS_S = 8'hAF;    
    localparam int INDEX = 4;                

    always_ff @(posedge clk_i or negedge rst_ni) begin
        if (!rst_ni) begin
            out1 <= 1'b0;
            out2 <= 1'b0;
            out3 <= 1'b0;
        end else begin
            out1 <= in1 & ENABLED;
            out2 <= BUS_S[INDEX];
            out3 <= in1 ^ ENABLED;
        end
    end
endmodule