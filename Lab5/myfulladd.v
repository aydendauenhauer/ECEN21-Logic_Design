module myfulladd(A, B, CIN, COUT, SOUT);
	input A, B, CIN;
	output COUT, SOUT;
	
	assign COUT = ((A ^ B) & CIN) | (A & B);
	assign SOUT = (A ^ B) ^ CIN;
endmodule