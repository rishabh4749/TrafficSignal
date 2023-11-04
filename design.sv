//Ideal Traffic Signal
module trafficlight(clk,light,states);
  output reg [1:0]states;
  parameter red=2'b00,yellow=2'b01,green=2'b10;
  input clk;
  output reg [1:0]light;
  always @ (posedge clk)
    begin
      case(states)
        red:begin
          states<=yellow;
          light<=2'b00;
        end
        yellow:begin
          states<=green;
          light<=2'b01;
        end
        green:begin
          states<=red;
          light<=2'b10;
        end
        default:begin
          states<=yellow;
          light<=2'b00;
        end
      endcase
    end
endmodule