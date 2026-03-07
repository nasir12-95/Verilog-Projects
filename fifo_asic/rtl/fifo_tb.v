module fifo_tb;
	reg clk = 0;
	always #5 clk = ~clk;
	
	reg rst_n, wr_en, rd_en;
	
	reg [7:0] wr_data; 
	wire [7:0] rd_data;
	
	wire full, empty;
	
	fifo dut(
		.clk(clk),
		.rst_n(rst_n),
		.wr_en(wr_en),
		.rd_en(rd_en),
		.wr_data(wr_data),
		.rd_data(rd_data),
		.full(full),
		.empty(empty)
	);
	
	initial begin
		
		$monitor("Time: %t | rst_n: %b | wr_en: %b | wr_data: %h | rd_en: %b | rd_data: %h | full: %b | empty: %b", $time, rst_n, wr_en, wr_data, rd_en, rd_data, full, empty);
		
		rst_n = 0;
		wr_en = 0;
		rd_en = 0;
		wr_data = 8'b0;
		
		#20 rst_n = 1;
		
		repeat (8) begin
			@(posedge clk);
			wr_en <= 1;
			wr_data <= wr_data + 1;
		end
		
		@(posedge clk);
		wr_en <= 0;
		
		repeat (8) begin
			@(posedge clk);
			rd_en <= 1;
		end
		
		@(posedge clk);
		rd_en <= 0;
		
		#100 $finish;
	end
	
endmodule

