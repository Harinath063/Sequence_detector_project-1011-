 module seq_detector (
    input x, clk, rst,
    output reg z
);

// State encoding
parameter S0 = 2'd0,
          S1 = 2'd1,
          S2 = 2'd2,
          S3 = 2'd3;

reg [1:0] PS, NS;

// State register (sequential logic)
always @(posedge clk or posedge rst) begin
    if (rst)
        PS <= S0;
    else
        PS <= NS;
end

// Next state & output logic (combinational)
always @(PS or x) begin
    case (PS)

        S0: begin
            z = 0;
            NS = (x) ? S1 : S0;
        end

        S1: begin
            z = 0;
            NS = (x) ? S1 : S2;
        end

        S2: begin
            z = 0;
            NS = (x) ? S3 : S0;
        end

        S3: begin
            z = (x) ? 1 : 0;
            NS = (x) ? S1 : S2;
        end

        default: begin
            z = 0;
            NS = S0;
        end

    endcase
end

endmodule