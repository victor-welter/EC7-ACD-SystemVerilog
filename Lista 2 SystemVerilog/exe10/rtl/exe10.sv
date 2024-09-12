/*
10) Crie um módulo que implementa uma máquina de estados que detecta a sequência
de bits 1-0-0-1 em uma entrada chamada bit_i de 1 bit. Toda a vez que essa
sequência ocorrer, a saída seq_o deve permanecer em 1 por um ciclo de clock e
então retornar a 0. Implementar o testbench e testar no Modelsim.
*/

module exe10(
    input logic clk,
    input logic rst_n,  
    input logic bit_i,  
    output logic seq_o  
);

    typedef enum logic [2:0] { 
        S0, 
        S1, 
        S2, 
        S3, 
        S4  
    } state_t;

    state_t current_state, next_state;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            current_state <= S0; 
        else
            current_state <= next_state;
    end

    always_comb begin
        next_state = current_state; 
        seq_o = 1'b0;               
        
        case (current_state)
            S0: if (bit_i) next_state = S1;        
            S1: if (!bit_i) next_state = S2;       
            S2: if (!bit_i) next_state = S3;       
            S3: if (bit_i) next_state = S4;        
            S4: begin
                seq_o = 1'b1;                      
                next_state = S0;                   
            end
        endcase
    end
endmodule