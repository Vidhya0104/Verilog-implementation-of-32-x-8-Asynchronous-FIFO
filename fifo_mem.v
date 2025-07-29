module fifo_mem(wclk,wen,rclk,ren,raddr,waddr,data_in,full,empty,data_out);
	parameter DATA_WIDTH=8, DEPTH=32, WIDTH=5;
	input wclk,wen,rclk,ren;
	input [WIDTH:0]raddr,waddr;
	input [DATA_WIDTH-1:0] data_in;
	input full,empty;
	output reg [DATA_WIDTH-1:0] data_out;
	
	reg [DATA_WIDTH-1:0]fifo[0:DEPTH-1];
	
	always@(posedge wclk) begin
		if(wen & !full) begin
			fifo[waddr[WIDTH-1:0]] <= data_in;
		end
	end
	
	always@(posedge rclk) begin
		if(ren && !empty) begin
			data_out <= fifo[raddr[WIDTH-1:0]];
		end
	end
endmodule
