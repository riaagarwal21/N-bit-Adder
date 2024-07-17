`include "halfAdder.sv"
`include "fullAdder.sv"

module adder_n(Sum,A,B);
  
  //Parameter Declaration
  parameter n = 32;
  
  //Input Declaration
  input [n-1:0] A,B;
  
  //Output Declaration
  output [n-1:0] Sum;
  
  //Interim Wires
  wire [n-1:0] Carry;
  wire Cout;
  
  genvar i;
  generate
    for (i = 0; i < n; i = i + 1)
      begin : generate_adder_n
        if (i == 0)
          halfAdder u(Sum[0],Carry[0],A[0],B[0]);
        else
          fullAdder u(Sum[i],Carry[i],A[i],B[i],Carry[i-1]);
      end
    assign Cout = Carry[n-1];
  endgenerate
  
endmodule
