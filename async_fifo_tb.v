module async_fifo_tb;
	parameter DATA_WIDTH=8, DEPTH=32, WIDTH=5;
	reg wclk,wen,wrst;
	reg rclk,ren,rrst;
	reg [DATA_WIDTH-1:0] data_in;
	wire full,empty;
	wire [DATA_WIDTH-1:0] data_out;
	
	Async_FIFO a1(wclk,wen,wrst,rclk,ren,rrst,full,empty,data_in,data_out);
	
	always #10 wclk=~wclk;
	always #30 rclk=~rclk;
	
	initial begin
		wen=0; wclk=0; wrst=0; ren=0; rclk=0; rrst=0; data_in=0;
		#50; wrst=1; rrst=1;
		
		repeat (10) begin
			@(posedge wclk);
			if(!full) begin
			  wen <= 1;
			  data_in <= $random;
			  $display("Write: %h at time %0t", data_in, $time);
			end
			else begin
			  wen <= 0;
			end
		end
		wen <= 0;
		#100;
		repeat (10) begin
			@(posedge rclk);
			if (!empty) begin
           ren <= 1;
           $display("Read : %h at time %0t", data_out, $time);
         end 
			else begin
           ren <= 0;
         end
      end
      ren <= 0;
		#100;
      $finish;
    end
endmodule
  