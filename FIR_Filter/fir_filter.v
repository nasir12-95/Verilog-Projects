module fir_filter (
    input CLK_Filter,
    input rst_n,
    input wire [7:0] filter_in,		// 8-bit input voltage for filter
    output reg [19:0] filter_out	// 20-bit output for filters
);

    parameter word_width = 8;		 // input is 8 bit
    parameter order = 21;		// 22 coeficients
    parameter output_width   = 20;

    integer i;

    // Delay pipeline for filter input
    reg[word_width-1:0] delay_pipeline[order:0]; // Defines the delay

    // Filter coefficients (constant)
    wire[word_width-1:0] coef[order:0];

		// Assigining each coefficient value
    assign coef[0]=2;
		assign coef[1]=10;
		assign coef[2]=16;
		assign coef[3]=28;
    assign coef[4]=44;
		assign coef[5]=60;
		assign coef[6]=78;
		assign coef[7]=95;
    assign coef[8]=111;
		assign coef[9]=122;
		assign coef[10]=128;
		assign coef[11]=128;
    assign coef[12]=122;
		assign coef[13]=111;
		assign coef[14]=95;
		assign coef[15]=78;
    assign coef[16]=60;
		assign coef[17]=44;
		assign coef[18]=28;
		assign coef[19]=16;
    assign coef[20]=10;
		assign coef[21]=2;

    // Products and accumulation
    reg [output_width-1:0] product [order:0];
    reg [output_width-1:0] sum_buf;

		reg [output_width-1:0] acc; // temporary accumulator

    // Delay pipeline update (shift register)
    always @(posedge CLK_Filter or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i <= order; i = i + 1)
                delay_pipeline[i] <= 0;
        end else begin
            delay_pipeline[0] <= filter_in;
            for (i = 1; i <= order; i = i + 1)
                delay_pipeline[i] <= delay_pipeline[i - 1];
        end
    end

    // Compute products (synchronous)
    always @(posedge CLK_Filter or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i <= order; i = i + 1)
                product[i] <= 0;
        end else begin
            for (i = 0; i <= order; i = i + 1)
                product[i] <= coef[i] * delay_pipeline[i];
        end
    end

    // Accumulate products (synchronous)
    always @(posedge CLK_Filter or negedge rst_n) begin
    		if (!rst_n)
        sum_buf <= 0;
    		else begin
        		
        		acc = 0;
        		for (i = 0; i <= order; i = i + 1)
            		acc = acc + product[i];
        		sum_buf <= acc;
    		end
		end

    // Assigning the sum to the output of the filter
    always @(posedge CLK_Filter or negedge rst_n) begin
        if (!rst_n)
            filter_out <= 0;
        else
            filter_out <= sum_buf;
    end

endmodule

