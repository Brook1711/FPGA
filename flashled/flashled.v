// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : flashled.v
// Module name  : flashled
// Author       : STEP
// Description  : segment initial
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// --------------------------------------------------------------------
// Module Function:流水灯的模块化设计
 
module flashled (clk,real_rst,led);
 
	input clk,real_rst;						
	output [7:0] led;				
   wire rst;
	assign rst=~real_rst;
        wire clk1h;                                     //定义一个中间变量，表示分频得到的时钟，用作计数器的触发        
 
        //例化分频器模块，产生一个1Hz时钟信号		
        divide #(.WIDTH(32),.N(50000000)) u2 (         //传递参数
			.clk(clk),
			.rst_n(rst),                   //例化的端口信号都连接到定义好的信号
			.clkout(clk1h)
			);                             
 
        //1Hz时钟上升沿触发循环赋值	
        reg [7:0] led;
        always@(posedge clk1h or negedge rst)
	begin
		if(!rst)
			led <= 8'b11111110;            // <=为非阻塞赋值
		else 
			led <= {led[0],led[7:1]};      //当时钟上升沿来一次，执行一次赋值，赋值内容是led[0]与led[7:1]重新拼接成8位赋给led，相当于循环右移
	end	
	endmodule
	// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : decode38.v
// Module name  : decode38
// Author       : STEP
// Description  : 3-8decode control LED
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// --------------------------------------------------------------------
// Module Function:利用3路开关的状态作为输出，通过3-8译码实现控制LED灯的显示。
 
module decode38 (sw,led);
 
	input [2:0] sw;							//开关输入信号，利用了其中3个开关作为3-8译码器的输入
	output [7:0] led;						//输出信号控制特定LED
 
        reg [7:0] led;                                                  //定义led为reg型变量，在always过程块中只能对reg型变量赋值
 
        //always过程块，括号中sw为敏感变量，当sw变化一次执行一次always中所有语句，否则保持不变
	always @ (sw)
	begin
		case(sw)                                                   //case语句，一定要跟default语句
			3'b000:	led=8'b0111_1111;                         //条件跳转，其中“_”下划线只是为了阅读方便，无实际意义  
			3'b001:	led=8'b1011_1111;                         //位宽'进制+数值是Verilog里常数的表达方法，进制可以是b、o、d、h（二、八、十、十六进制）
			3'b010:	led=8'b1101_1111;
			3'b011:	led=8'b1110_1111;
			3'b100:	led=8'b1111_0111;
			3'b101:	led=8'b1111_1011;
			3'b110: led=8'b1111_1101;
			3'b111:	led=8'b1111_1110;
			default: ;
		endcase
	end
 
endmodule
// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : divide.v
// Module name  : divide
// Author       : STEP
// Description  : clock divider
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// --------------------------------------------------------------------
// Module Function:任意整数时钟分频
 
module divide (	clk,rst_n,clkout);
 
        input 	clk,rst_n;                       //输入信号，其中clk连接到FPGA的C1脚，频率为12MHz
        output	clkout;                          //输出信号，可以连接到LED观察分频的时钟
 
        //parameter是verilog里常数语句
	parameter	WIDTH	= 3;             //计数器的位数，计数的最大值为 2**WIDTH-1
	parameter	N	= 5;             //分频系数，请确保 N < 2**WIDTH-1，否则计数会溢出
 
	reg 	[WIDTH-1:0]	cnt_p,cnt_n;     //cnt_p为上升沿触发时的计数器，cnt_n为下降沿触发时的计数器
	reg			clk_p,clk_n;     //clk_p为上升沿触发时分频时钟，clk_n为下降沿触发时分频时钟
 
	//上升沿触发时计数器的控制
	always @ (posedge clk or negedge rst_n )         //posedge和negedge是verilog表示信号上升沿和下降沿
                                                         //当clk上升沿来临或者rst_n变低的时候执行一次always里的语句
		begin
			if(!rst_n)
				cnt_p<=0;
			else if (cnt_p==(N-1))
				cnt_p<=0;
			else cnt_p<=cnt_p+1;             //计数器一直计数，当计数到N-1的时候清零，这是一个模N的计数器
		end
 
         //上升沿触发的分频时钟输出,如果N为奇数得到的时钟占空比不是50%；如果N为偶数得到的时钟占空比为50%
         always @ (posedge clk or negedge rst_n)
		begin
			if(!rst_n)
				clk_p<=0;
			else if (cnt_p<(N>>1))          //N>>1表示右移一位，相当于除以2去掉余数
				clk_p<=0;
			else 
				clk_p<=1;               //得到的分频时钟正周期比负周期多一个clk时钟
		end
 
        //下降沿触发时计数器的控制        	
	always @ (negedge clk or negedge rst_n)
		begin
			if(!rst_n)
				cnt_n<=0;
			else if (cnt_n==(N-1))
				cnt_n<=0;
			else cnt_n<=cnt_n+1;
		end
 
        //下降沿触发的分频时钟输出，和clk_p相差半个时钟
	always @ (negedge clk)
		begin
			if(!rst_n)
				clk_n<=0;
			else if (cnt_n<(N>>1))  
				clk_n<=0;
			else 
				clk_n<=1;                //得到的分频时钟正周期比负周期多一个clk时钟
		end
 
        assign clkout = (N==1)?clk:(N[0])?(clk_p&clk_n):clk_p;      //条件判断表达式
                                                                    //当N=1时，直接输出clk
                                                                    //当N为偶数也就是N的最低位为0，N（0）=0，输出clk_p
                                                                    //当N为奇数也就是N最低位为1，N（0）=1，输出clk_p&clk_n。正周期多所以是相与
endmodule     
	