module testbench();

reg[31:0] A;
reg[31:0] B;
reg[31:0] C;
reg[31:0] D;
reg[1:0] S;
wire[31:0] Y;

MUX4_32 myMUX(A, B, C, D, S, Y);

initial begin
A=32767; B=16383; C=65535; D=2481; S=2'b00;  #10; 
if (Y !== A) begin
           $display("Error: Expected %d got %d for S=%d", A, Y, S); $stop;
end
S=2'b01;  #10; 
if (Y !== B) begin
           $display("Error: Expected %d got %d for S=%d", B, Y, S); $stop;
end
S=2'b10;  #10; 
if (Y !== C) begin
           $display("Error: Expected %d got %d for S=%d", C, Y, S); $stop;
end
S=2'b11;  #10; 
if (Y !== D) begin
           $display("Error: Expected %d got %d for S=%d", D, Y, S); $stop;
end

$display("All tests passed.");
end

endmodule