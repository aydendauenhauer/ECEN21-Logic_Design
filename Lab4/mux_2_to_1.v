module mux_2_to_1 (x1, x2, a1, f); 
	input x1, x2, a1;
	output f;
	
	assign f = (~a1 & x1) | (a1 & x2);
endmodule