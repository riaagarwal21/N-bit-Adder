module halfAdder(Sum,Cout,A,B);
  
  //Input Declaration
  input A, B;
  
  //Output Declaration
  output Sum, Cout;
  
  //Logic
  assign Sum = A ^ B;
  assign Cout = A & B;
    
endmodule
