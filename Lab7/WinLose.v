module WinLose(
	input Stop,
	input [2:0] UpCount,
	input [2:0] DownCount,
	output reg CntEn,
	output reg Lose,
	output reg Win);
	
	always @(UpCount or DownCount or Stop) begin
		Win <= 1'b0;
		Lose <= 1'b0;
		if(Stop) begin
			CntEn <= 1'b0;
			if(UpCount == DownCount)
				Win <= 1'b1;
			else
				Lose <= 1'b1;
		end
		else
			CntEn <= 1'b1;
	end
endmodule