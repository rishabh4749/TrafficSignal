module tb;
  reg clk;
  wire [1:0]light;
  wire [1:0]states;
  trafficlight traffic0(clk,light,states);
  always #5 clk=~clk;
  initial
    begin
      $dumpfile("trafficlight.vcd");
      $dumpvars(0,tb);
      $monitor($time," States=%b Light=%b ",states,light);
    end
  initial
    begin
      clk<=1'b0;
      #5;
      #10;
      #10;
      #10 $finish;
    end
endmodule
      