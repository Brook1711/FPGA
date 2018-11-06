    #include <8051.h>  
    #include <stdio.h>

    void delay_ms(unsigned int ms);

    void main()
    {
        int num = 0;
        unsigned char DTrgb[3][10] = {{0x00,0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80,0xFF},
                                                          {0xFC,0x60,0xDA,0xF2,0x66,0xB6,0xBE,0xE0,0xFE,0xF6},
                                                          {0x11,0x22,0x0c,0x1e,0x35,0x2b,0x3f,0x22,0x35,0x3f}};  
			                  
        while(1)
        {
           P1 = DTrgb[0][num];     //控制流水灯
           P2 = DTrgb[1][num];     //控制数码管
           P3 = DTrgb[2][num] | 0xC0; //控制rgb彩灯
           num++; num %=10;
           delay_ms(1000);
        }
    }

void delay_ms(unsigned int ms)
{
        while(ms--)
        {
            unsigned char i, j;
             i = 40;   j = 112;
            do
            {
               while (--j);
            }  while (--i);
        }
}
