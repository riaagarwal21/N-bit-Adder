`timescale 1ns / 1ps

module tb_adder_n;

  // Parameter Declaration
  parameter n = 32;

  //Input Declaration
  reg [n-1:0] A, B;

  //Output Declaration
  wire [n-1:0] Sum;

  adder_n #(n) uut (
    .Sum(Sum),
    .A(A),
    .B(B)
  );

  // Task for checking the result
  task check_result;
    input [n-1:0] A, B;
    input [n-1:0] Sum;
    reg [n-1:0] expected_Sum;
  begin
    expected_Sum = 0;
    expected_Sum = A + B;
    if (Sum !== expected_Sum) begin
      $display("Error: A = %0d, B = %0d, Expected Sum = %0d, Got = %0d", A, B, expected_Sum, Sum);
    end else begin
      $display("Success: A = %0d, B = %0d, Sum = %0d", A, B, Sum);
    end
  end
  endtask

  initial begin
    A = 32'h00000000; B = 32'h00000000; #10; check_result(A, B, Sum);
    A = 32'h00000001; B = 32'h00000001; #10; check_result(A, B, Sum);
    A = 32'hFFFFFFFF; B = 32'h00000001; #10; check_result(A, B, Sum);
    A = 32'h12345678; B = 32'h87654321; #10; check_result(A, B, Sum);
    A = 32'h0F0F0F0F; B = 32'hF0F0F0F0; #10; check_result(A, B, Sum);
    A = 32'hAAAAAAAA; B = 32'h55555555; #10; check_result(A, B, Sum);
    A = 32'h0000FFFF; B = 32'hFFFF0000; #10; check_result(A, B, Sum);
    
    // Random tests
    repeat(10) begin
      A = $random;
      B = $random;
      #10;
      check_result(A, B, Sum);
    end
    
    $stop;
  end

endmodule
