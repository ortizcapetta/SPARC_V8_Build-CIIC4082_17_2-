module BinaryDecoder (E,Ld,C);
 
  // BUS width
  parameter DATA_WIDTH = 32; 
  parameter OpCode_bits = 5; 	// 2^5 = 32 possible register selection
  
  // Outputs
  output reg [DATA_WIDTH-1:0]E;	// Output E, register enable
  
  // Inputs	
  input[OpCode_bits-1:0]C;	// OpCode selects Register to write to
  input Ld;
  					 	
  
  always @ (Ld)			// Start writing when enable load
    case(C)
 
    5'd0: E = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
    5'd1: E = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
    5'd2: E = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
    5'd3: E = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
    5'd4: E = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
    5'd5: E = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
    5'd6: E = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
    5'd7: E = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
    5'd8: E = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
    5'd9: E = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
    5'd10:E = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
    5'd11:E = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
    5'd12:E = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
    5'd13:E = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
    5'd14:E = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
    5'd15:E = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
    5'd16:E = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
    5'd17:E = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
    5'd18:E = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
    5'd19:E = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
    5'd20:E = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
    5'd21:E = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
    5'd22:E = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
    5'd23:E = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
    5'd24:E = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
    5'd25:E = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
    5'd26:E = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
    5'd27:E = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
    5'd28:E = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
    5'd29:E = 32'b0010_0000_0000_0000_0000_0000_0000_0000; 
    5'd30:E = 32'b0100_0000_0000_0000_0000_0000_0000_0000; 
    5'd31:E = 32'b1000_0000_0000_0000_0000_0000_0000_0000; 
       
   endcase
  


endmodule