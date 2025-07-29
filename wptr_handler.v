module wptr_handler(wptr,waddr,full,wclk,wen,wrst,rptr_sync);
	parameter WIDTH=5;
	input wen,wclk,wrst;
	input [WIDTH:0] rptr_sync;
	output reg [WIDTH:0] wptr,waddr;
	output reg full;
	
	wire [WIDTH:0] wptr_nxt;
	wire [WIDTH:0] waddr_nxt;
	wire wfull;
	
	assign waddr_nxt=waddr+(wen & !full);
	assign wptr_nxt=(waddr_nxt>>1)^waddr_nxt;
	
	always@(posedge wclk or negedge wrst) begin
		if(!wrst) begin
			waddr <= 0;
			wptr <= 0;
		end
		else begin
			waddr <= waddr_nxt;
			wptr <= wptr_nxt;
		end
	end
	always@(posedge wclk or negedge wrst) begin
		if(!wrst) begin
			full <= 0;
		end
		else begin
			full <= wfull;
		end
	end	
	assign wfull = (wptr_nxt == {~rptr_sync[WIDTH:WIDTH-1],rptr_sync[WIDTH-2:0]});
endmodule		
	