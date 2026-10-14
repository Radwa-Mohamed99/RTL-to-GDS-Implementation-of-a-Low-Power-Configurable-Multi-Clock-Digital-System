module SYS_CTRL #(
    parameter DATA_WIDTH    = 8,
    parameter FUNC_WIDTH    = 4,
    parameter ADDR_WIDTH  = 4
)(
    input  wire                         CLK,
    input  wire                         RST,

    //========================================================
    // RX Interface
    //========================================================
    input  wire [DATA_WIDTH-1:0]        UART_RX_DATA,
    input  wire                         UART_RX_VLD,

    //========================================================
    // Register File Interface
    //========================================================
    input  wire [DATA_WIDTH-1:0]        RF_RdData,
    input  wire                         RF_RdData_VLD,

    //========================================================
    // ALU Interface
    //========================================================
    input  wire [2*DATA_WIDTH-1:0]       ALU_OUT,
    input  wire                         OUT_VALID,

    //========================================================
    // TX FIFO Interface
    //========================================================
    input  wire                         FIFO_FULL,

    //========================================================
    // Register File Control
    //========================================================
    output reg                          RF_WrEn,
    output reg                          RF_RdEn,
    output reg [ADDR_WIDTH -1:0]      RF_Address,
    output reg [DATA_WIDTH-1:0]         RF_WrData,

    //========================================================
    // ALU Control
    //========================================================
    output reg [FUNC_WIDTH-1:0]         ALU_FUN,
    output reg                          ALU_EN,

    //========================================================
    // TX FIFO Data
    //========================================================
    output reg [DATA_WIDTH-1:0]         UART_TX_DATA,
    output reg                          UART_TX_VLD,

    //========================================================
    // Clock Control
    //========================================================
    output reg                          CLKG_EN,
    output reg                          CLKDIV_EN
);

    //========================================================
    // FSM STATES
    //========================================================

    localparam IDLE         = 4'd0;

    // WRITE
    localparam WR_ADDR      = 4'd1;
    localparam WR_DATA      = 4'd2;

    // READ
    localparam RD_ADDR      = 4'd3;
    localparam RD_REQUEST   = 4'd4;
    localparam RD_WAIT      = 4'd5;
    localparam RD_SEND      = 4'd6;

    // ALU
    localparam OPERAND_A    = 4'd7;
    localparam OPERAND_B    = 4'd8;
    localparam ALU_FUNCTION = 4'd9;
    localparam ALU_WAIT     = 4'd10;
    localparam ALU_RESULT_L = 4'd11;
    localparam ALU_RESULT_H = 4'd12;


    //========================================================
    // STATE REGISTERS
    //========================================================

    reg [3:0] current_state;
    reg [3:0] next_state;


    //========================================================
    // STORED ADDRESS
    //========================================================

    reg [ADDR_WIDTH -1:0] stored_addr;


    //========================================================
    // STORED ALU RESULT
    //========================================================

    reg [2*DATA_WIDTH-1:0] stored_alu_out;


    //========================================================
    // STORED READ DATA
    //========================================================

    reg [DATA_WIDTH-1:0] stored_rd_data;


    //========================================================
    // 1) STATE REGISTER
    //========================================================

    always @(posedge CLK or negedge RST) begin

        if (!RST)
            current_state <= IDLE;

        else
            current_state <= next_state;

    end


    //========================================================
    // 2) STORE ADDRESS
    //========================================================

    always @(posedge CLK or negedge RST) begin

        if (!RST) begin
            stored_addr <= {ADDR_WIDTH {1'b0}};
        end

        else begin

            if ((current_state == WR_ADDR ||
                 current_state == RD_ADDR) &&
                UART_RX_VLD) begin

                stored_addr <= UART_RX_DATA[ADDR_WIDTH -1:0];

            end

        end

    end


    //========================================================
    // 3) STORE READ DATA
    //
    // RF is synchronous.
    //
    // RD_REQUEST:
    //     RF_RdEn = 1
    //
    // Next clock:
    //     Reg_File produces RF_RdData
    //     Reg_File produces RF_RdData_VLD
    //
    // RD_WAIT:
    //     capture RF_RdData
    //
    //========================================================

    always @(posedge CLK or negedge RST) begin

        if (!RST) begin
            stored_rd_data <= {DATA_WIDTH{1'b0}};
        end

        else begin

            if (current_state == RD_WAIT &&
                RF_RdData_VLD) begin

                stored_rd_data <= RF_RdData;

            end

        end

    end


    //========================================================
    // 4) STORE ALU RESULT
    //========================================================

    always @(posedge CLK or negedge RST) begin

        if (!RST) begin
            stored_alu_out <= {(2*DATA_WIDTH){1'b0}};
        end

        else if (OUT_VALID) begin
            stored_alu_out <= ALU_OUT;
        end

    end


    //========================================================
    // 5) NEXT STATE LOGIC
    //========================================================

    always @(*) begin

        next_state = current_state;

        case (current_state)

            //================================================
            // IDLE
            //================================================

            IDLE: begin

                if (UART_RX_VLD) begin

                    case (UART_RX_DATA)

                        // WRITE
                        8'hAA:
                            next_state = WR_ADDR;

                        // READ
                        8'hBB:
                            next_state = RD_ADDR;

                        // ALU
                        8'hCC:
                            next_state = OPERAND_A;

                        // ALU without operands
                        8'hDD:
                            next_state = ALU_FUNCTION;

                        default:
                            next_state = IDLE;

                    endcase

                end

            end


            //================================================
            // WRITE ADDRESS
            //================================================

            WR_ADDR: begin

                if (UART_RX_VLD)
                    next_state = WR_DATA;

            end


            //================================================
            // WRITE DATA
            //================================================

            WR_DATA: begin

                if (UART_RX_VLD)
                    next_state = IDLE;

            end


            //================================================
            // READ ADDRESS
            //================================================

            RD_ADDR: begin

                if (UART_RX_VLD)
                    next_state = RD_REQUEST;

            end


            //================================================
            // READ REQUEST
            //
            // One-cycle RF_RdEn pulse.
            //================================================

            RD_REQUEST: begin

                next_state = RD_WAIT;

            end


            //================================================
            // READ WAIT
            //
            // Wait for synchronous RF response.
            //================================================

            RD_WAIT: begin

                if (RF_RdData_VLD)
                    next_state = RD_SEND;

            end


            //================================================
            // READ SEND
            //================================================

            RD_SEND: begin

                if (!FIFO_FULL)
                    next_state = IDLE;

            end


            //================================================
            // OPERAND A
            //================================================

            OPERAND_A: begin

                if (UART_RX_VLD)
                    next_state = OPERAND_B;

            end


            //================================================
            // OPERAND B
            //================================================

            OPERAND_B: begin

                if (UART_RX_VLD)
                    next_state = ALU_FUNCTION;

            end


            //================================================
            // ALU FUNCTION
            //================================================

            ALU_FUNCTION: begin

                if (UART_RX_VLD)
                    next_state = ALU_WAIT;

            end


            //================================================
            // ALU WAIT
            //================================================

            ALU_WAIT: begin

                if (OUT_VALID)
                    next_state = ALU_RESULT_L;

            end


            //================================================
            // ALU RESULT LOW BYTE
            //================================================

            ALU_RESULT_L: begin

                if (!FIFO_FULL)
                    next_state = ALU_RESULT_H;

            end


            //================================================
            // ALU RESULT HIGH BYTE
            //================================================

            ALU_RESULT_H: begin

                if (!FIFO_FULL)
                    next_state = IDLE;

            end


            //================================================
            // DEFAULT
            //================================================

            default: begin

                next_state = IDLE;

            end

        endcase

    end


    //========================================================
    // 6) OUTPUT / CONTROL LOGIC
    //========================================================

    always @(*) begin

        //====================================================
        // DEFAULT VALUES
        //====================================================

        RF_WrEn      = 1'b0;
        RF_RdEn      = 1'b0;
        RF_Address   = stored_addr;
        RF_WrData    = {DATA_WIDTH{1'b0}};

        ALU_FUN      = {FUNC_WIDTH{1'b0}};
        ALU_EN       = 1'b0;

        UART_TX_DATA = {DATA_WIDTH{1'b0}};
        UART_TX_VLD  = 1'b0;

        CLKG_EN      = 1'b0;
        CLKDIV_EN    = 1'b1;


        //====================================================
        // FSM OUTPUTS
        //====================================================

        case (current_state)


            //================================================
            // IDLE
            //================================================

            IDLE: begin

                RF_WrEn     = 1'b0;
                RF_RdEn     = 1'b0;

                ALU_EN      = 1'b0;

                UART_TX_VLD = 1'b0;

                CLKG_EN     = 1'b0;
                CLKDIV_EN   = 1'b1;

            end


            //================================================
            // WRITE ADDRESS
            //================================================

            WR_ADDR: begin

                RF_WrEn     = 1'b0;
                RF_RdEn     = 1'b0;

                CLKG_EN     = 1'b0;
                CLKDIV_EN   = 1'b1;

            end


            //================================================
            // WRITE DATA
            //================================================

            WR_DATA: begin

                RF_Address = stored_addr;

                CLKG_EN    = 1'b0;
                CLKDIV_EN  = 1'b1;

                if (UART_RX_VLD) begin

                    RF_WrEn   = 1'b1;
                    RF_WrData = UART_RX_DATA;

                end

            end


            //================================================
            // READ ADDRESS
            //================================================

            RD_ADDR: begin

                RF_WrEn   = 1'b0;
                RF_RdEn   = 1'b0;

                RF_Address = stored_addr;

                CLKG_EN   = 1'b0;
                CLKDIV_EN = 1'b1;

            end


            //================================================
            // READ REQUEST
            //
            // IMPORTANT:
            // RF_RdEn is HIGH for exactly one REF_CLK cycle.
            //================================================

            RD_REQUEST: begin

                RF_Address = stored_addr;

                RF_WrEn = 1'b0;
                RF_RdEn = 1'b1;

                CLKG_EN   = 1'b0;
                CLKDIV_EN = 1'b1;

            end


            //================================================
            // READ WAIT
            //
            // RF_RdEn is LOW here.
            //
            // Reg_File has already received the read request.
            // We wait for RF_RdData_VLD.
            //================================================

            RD_WAIT: begin

                RF_Address = stored_addr;

                RF_WrEn = 1'b0;
                RF_RdEn = 1'b0;

                CLKG_EN   = 1'b0;
                CLKDIV_EN = 1'b1;

            end


            //================================================
            // READ SEND
            //
            // stored_rd_data contains the registered RF data.
            //================================================

            RD_SEND: begin

                RF_WrEn = 1'b0;
                RF_RdEn = 1'b0;

                CLKG_EN   = 1'b0;
                CLKDIV_EN = 1'b1;

                if (!FIFO_FULL) begin

                    UART_TX_DATA = stored_rd_data;
                    UART_TX_VLD  = 1'b1;

                end

            end


            //================================================
            // OPERAND A
            //================================================

            OPERAND_A: begin

                RF_Address = 4'd0;

                CLKG_EN   = 1'b0;
                CLKDIV_EN = 1'b1;

                if (UART_RX_VLD) begin

                    RF_WrEn   = 1'b1;
                    RF_WrData = UART_RX_DATA;

                end

            end


            //================================================
            // OPERAND B
            //================================================

            OPERAND_B: begin

                RF_Address = 4'd1;

                CLKG_EN   = 1'b0;
                CLKDIV_EN = 1'b1;

                if (UART_RX_VLD) begin

                    RF_WrEn   = 1'b1;
                    RF_WrData = UART_RX_DATA;

                end

            end


            //================================================
            // ALU FUNCTION
            //================================================

            ALU_FUNCTION: begin

                CLKG_EN   = 1'b1;
                CLKDIV_EN = 1'b1;

                if (UART_RX_VLD) begin

                    ALU_FUN = UART_RX_DATA[FUNC_WIDTH-1:0];
                    ALU_EN  = 1'b1;

                end

            end


            //================================================
            // ALU WAIT
            //================================================

            ALU_WAIT: begin

                CLKG_EN   = 1'b1;
                CLKDIV_EN = 1'b1;

                ALU_EN = 1'b0;

            end


            //================================================
            // ALU RESULT LOW BYTE
            //================================================

            ALU_RESULT_L: begin

                CLKG_EN   = 1'b0;
                CLKDIV_EN = 1'b1;

                if (!FIFO_FULL) begin

                    UART_TX_DATA = stored_alu_out[DATA_WIDTH-1:0];
                    UART_TX_VLD  = 1'b1;

                end

            end


            //================================================
            // ALU RESULT HIGH BYTE
            //================================================

            ALU_RESULT_H: begin

                CLKG_EN   = 1'b0;
                CLKDIV_EN = 1'b1;

                if (!FIFO_FULL) begin

                    UART_TX_DATA =
                        stored_alu_out[2*DATA_WIDTH-1:DATA_WIDTH];

                    UART_TX_VLD = 1'b1;

                end

            end


            //================================================
            // DEFAULT
            //================================================

            default: begin

                RF_WrEn      = 1'b0;
                RF_RdEn      = 1'b0;

                ALU_EN       = 1'b0;

                UART_TX_VLD  = 1'b0;

                CLKG_EN      = 1'b0;
                CLKDIV_EN    = 1'b1;

            end

        endcase

    end

endmodule

