module Async_FIFO(wclk,wen,wrst,rclk,ren,rrst,full,empty,data_in,data_out);
	parameter DATA_WIDTH=8, DEPTH=32, WIDTH=5;
	input wclk,wen,wrst;
	input rclk,ren,rrst;
	input [DATA_WIDTH-1:0] data_in;
	output full,empty;
	output [DATA_WIDTH-1:0] data_out;
	
	wire [WIDTH:0] wptr,rptr;
	wire [WIDTH:0] raddr, waddr;
	wire [WIDTH:0] wptr_sync, rptr_sync;
	
	synchronizer rsync(wclk,wrst,rptr,rptr_sync); 
	synchronizer wsync(rclk,rrst,wptr,wptr_sync);
	
	wptr_handler wph(wptr,waddr,full,wclk,wen,wrst,rptr_sync);
	rptr_handler rph(raddr,rptr,empty,rclk,ren,rrst,wptr_sync);
	fifo_mem f1(wclk,wen,rclk,ren,raddr,waddr,data_in,full,empty,data_out);
endmodule
