module brook(clk_50m, button, switch, led, digit_seg, digit_cath, rgb_led1, rgb_led2);

input clk_50m;        //50MHz的时钟信号
input [1:0] button;   //2个按键，按下为高电平
input [7:0] switch;   //8位拨码开关
output reg [7:0] led; //8个流水灯，共阴极
output reg [7:0] digit_seg; //七段数码管显示内容，共阴极
output [1:0] digit_cath;    //两个数码管位选控制信号
output reg [2:0] rgb_led1;  //RGB LED1，共阳极
output reg [2:0] rgb_led2;  //RGB LED2，共阳极

reg [31:0] div_count;  //32位
reg cathode_sel; //数码管位选标志位
wire [7:0] digit_display; //连接8位拨码开关
wire [3:0] digit; //一组拨码开关位置
wire reset;  //复位信号
wire clk_de; //时钟信号

assign reset = button[0];  //按键0定义为复位信号
assign clk_de = button[1]; //按键1按下暂停计数
assign digit_display = switch; //连接拨码开关

//带异步复位的32位计数器，均为上升沿触发
always @(posedge clk_50m, posedge reset) //posedge检测上升沿
begin
    if(reset)  //复位信号到来，32位计数器清零
        div_count <= 0;
    else
    begin
        if(!clk_de) //若按键1按下，则暂停计数
            div_count <= div_count + 1;
        else
            div_count <= div_count;
    end
end

 //七段数码管显示模块，根据一组拨码开关位置决定显示内容
always @(*) 
begin
    case (digit)
        4'h0:   digit_seg <= 8'b11111100; //显示0
        4'h1:   digit_seg <= 8'b01100000; //显示1 
        4'h2:   digit_seg <= 8'b11011010;
        4'h3:   digit_seg <= 8'b11110010;
        4'h4:   digit_seg <= 8'b01100110;
        4'h5:   digit_seg <= 8'b10110110;
        4'h6:   digit_seg <= 8'b10111110;
        4'h7:   digit_seg <= 8'b11100000;
        4'h8:   digit_seg <= 8'b11111110;
        4'h9:   digit_seg <= 8'b11110110;
        4'hA:   digit_seg <= 8'b11101110; //显示A
        4'hB:   digit_seg <= 8'b00111110;
        4'hC:   digit_seg <= 8'b10011100;
        4'hD:   digit_seg <= 8'b01111010;
        4'hE:   digit_seg <= 8'b10011110;
        4'hF:   digit_seg <= 8'b10001110; //显示F
    endcase
end

// 两个七段数码管位选刷新模块
always @(posedge div_count[10], posedge reset)
begin
	if(reset)
		cathode_sel <= 0;
	else
	begin
		cathode_sel <= ~cathode_sel;
	end
end

assign digit_cath = {cathode_sel, ~cathode_sel}; //组装七段数码管位选信号

//用拨码开关高4位和低4位分别控制两个七段数码管的显示
assign digit = cathode_sel ? digit_display[7:4] : digit_display[3:0];

//RGB LED控制模块
always @(posedge div_count[24], posedge reset)
begin
	if(reset)
	begin
		rgb_led1 <= 3'b110;
		rgb_led2 <= 3'b011;
	end
	else
	begin
		rgb_led1 <= {rgb_led1[1:0], rgb_led1[2]};
		rgb_led2 <= {rgb_led2[1:0], rgb_led2[2]};
	end
end

// 流水灯控制模块
always @(posedge div_count[22], posedge reset)
begin
	if(reset)
		led <= 8'b10101010;
	else
	begin
		led <= ~led;
	end
end

endmodule