module fullAdder(Sum,Cout,A,B,Cin);
  
  //Input Declaration
  input A, B, Cin;
  
  //Output Declaration
  output Sum, Cout;
  
  //Logic
  assign Sum = ((A ^ B) ^ Cin);
  assign Cout = (A & B) | (B & Cin) | (Cin & A);
  
endmodule
