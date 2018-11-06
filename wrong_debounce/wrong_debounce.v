// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : top.v
// Module name  : top
// Author       : STEP
// Description  : control led through the button
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// --------------------------------------------------------------------
// Module Function:按键控制led翻转，未做消抖
 
module wrong_debounce(
		key,          //按键输入
		rst,          //复位输入
		led           //led输出
		);
 
	input key,rst;
	output wire led;
	assign led=key;
 

endmodule