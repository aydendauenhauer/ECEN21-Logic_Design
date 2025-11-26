module myadder2(X, Y, c0, s, v, c4);
	input c0;
	input [3:0]X, Y;
	output [3:0]s;
	output v, c4;
	wire [3:1]c;
	
	myfulladd(X[0], Y[0], c0, s[0], c[1]);
	myfulladd(X[1], Y[1], c[1], s[1], c[2]);
	myfulladd(X[2], Y[2], c[2], s[2], c[3]);
	myfulladd(X[3], Y[3], c[3], s[3], c4);
	assign v = c[3] ^ c4;
endmodule