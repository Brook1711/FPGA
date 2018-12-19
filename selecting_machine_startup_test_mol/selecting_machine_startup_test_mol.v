`timescale 1ns/1ns
module selecting_machine_startup_test_mol(row, col, digit_scan, digit_cath);
reg clk;
reg sw;
reg BTN_7;
reg [6:0] BTN;
output [7:0] row;
output [7:0] col;
output [7:0] digit_scan;
output [7:0] digit_cath;
initial
begin
clk = 0;
sw = 0;
BTN_7 = 0;
BTN = 7'b000_0000;
end

always #10 clk=~clk;

wire [7:0] row_test;
wire [7:0] col_test;
wire [7:0] digit_scan_test;
wire [7:0] digit_cath_test;

wire [7:0] row_startup;
wire [7:0] col_stratup;
wire [7:0] digit_scan_startup;
wire [7:0] digit_cath_startup;

assign row = sw==1? row_test : row_startup;
assign col = sw==1? col_test : col_stratup;
assign digit_scan = sw==1? digit_scan_test : digit_scan_startup;
assign digit_cath = sw==1? digit_cath_test : digit_cath_startup;
selecting_machine_startup u_startup(
	.clk(clk),
	.row(row_startup),
	.col(col_stratup),
	.digit_scan(digit_scan_startup),
	.digit_cath(digit_cath_startup)
	);
selecting_machine_test u_basic(
	.clk(clk),
	.rst(BTN_7),
	.BTN(BTN),
	.row(row_test),
	.col(col_test),
	.digit_scan(digit_scan_test),
	.digit_cath(digit_cath_test)
	);
endmodule

module selecting_machine_startup(clk, row, col, digit_scan, digit_cath);
input clk;
output [7:0] row;
output [7:0] col;
output [7:0] digit_scan;
output [7:0] digit_cath;
wire clk_500;
wire clk_2;
reg code_test;
reg flag;
reg [2:0] cnt;
initial
begin
	cnt<=0;
	flag<=1;
	code_test<=1;
end

always @(posedge clk_2) begin
	if (cnt==6) begin
		flag<=0;
		code_test<=0;
	end
	else if (flag==1) begin
		code_test<=!code_test;
		cnt<=cnt+1;
	end
	else begin
		code_test<=0;
	end
end


frequency_divider #(.N(50000)) u_clk_500(
	.clkin(clk),
	.clkout(clk_500));
frequency_divider #(.N(12500000)) u_clk_2(
	.clkin(clk),
	.clkout(clk_2)
	);
decode_lattice_startup u_decode_lattice_startup(
.clk_500(clk_500),
.code(code_test),
.row(row),
.col(col));
decode_seg_startup u_decode_seg_startup(
	.clk_500(clk_500),
	.code(code_test),
	.digit_seg(digit_scan),
	.digit_cath(digit_cath)
	);
endmodule

module decode_lattice_startup(clk_500, code, row, col);
input clk_500;//500Hz
input code;
output reg [7:0] row;
output [7:0] col;
reg [2:0] cnt;
initial 
begin
	cnt=0;
	row=0;
end

always @(posedge clk_500) begin

		cnt<=cnt+1;

end

always @(posedge clk_500) begin
	case(cnt)
	3'h0: begin
		row<=8'b1111_1110;

	end
	3'h1: begin
		row<=8'b1111_1101;

	end
	3'h2: begin
		row<=8'b1111_1011;

	end
	3'h3: begin
		row<=8'b1111_0111;

	end
	3'h4: begin
		row<=8'b1110_1111;

	end
	3'h5: begin
		row<=8'b1101_1111;

	end
	3'h6: begin
		row<=8'b1011_1111;

	end
	3'h7: begin
		row<=8'b0111_1111;
	end
	default:;
	endcase
end

assign col =code==1? 8'b1111_1111:8'b0000_0000 ;

endmodule

module decode_seg_startup(clk_500, code, digit_seg, digit_cath);
input clk_500;
input code;
output [7:0] digit_seg;
output reg [7:0] digit_cath;

reg [2:0] cath_control;

initial
begin
	digit_cath=0;
	cath_control=0;
end
assign digit_seg = code==1? 8'b1111_1111:8'b0000_0000;

always @(posedge clk_500) begin
	if (cath_control==7) begin
		cath_control<=0;
	end
	else  begin
		cath_control<=cath_control+1;
	end
end



always @(posedge clk_500) begin
	case(cath_control)
	3'h0: begin
		digit_cath<=8'b1111_1110;

	end
	3'h1: begin
		digit_cath<=8'b1111_1101;

	end
	3'h2: begin
		digit_cath<=8'b1111_1011;

	end
	3'h3: begin
		digit_cath<=8'b1111_0111;

	end
	3'h4: begin
		digit_cath<=8'b1110_1111;

	end
	3'h5: begin
		digit_cath<=8'b1101_1111;

	end
	default:;
	endcase
end

endmodule

module selecting_machine_test(clk, rst, BTN, row, col, digit_scan, digit_cath);
input clk;
input rst;
input [6:0] BTN;
output [7:0] row;
output [7:0] col;
output [7:0] digit_scan;
output [7:0] digit_cath;
wire [6:0] flag; 
wire [27:0] code;
wire [6:0] clk_seven;
wire clk_500;
wire [6:0] BTN_pulse_temp;

flag_control u_flag(
	.clk(clk),
	.rst(rst),
	.BTN_pulse(BTN_pulse_temp),
	.flag(flag));

debounce #(.N(7)) u_debounce(
	.clk(clk),
	.rst(rst),
	.key(~BTN),
	.key_pulse(BTN_pulse_temp));
	
frequency_divider #(.N(50000)) u_clk_500(
	.clkin(clk),
	.clkout(clk_500));
frequency_divider #(.N(12500000)) u_clk_6(//2Hz时钟
	.clkin(clk),
	.clkout(clk_seven[6])
	);
frequency_divider #(.N(10000000)) u_clk_5(
	.clkin(clk),
	.clkout(clk_seven[5])
	);
frequency_divider #(.N(7500000)) u_clk_4(
	.clkin(clk),
	.clkout(clk_seven[4])
	);
frequency_divider #(.N(5000000)) u_clk_3(
	.clkin(clk),
	.clkout(clk_seven[3])
	);
frequency_divider #(.N(2500000)) u_clk_2(
	.clkin(clk),
	.clkout(clk_seven[2])
	);
frequency_divider #(.N(2000000)) u_clk_1(
	.clkin(clk),
	.clkout(clk_seven[1])
	);
frequency_divider #(.N(1250000)) u_clk_0(
	.clkin(clk),
	.clkout(clk_seven[0])
	);
sequencer_chi u_sequencer_chi(
	.clk(clk_seven[6]),
	.rst(rst),
	.flag(flag[6]),
	.code(code[27:24])
	);
sequencer_eng u_sequencer_eng(
	.clk(clk_seven[5]),
	.rst(rst),
	.flag(flag[5]),
	.code(code[23:20])
	);
sequencer_num u_sequencer_num_4(
	.clk(clk_seven[4]),
	.rst(rst),
	.flag(flag[4]),
	.code(code[19:16])
	);
sequencer_num u_sequencer_num_3(
	.clk(clk_seven[3]),
	.rst(rst),
	.flag(flag[3]),
	.code(code[15:12])
	);
sequencer_num u_sequencer_num_2(
	.clk(clk_seven[2]),
	.rst(rst),
	.flag(flag[2]),
	.code(code[11:8])
	);
sequencer_num u_sequencer_num_1(
	.clk(clk_seven[1]),
	.rst(rst),
	.flag(flag[1]),
	.code(code[7:4])
	);
sequencer_num u_sequencer_num_0(
	.clk(clk_seven[0]),
	.rst(rst),
	.flag(flag[0]),
	.code(code[3:0])
	);

decode_seg u_decode_seg(
	.clk_500(clk_500),
	.rst(rst),
	.code(code[23:0]),
	.digit_seg(digit_scan),
	.digit_cath(digit_cath)
	);

decode_lattice u2(
.clk_500(clk_500),
.rst(rst),
.code(code[27:24]),
.row(row),
.col(col));
endmodule

module sequencer_eng(clk, rst, flag, code);
input clk;
input rst;
input flag;
output reg [3:0] code;
initial
begin
	code=0;
end

always @(posedge clk or posedge rst) begin
	if (rst) begin
		// reset
		code<=4'ha;
	end
	else if (flag==1) begin
		if (code==4'hf) begin
			code<=4'ha;
		end
		else begin
			code<=code+1;
		end
	end
	else begin
		code<=code;
	end
	
end
endmodule

module sequencer_num(clk, rst, flag, code);
input clk;
input rst;
input flag;
output reg [3:0] code;
initial
begin
	code=0;
end

always @(posedge clk or posedge rst) begin
	if (rst) begin
		// reset
		code<=0;
	end
	else if (flag==1) begin
		if (code==4'h9) begin
			code<=0;
		end
		else begin
			code<=code+1;
		end
	end
	else begin
		code<=code;
	end
	
end
endmodule

module sequencer_chi(clk, rst, flag, code);
input clk;
input rst;
input flag;
output reg [3:0] code;
initial
begin
	code=0;
end

always @(posedge clk or posedge rst) begin
	if (rst) begin
		// reset
		code<=0;
	end
	else if (flag==1) begin
		if (code==4'h4) begin
			code<=0;
		end
		else begin
			code<=code+1;
		end
	end
	else begin
		code<=code;
	end
	
end
endmodule

module decode_seg(clk_500, rst, code, digit_seg, digit_cath);
input clk_500;
input rst;
input [23:0] code;
output reg [7:0] digit_seg;
output reg [7:0] digit_cath;


reg [3:0] digit;

reg [2:0] cath_control;
initial
begin
	digit_cath=0;
	digit_seg=0;
	cath_control=0;
	digit=0;
end


always @(posedge clk_500 or posedge rst) begin
	if (rst) begin
		// reset
		cath_control<=0;
	end
	else if (cath_control==5) begin
		cath_control<=0;
	end
	else  begin
		cath_control<=cath_control+1;
	end
end


always @(posedge clk_500 or posedge rst) begin
	case (digit)
		4'h0:  digit_seg <= 8'b11111100; //??0~F
        4'h1:  digit_seg <= 8'b01100000;   
        4'h2:  digit_seg <= 8'b11011010;
        4'h3:  digit_seg <= 8'b11110010;
        4'h4:  digit_seg <= 8'b01100110;
        4'h5:  digit_seg <= 8'b10110110;
        4'h6:  digit_seg <= 8'b10111110;
        4'h7:  digit_seg <= 8'b11100000;
        4'h8:  digit_seg <= 8'b11111110;
        4'h9:  digit_seg <= 8'b11110110;
        4'hA:  digit_seg <= 8'b11101110;//??A
        4'hB:  digit_seg <= 8'b10011100;//??C
        4'hC:  digit_seg <= 8'b10011110;//??E
        4'hD:  digit_seg <= 8'b10001110;//??F
        4'hE:  digit_seg <= 8'b01101110;//??H
        4'hF:  digit_seg <= 8'b00011100;//??L
		default:;
	endcase
end

always @(posedge clk_500) begin
	case(cath_control)
	3'h0: begin
		digit_cath<=8'b1111_1110;
		digit<=code[3:0];
	end
	3'h1: begin
		digit_cath<=8'b1111_1101;
		digit<=code[7:4];
	end
	3'h2: begin
		digit_cath<=8'b1111_1011;
		digit<=code[11:8];
	end
	3'h3: begin
		digit_cath<=8'b1111_0111;
		digit<=code[15:12];
	end
	3'h4: begin
		digit_cath<=8'b1110_1111;
		digit<=code[19:16];
	end
	3'h5: begin
		digit_cath<=8'b1101_1111;
		digit<=code[23:20];
	end
	default:;
	endcase
end

endmodule

module decode_lattice(clk_500, rst, code, row, col);
input clk_500;//50M
input rst;
input [3:0] code;
output reg [7:0] row;
output reg [7:0] col;

reg [63:0] col_temp;

reg [2:0] cnt;
initial
begin
	cnt=0;
end
always @(posedge clk_500 or posedge rst) begin
	if (rst) begin
		// reset
		cnt<=0;
	end
	else  begin
		cnt<=cnt+1;
	end
end

always @(posedge clk_500) begin
	case(cnt)
	3'h0: begin
		row<=8'b1111_1110;
		col<=col_temp[7:0];
	end
	3'h1: begin
		row<=8'b1111_1101;
		col<=col_temp[15:8];
	end
	3'h2: begin
		row<=8'b1111_1011;
		col<=col_temp[23:16];
	end
	3'h3: begin
		row<=8'b1111_0111;
		col<=col_temp[31:24];
	end
	3'h4: begin
		row<=8'b1110_1111;
		col<=col_temp[39:32];
	end
	3'h5: begin
		row<=8'b1101_1111;
		col<=col_temp[47:40];
	end
	3'h6: begin
		row<=8'b1011_1111;
		col<=col_temp[55:48];
	end
	3'h7: begin
		row<=8'b0111_1111;
		col<=col_temp[63:56];
	end
	default:;
	endcase
end


always @(posedge clk_500) begin
	case(code)
        4'h0:  col_temp <= 64'b00010000_11111111_01111110_01000010_01111110_01010100_11010010_10110000;
        4'h1:  col_temp <= 64'b11000100_01011111_10010001_00011111_01010001_01010000_10100000_10100000;   
        4'h2:  col_temp <= 64'b00011000_11111111_00011000_01111110_00000000_01111110_01000010_01111110;
        4'h3:  col_temp <= 64'b00100100_11111111_00010000_11111100_01010110_10100101_01100100_11001100;
        4'h4:  col_temp <= 64'b01001001_01001001_01001001_01001001_01001001_01001001_01001001_10001001;
	endcase
end

endmodule


module flag_control(clk, rst, BTN_pulse, flag);
input clk;
input rst;
input [6:0] BTN_pulse;
output reg [6:0] flag;
initial begin
flag<=7'b111_1111;
end

always @(posedge clk or posedge rst ) begin
	if (rst) begin
		// reset
		flag <= 7'b111_1111;
	end
	else if (BTN_pulse[6]) begin
		flag[6]<=0;
	end
	else if (BTN_pulse[5] & flag[6] == 0) begin
		flag[5]<=0;
	end
	else if (BTN_pulse[4] & flag[5] == 0) begin
		flag[4]<=0;
	end
	else if (BTN_pulse[3] & flag[4] == 0) begin
		flag[3]<=0;
	end
	else if (BTN_pulse[2] & flag[3] == 0) begin
		flag[2]<=0;
	end
	else if (BTN_pulse[1] & flag[2] == 0) begin
		flag[1]<=0;
	end
	else if (BTN_pulse[0] & flag[1] == 0) begin
		flag[0]<=0;
	end
	else begin
		flag<=flag;
	end
end

endmodule


 module debounce (clk,rst,key,key_pulse);
 
        parameter       N  =  1;                      //?????????
 
	input             clk;
        input             rst;
        input 	[N-1:0]   key;                        //?????					
	output  [N-1:0]   key_pulse;                  //?????????	
 
        reg     [N-1:0]   key_rst_pre;                //??????????????????????
        reg     [N-1:0]   key_rst;                    //??????????????????????
 
        wire    [N-1:0]   key_edge;                   //???????????????????
 
        //?????????????????????????????????
        always @(posedge clk  or  posedge rst)
          begin
             if (rst) begin
                 key_rst <= {N{1'b1}};                //?????key_rst????1?{}???N?1
                 key_rst_pre <= {N{1'b1}};
             end
             else begin
                 key_rst <= key;                     //????????????key????key_rst,??key_rst????key_rst_pre
                 key_rst_pre <= key_rst;             //??????????????????key_rst????????key???key_rst_pre??????????key??
             end    
           end
 
        assign  key_edge = key_rst_pre & (~key_rst);//????????key????????key_edge????????????
 
        reg	[17:0]	  cnt;                       //???????????????12MHz????20ms?????????18????     
 
        //??20ms???????key_edge????????????
        always @(posedge clk or posedge rst)
           begin
             if(rst)
                cnt <= 18'h0;
             else if(key_edge)
                cnt <= 18'h0;
             else
                cnt <= cnt + 1'h1;
             end  
 
        reg     [N-1:0]   key_sec_pre;                //????????????
        reg     [N-1:0]   key_sec;                    
 
 
        //?????key????????????????????????????????????
        always @(posedge clk  or  posedge rst)
          begin
             if (rst) 
                 key_sec <= {N{1'b1}};                
             else if (cnt==18'h3ffff)
                 key_sec <= key;  
          end
       always @(posedge clk  or  posedge rst)
          begin
             if (rst)
                 key_sec_pre <= {N{1'b1}};
             else                   
                 key_sec_pre <= key_sec;             
         end      
       assign  key_pulse = key_sec_pre & (~key_sec);     
 
endmodule

module frequency_divider(clkin, clkout);
parameter N = 1;
input clkin;
output reg clkout;
reg [27:0] cnt;
initial 
begin
cnt=0;
clkout=0;
end
always @(posedge clkin) begin
	if (cnt==N) begin
		clkout <= !clkout;
		cnt <= 0;
	end
	else begin
		cnt <= cnt + 1;
	end
end
endmodule
