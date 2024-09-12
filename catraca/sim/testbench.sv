module testbench;
    timeunit 1ns; timeprecision 1ns;
    
    /* Geração de clock */
    logic clk = 0;
    always #10 clk = ~clk;

    /* Geração de reset */
    logic rst_n = 0;
    initial #100 rst_n = 1;

    /* Sinais para ligar no módulo */
    logic       coin;
    logic       push;
    logic       locked;
    logic       unlocked;
    logic [7:0] counter;

    /* Instanciação do módulo */
    catraca c0 (
        .clk       (clk     ),
        .rst_n     (rst_n   ),
        .coin_i    (coin    ),
        .push_i    (push    ),
        .locked_o  (locked  ),
        .unlocked_o(unlocked),
        .counter_o (counter )
    );

    initial begin
        /* Resetar as entradas */
        coin = 0;
        push = 0;

        /* Aguarda fim do reset */
        @(posedge clk iff (rst_n == 1));

        /* Teste 1: empurrar com catraca trancada */
        @(negedge clk);
        $display("Teste 1: empurrar com catraca trancada");
        $display("Bloqueado? %d", locked);
        coin = 0;
        push = 1;

        @(negedge clk);
        $display("Bloqueado? %d", locked);

        @(negedge clk);
        /* Teste 2: inserir moeda com catraca trancada */
        $display("Teste 2: inserir moeda com catraca trancada");
        $display("Bloqueado? %d", locked);
        push = 0;
        coin = 1;

        @(negedge clk);
        $display("Desbloqueado? %d", unlocked);
        $display("Contador = %d", counter);

        /* Teste 3: empurrar com catraca destrancada */
        $display("Teste 3: empurrar com catraca destrancada");
        push = 1;
        coin = 0;
        $display("Desbloqueado? %d", unlocked);
        $display("Contador = %d", counter);
        @(negedge clk);
        $display("Bloqueado? %d", locked);
        $display("Contador = %d", counter);

    end

endmodule
