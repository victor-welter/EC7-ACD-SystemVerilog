module testbench;
    timeunit 1ns; 
    timeprecision 1ns;

    logic a, b, c, d;
    logic s1, s2, s3;
    
    exe1 m0 (
        .a(a), 
        .b(b), 
        .c(c), 
        .d(d),  
        .s1(s1),  
        .s2(s2),  
        .s3(s3)   
    );

    initial begin
        // Cabeçalho para facilitar a leitura dos resultados
        $display("a b c d | s1 s2 s3");
        $display("--------------------");
        
        // Loop para percorrer todas as combinações de a, b, c, d
        for (int i = 0; i < 16; i++) begin
            // Atribuir as variáveis com base no valor de i
            {a, b, c, d} = i;  // Gera todas as combinações de a, b, c e d
            #1;  // Espera 1ns para avaliação
            $display("%b %b %b %b |  %b  %b  %b", a, b, c, d, s1, s2, s3);
        end
    end

endmodule