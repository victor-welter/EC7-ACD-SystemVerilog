module catraca (
    input  logic       clk,
    input  logic       rst_n,

    input  logic       coin_i,
    input  logic       push_i,
    output logic       locked_o,
    output logic       unlocked_o,
    output logic [7:0] counter_o
);

    typedef enum logic [1:0] {
        LOCKED   = 2'b01,
        UNLOCKED = 2'b10
    } fsm_t;

    fsm_t state;
    fsm_t next_state;

    always_comb begin
        case (state)
            LOCKED: begin
                if (coin_i) begin
                    next_state = UNLOCKED;
                end
                else begin
                    next_state = LOCKED;
                end
            end
            UNLOCKED: begin
                if (push_i) begin
                    next_state = LOCKED;
                end
                else begin
                    next_state = UNLOCKED;
                end
            end
            default: begin
                next_state = LOCKED;
            end
        endcase
    end

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= LOCKED;
        end
        else begin
            state <= next_state;
        end
    end

    assign locked_o   = (state == LOCKED);
    assign unlocked_o = (state == UNLOCKED);

    always_ff @(posedge clk or negedge rst_n) begin
        if (rst_n == 1'b0) begin
            counter_o <= '0;
        end
        else begin
            if (push_i && state == UNLOCKED) begin
                counter_o <= counter_o + 1'b1;
            end
        end
    end

endmodule
