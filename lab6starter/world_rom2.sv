/*
 * ECE385-HelperTools/PNG-To-Txt
 * Author: Rishi Thakkar
 *
 */

module  world_rom2
(

		input [12:0]  read_address,
		input  Clk,

		output logic [4:0] data_Out
);

// mem has width of 3 bits and a total of 400 addresses
logic [4:0] mem [0:3599];

initial
begin
	 $readmemh("world_rom.txt", mem);
end


always_ff @ (posedge Clk) begin

	data_Out<= mem[read_address];
end

endmodule