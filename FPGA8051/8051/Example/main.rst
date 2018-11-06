                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _delay_ms
                                    109 ;--------------------------------------------------------
                                    110 ; special function registers
                                    111 ;--------------------------------------------------------
                                    112 	.area RSEG    (ABS,DATA)
      000000                        113 	.org 0x0000
                           000080   114 _P0	=	0x0080
                           000081   115 _SP	=	0x0081
                           000082   116 _DPL	=	0x0082
                           000083   117 _DPH	=	0x0083
                           000087   118 _PCON	=	0x0087
                           000088   119 _TCON	=	0x0088
                           000089   120 _TMOD	=	0x0089
                           00008A   121 _TL0	=	0x008a
                           00008B   122 _TL1	=	0x008b
                           00008C   123 _TH0	=	0x008c
                           00008D   124 _TH1	=	0x008d
                           000090   125 _P1	=	0x0090
                           000098   126 _SCON	=	0x0098
                           000099   127 _SBUF	=	0x0099
                           0000A0   128 _P2	=	0x00a0
                           0000A8   129 _IE	=	0x00a8
                           0000B0   130 _P3	=	0x00b0
                           0000B8   131 _IP	=	0x00b8
                           0000D0   132 _PSW	=	0x00d0
                           0000E0   133 _ACC	=	0x00e0
                           0000F0   134 _B	=	0x00f0
                                    135 ;--------------------------------------------------------
                                    136 ; special function bits
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           000080   140 _P0_0	=	0x0080
                           000081   141 _P0_1	=	0x0081
                           000082   142 _P0_2	=	0x0082
                           000083   143 _P0_3	=	0x0083
                           000084   144 _P0_4	=	0x0084
                           000085   145 _P0_5	=	0x0085
                           000086   146 _P0_6	=	0x0086
                           000087   147 _P0_7	=	0x0087
                           000088   148 _IT0	=	0x0088
                           000089   149 _IE0	=	0x0089
                           00008A   150 _IT1	=	0x008a
                           00008B   151 _IE1	=	0x008b
                           00008C   152 _TR0	=	0x008c
                           00008D   153 _TF0	=	0x008d
                           00008E   154 _TR1	=	0x008e
                           00008F   155 _TF1	=	0x008f
                           000090   156 _P1_0	=	0x0090
                           000091   157 _P1_1	=	0x0091
                           000092   158 _P1_2	=	0x0092
                           000093   159 _P1_3	=	0x0093
                           000094   160 _P1_4	=	0x0094
                           000095   161 _P1_5	=	0x0095
                           000096   162 _P1_6	=	0x0096
                           000097   163 _P1_7	=	0x0097
                           000098   164 _RI	=	0x0098
                           000099   165 _TI	=	0x0099
                           00009A   166 _RB8	=	0x009a
                           00009B   167 _TB8	=	0x009b
                           00009C   168 _REN	=	0x009c
                           00009D   169 _SM2	=	0x009d
                           00009E   170 _SM1	=	0x009e
                           00009F   171 _SM0	=	0x009f
                           0000A0   172 _P2_0	=	0x00a0
                           0000A1   173 _P2_1	=	0x00a1
                           0000A2   174 _P2_2	=	0x00a2
                           0000A3   175 _P2_3	=	0x00a3
                           0000A4   176 _P2_4	=	0x00a4
                           0000A5   177 _P2_5	=	0x00a5
                           0000A6   178 _P2_6	=	0x00a6
                           0000A7   179 _P2_7	=	0x00a7
                           0000A8   180 _EX0	=	0x00a8
                           0000A9   181 _ET0	=	0x00a9
                           0000AA   182 _EX1	=	0x00aa
                           0000AB   183 _ET1	=	0x00ab
                           0000AC   184 _ES	=	0x00ac
                           0000AF   185 _EA	=	0x00af
                           0000B0   186 _P3_0	=	0x00b0
                           0000B1   187 _P3_1	=	0x00b1
                           0000B2   188 _P3_2	=	0x00b2
                           0000B3   189 _P3_3	=	0x00b3
                           0000B4   190 _P3_4	=	0x00b4
                           0000B5   191 _P3_5	=	0x00b5
                           0000B6   192 _P3_6	=	0x00b6
                           0000B7   193 _P3_7	=	0x00b7
                           0000B0   194 _RXD	=	0x00b0
                           0000B1   195 _TXD	=	0x00b1
                           0000B2   196 _INT0	=	0x00b2
                           0000B3   197 _INT1	=	0x00b3
                           0000B4   198 _T0	=	0x00b4
                           0000B5   199 _T1	=	0x00b5
                           0000B6   200 _WR	=	0x00b6
                           0000B7   201 _RD	=	0x00b7
                           0000B8   202 _PX0	=	0x00b8
                           0000B9   203 _PT0	=	0x00b9
                           0000BA   204 _PX1	=	0x00ba
                           0000BB   205 _PT1	=	0x00bb
                           0000BC   206 _PS	=	0x00bc
                           0000D0   207 _P	=	0x00d0
                           0000D1   208 _F1	=	0x00d1
                           0000D2   209 _OV	=	0x00d2
                           0000D3   210 _RS0	=	0x00d3
                           0000D4   211 _RS1	=	0x00d4
                           0000D5   212 _F0	=	0x00d5
                           0000D6   213 _AC	=	0x00d6
                           0000D7   214 _CY	=	0x00d7
                                    215 ;--------------------------------------------------------
                                    216 ; overlayable register banks
                                    217 ;--------------------------------------------------------
                                    218 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        219 	.ds 8
                                    220 ;--------------------------------------------------------
                                    221 ; internal ram data
                                    222 ;--------------------------------------------------------
                                    223 	.area DSEG    (DATA)
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable items in internal ram 
                                    226 ;--------------------------------------------------------
                                    227 ;--------------------------------------------------------
                                    228 ; Stack segment in internal ram 
                                    229 ;--------------------------------------------------------
                                    230 	.area	SSEG
      000008                        231 __start__stack:
      000008                        232 	.ds	1
                                    233 
                                    234 ;--------------------------------------------------------
                                    235 ; indirectly addressable internal ram data
                                    236 ;--------------------------------------------------------
                                    237 	.area ISEG    (DATA)
                                    238 ;--------------------------------------------------------
                                    239 ; absolute internal ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area IABS    (ABS,DATA)
                                    242 	.area IABS    (ABS,DATA)
                                    243 ;--------------------------------------------------------
                                    244 ; bit data
                                    245 ;--------------------------------------------------------
                                    246 	.area BSEG    (BIT)
                                    247 ;--------------------------------------------------------
                                    248 ; paged external ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area PSEG    (PAG,XDATA)
                                    251 ;--------------------------------------------------------
                                    252 ; external ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area XSEG    (XDATA)
      000001                        255 _main_num_1_15:
      000001                        256 	.ds 2
      000003                        257 _main_DTrgb_1_15:
      000003                        258 	.ds 30
      000021                        259 _delay_ms_ms_1_17:
      000021                        260 	.ds 2
                                    261 ;--------------------------------------------------------
                                    262 ; absolute external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XABS    (ABS,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; external initialized ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XISEG   (XDATA)
                                    269 	.area HOME    (CODE)
                                    270 	.area GSINIT0 (CODE)
                                    271 	.area GSINIT1 (CODE)
                                    272 	.area GSINIT2 (CODE)
                                    273 	.area GSINIT3 (CODE)
                                    274 	.area GSINIT4 (CODE)
                                    275 	.area GSINIT5 (CODE)
                                    276 	.area GSINIT  (CODE)
                                    277 	.area GSFINAL (CODE)
                                    278 	.area CSEG    (CODE)
                                    279 ;--------------------------------------------------------
                                    280 ; interrupt vector 
                                    281 ;--------------------------------------------------------
                                    282 	.area HOME    (CODE)
      000000                        283 __interrupt_vect:
      000000 02 00 06         [24]  284 	ljmp	__sdcc_gsinit_startup
                                    285 ;--------------------------------------------------------
                                    286 ; global & static initialisations
                                    287 ;--------------------------------------------------------
                                    288 	.area HOME    (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 	.area GSFINAL (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.globl __sdcc_gsinit_startup
                                    293 	.globl __sdcc_program_startup
                                    294 	.globl __start__stack
                                    295 	.globl __mcs51_genXINIT
                                    296 	.globl __mcs51_genXRAMCLEAR
                                    297 	.globl __mcs51_genRAMCLEAR
                                    298 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  299 	ljmp	__sdcc_program_startup
                                    300 ;--------------------------------------------------------
                                    301 ; Home
                                    302 ;--------------------------------------------------------
                                    303 	.area HOME    (CODE)
                                    304 	.area HOME    (CODE)
      000003                        305 __sdcc_program_startup:
      000003 02 00 62         [24]  306 	ljmp	_main
                                    307 ;	return from main will return to caller
                                    308 ;--------------------------------------------------------
                                    309 ; code
                                    310 ;--------------------------------------------------------
                                    311 	.area CSEG    (CODE)
                                    312 ;------------------------------------------------------------
                                    313 ;Allocation info for local variables in function 'main'
                                    314 ;------------------------------------------------------------
                                    315 ;num                       Allocated with name '_main_num_1_15'
                                    316 ;DTrgb                     Allocated with name '_main_DTrgb_1_15'
                                    317 ;------------------------------------------------------------
                                    318 ;	main.c:6: void main()
                                    319 ;	-----------------------------------------
                                    320 ;	 function main
                                    321 ;	-----------------------------------------
      000062                        322 _main:
                           000007   323 	ar7 = 0x07
                           000006   324 	ar6 = 0x06
                           000005   325 	ar5 = 0x05
                           000004   326 	ar4 = 0x04
                           000003   327 	ar3 = 0x03
                           000002   328 	ar2 = 0x02
                           000001   329 	ar1 = 0x01
                           000000   330 	ar0 = 0x00
                                    331 ;	main.c:8: int num = 0;
      000062 90 00 01         [24]  332 	mov	dptr,#_main_num_1_15
      000065 E4               [12]  333 	clr	a
      000066 F0               [24]  334 	movx	@dptr,a
      000067 A3               [24]  335 	inc	dptr
      000068 F0               [24]  336 	movx	@dptr,a
                                    337 ;	main.c:9: unsigned char DTrgb[3][10] = {{0x00,0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80,0xFF},
      000069 90 00 03         [24]  338 	mov	dptr,#_main_DTrgb_1_15
      00006C F0               [24]  339 	movx	@dptr,a
      00006D 90 00 04         [24]  340 	mov	dptr,#(_main_DTrgb_1_15 + 0x0001)
      000070 04               [12]  341 	inc	a
      000071 F0               [24]  342 	movx	@dptr,a
      000072 90 00 05         [24]  343 	mov	dptr,#(_main_DTrgb_1_15 + 0x0002)
      000075 04               [12]  344 	inc	a
      000076 F0               [24]  345 	movx	@dptr,a
      000077 90 00 06         [24]  346 	mov	dptr,#(_main_DTrgb_1_15 + 0x0003)
      00007A 23               [12]  347 	rl	a
      00007B F0               [24]  348 	movx	@dptr,a
      00007C 90 00 07         [24]  349 	mov	dptr,#(_main_DTrgb_1_15 + 0x0004)
      00007F 23               [12]  350 	rl	a
      000080 F0               [24]  351 	movx	@dptr,a
      000081 90 00 08         [24]  352 	mov	dptr,#(_main_DTrgb_1_15 + 0x0005)
      000084 23               [12]  353 	rl	a
      000085 F0               [24]  354 	movx	@dptr,a
      000086 90 00 09         [24]  355 	mov	dptr,#(_main_DTrgb_1_15 + 0x0006)
      000089 23               [12]  356 	rl	a
      00008A F0               [24]  357 	movx	@dptr,a
      00008B 90 00 0A         [24]  358 	mov	dptr,#(_main_DTrgb_1_15 + 0x0007)
      00008E 23               [12]  359 	rl	a
      00008F F0               [24]  360 	movx	@dptr,a
      000090 90 00 0B         [24]  361 	mov	dptr,#(_main_DTrgb_1_15 + 0x0008)
      000093 23               [12]  362 	rl	a
      000094 F0               [24]  363 	movx	@dptr,a
      000095 90 00 0C         [24]  364 	mov	dptr,#(_main_DTrgb_1_15 + 0x0009)
      000098 74 FF            [12]  365 	mov	a,#0xff
      00009A F0               [24]  366 	movx	@dptr,a
      00009B 90 00 0D         [24]  367 	mov	dptr,#(_main_DTrgb_1_15 + 0x000a)
      00009E 74 FC            [12]  368 	mov	a,#0xfc
      0000A0 F0               [24]  369 	movx	@dptr,a
      0000A1 90 00 0E         [24]  370 	mov	dptr,#(_main_DTrgb_1_15 + 0x000b)
      0000A4 74 60            [12]  371 	mov	a,#0x60
      0000A6 F0               [24]  372 	movx	@dptr,a
      0000A7 90 00 0F         [24]  373 	mov	dptr,#(_main_DTrgb_1_15 + 0x000c)
      0000AA 74 DA            [12]  374 	mov	a,#0xda
      0000AC F0               [24]  375 	movx	@dptr,a
      0000AD 90 00 10         [24]  376 	mov	dptr,#(_main_DTrgb_1_15 + 0x000d)
      0000B0 74 F2            [12]  377 	mov	a,#0xf2
      0000B2 F0               [24]  378 	movx	@dptr,a
      0000B3 90 00 11         [24]  379 	mov	dptr,#(_main_DTrgb_1_15 + 0x000e)
      0000B6 74 66            [12]  380 	mov	a,#0x66
      0000B8 F0               [24]  381 	movx	@dptr,a
      0000B9 90 00 12         [24]  382 	mov	dptr,#(_main_DTrgb_1_15 + 0x000f)
      0000BC 74 B6            [12]  383 	mov	a,#0xb6
      0000BE F0               [24]  384 	movx	@dptr,a
      0000BF 90 00 13         [24]  385 	mov	dptr,#(_main_DTrgb_1_15 + 0x0010)
      0000C2 74 BE            [12]  386 	mov	a,#0xbe
      0000C4 F0               [24]  387 	movx	@dptr,a
      0000C5 90 00 14         [24]  388 	mov	dptr,#(_main_DTrgb_1_15 + 0x0011)
      0000C8 74 E0            [12]  389 	mov	a,#0xe0
      0000CA F0               [24]  390 	movx	@dptr,a
      0000CB 90 00 15         [24]  391 	mov	dptr,#(_main_DTrgb_1_15 + 0x0012)
      0000CE 74 FE            [12]  392 	mov	a,#0xfe
      0000D0 F0               [24]  393 	movx	@dptr,a
      0000D1 90 00 16         [24]  394 	mov	dptr,#(_main_DTrgb_1_15 + 0x0013)
      0000D4 74 F6            [12]  395 	mov	a,#0xf6
      0000D6 F0               [24]  396 	movx	@dptr,a
      0000D7 90 00 17         [24]  397 	mov	dptr,#(_main_DTrgb_1_15 + 0x0014)
      0000DA 74 11            [12]  398 	mov	a,#0x11
      0000DC F0               [24]  399 	movx	@dptr,a
      0000DD 90 00 18         [24]  400 	mov	dptr,#(_main_DTrgb_1_15 + 0x0015)
      0000E0 23               [12]  401 	rl	a
      0000E1 F0               [24]  402 	movx	@dptr,a
      0000E2 90 00 19         [24]  403 	mov	dptr,#(_main_DTrgb_1_15 + 0x0016)
      0000E5 74 0C            [12]  404 	mov	a,#0x0c
      0000E7 F0               [24]  405 	movx	@dptr,a
      0000E8 90 00 1A         [24]  406 	mov	dptr,#(_main_DTrgb_1_15 + 0x0017)
      0000EB 74 1E            [12]  407 	mov	a,#0x1e
      0000ED F0               [24]  408 	movx	@dptr,a
      0000EE 90 00 1B         [24]  409 	mov	dptr,#(_main_DTrgb_1_15 + 0x0018)
      0000F1 74 35            [12]  410 	mov	a,#0x35
      0000F3 F0               [24]  411 	movx	@dptr,a
      0000F4 90 00 1C         [24]  412 	mov	dptr,#(_main_DTrgb_1_15 + 0x0019)
      0000F7 74 2B            [12]  413 	mov	a,#0x2b
      0000F9 F0               [24]  414 	movx	@dptr,a
      0000FA 90 00 1D         [24]  415 	mov	dptr,#(_main_DTrgb_1_15 + 0x001a)
      0000FD 74 3F            [12]  416 	mov	a,#0x3f
      0000FF F0               [24]  417 	movx	@dptr,a
      000100 90 00 1E         [24]  418 	mov	dptr,#(_main_DTrgb_1_15 + 0x001b)
      000103 74 22            [12]  419 	mov	a,#0x22
      000105 F0               [24]  420 	movx	@dptr,a
      000106 90 00 1F         [24]  421 	mov	dptr,#(_main_DTrgb_1_15 + 0x001c)
      000109 74 35            [12]  422 	mov	a,#0x35
      00010B F0               [24]  423 	movx	@dptr,a
      00010C 90 00 20         [24]  424 	mov	dptr,#(_main_DTrgb_1_15 + 0x001d)
      00010F 74 3F            [12]  425 	mov	a,#0x3f
      000111 F0               [24]  426 	movx	@dptr,a
                                    427 ;	main.c:13: while(1)
      000112                        428 00102$:
                                    429 ;	main.c:15: P1 = DTrgb[0][num];     //控制流水灯
      000112 90 00 01         [24]  430 	mov	dptr,#_main_num_1_15
      000115 E0               [24]  431 	movx	a,@dptr
      000116 FE               [12]  432 	mov	r6,a
      000117 A3               [24]  433 	inc	dptr
      000118 E0               [24]  434 	movx	a,@dptr
      000119 FF               [12]  435 	mov	r7,a
      00011A EE               [12]  436 	mov	a,r6
      00011B 24 03            [12]  437 	add	a,#_main_DTrgb_1_15
      00011D F5 82            [12]  438 	mov	dpl,a
      00011F EF               [12]  439 	mov	a,r7
      000120 34 00            [12]  440 	addc	a,#(_main_DTrgb_1_15 >> 8)
      000122 F5 83            [12]  441 	mov	dph,a
      000124 E0               [24]  442 	movx	a,@dptr
      000125 F5 90            [12]  443 	mov	_P1,a
                                    444 ;	main.c:16: P2 = DTrgb[1][num];     //控制数码管
      000127 EE               [12]  445 	mov	a,r6
      000128 24 0D            [12]  446 	add	a,#(_main_DTrgb_1_15 + 0x000a)
      00012A F5 82            [12]  447 	mov	dpl,a
      00012C EF               [12]  448 	mov	a,r7
      00012D 34 00            [12]  449 	addc	a,#((_main_DTrgb_1_15 + 0x000a) >> 8)
      00012F F5 83            [12]  450 	mov	dph,a
      000131 E0               [24]  451 	movx	a,@dptr
      000132 F5 A0            [12]  452 	mov	_P2,a
                                    453 ;	main.c:17: P3 = DTrgb[2][num] | 0xC0; //控制rgb彩灯
      000134 EE               [12]  454 	mov	a,r6
      000135 24 17            [12]  455 	add	a,#(_main_DTrgb_1_15 + 0x0014)
      000137 F5 82            [12]  456 	mov	dpl,a
      000139 EF               [12]  457 	mov	a,r7
      00013A 34 00            [12]  458 	addc	a,#((_main_DTrgb_1_15 + 0x0014) >> 8)
      00013C F5 83            [12]  459 	mov	dph,a
      00013E E0               [24]  460 	movx	a,@dptr
      00013F FD               [12]  461 	mov	r5,a
      000140 74 C0            [12]  462 	mov	a,#0xc0
      000142 4D               [12]  463 	orl	a,r5
      000143 F5 B0            [12]  464 	mov	_P3,a
                                    465 ;	main.c:18: num++; num %=10;
      000145 90 00 01         [24]  466 	mov	dptr,#_main_num_1_15
      000148 74 01            [12]  467 	mov	a,#0x01
      00014A 2E               [12]  468 	add	a,r6
      00014B F0               [24]  469 	movx	@dptr,a
      00014C E4               [12]  470 	clr	a
      00014D 3F               [12]  471 	addc	a,r7
      00014E A3               [24]  472 	inc	dptr
      00014F F0               [24]  473 	movx	@dptr,a
      000150 90 00 01         [24]  474 	mov	dptr,#_main_num_1_15
      000153 E0               [24]  475 	movx	a,@dptr
      000154 FE               [12]  476 	mov	r6,a
      000155 A3               [24]  477 	inc	dptr
      000156 E0               [24]  478 	movx	a,@dptr
      000157 FF               [12]  479 	mov	r7,a
      000158 90 00 23         [24]  480 	mov	dptr,#__modsint_PARM_2
      00015B 74 0A            [12]  481 	mov	a,#0x0a
      00015D F0               [24]  482 	movx	@dptr,a
      00015E E4               [12]  483 	clr	a
      00015F A3               [24]  484 	inc	dptr
      000160 F0               [24]  485 	movx	@dptr,a
      000161 8E 82            [24]  486 	mov	dpl,r6
      000163 8F 83            [24]  487 	mov	dph,r7
      000165 12 01 B8         [24]  488 	lcall	__modsint
      000168 E5 82            [12]  489 	mov	a,dpl
      00016A 85 83 F0         [24]  490 	mov	b,dph
      00016D 90 00 01         [24]  491 	mov	dptr,#_main_num_1_15
      000170 F0               [24]  492 	movx	@dptr,a
      000171 E5 F0            [12]  493 	mov	a,b
      000173 A3               [24]  494 	inc	dptr
      000174 F0               [24]  495 	movx	@dptr,a
                                    496 ;	main.c:19: delay_ms(1000);
      000175 90 03 E8         [24]  497 	mov	dptr,#0x03e8
      000178 12 01 7D         [24]  498 	lcall	_delay_ms
      00017B 80 95            [24]  499 	sjmp	00102$
                                    500 ;------------------------------------------------------------
                                    501 ;Allocation info for local variables in function 'delay_ms'
                                    502 ;------------------------------------------------------------
                                    503 ;ms                        Allocated with name '_delay_ms_ms_1_17'
                                    504 ;i                         Allocated with name '_delay_ms_i_2_19'
                                    505 ;j                         Allocated with name '_delay_ms_j_2_19'
                                    506 ;------------------------------------------------------------
                                    507 ;	main.c:23: void delay_ms(unsigned int ms)
                                    508 ;	-----------------------------------------
                                    509 ;	 function delay_ms
                                    510 ;	-----------------------------------------
      00017D                        511 _delay_ms:
      00017D AF 83            [24]  512 	mov	r7,dph
      00017F E5 82            [12]  513 	mov	a,dpl
      000181 90 00 21         [24]  514 	mov	dptr,#_delay_ms_ms_1_17
      000184 F0               [24]  515 	movx	@dptr,a
      000185 EF               [12]  516 	mov	a,r7
      000186 A3               [24]  517 	inc	dptr
      000187 F0               [24]  518 	movx	@dptr,a
                                    519 ;	main.c:25: while(ms--)
      000188 90 00 21         [24]  520 	mov	dptr,#_delay_ms_ms_1_17
      00018B E0               [24]  521 	movx	a,@dptr
      00018C FE               [12]  522 	mov	r6,a
      00018D A3               [24]  523 	inc	dptr
      00018E E0               [24]  524 	movx	a,@dptr
      00018F FF               [12]  525 	mov	r7,a
      000190                        526 00107$:
      000190 8E 04            [24]  527 	mov	ar4,r6
      000192 8F 05            [24]  528 	mov	ar5,r7
      000194 1E               [12]  529 	dec	r6
      000195 BE FF 01         [24]  530 	cjne	r6,#0xff,00129$
      000198 1F               [12]  531 	dec	r7
      000199                        532 00129$:
      000199 90 00 21         [24]  533 	mov	dptr,#_delay_ms_ms_1_17
      00019C EE               [12]  534 	mov	a,r6
      00019D F0               [24]  535 	movx	@dptr,a
      00019E EF               [12]  536 	mov	a,r7
      00019F A3               [24]  537 	inc	dptr
      0001A0 F0               [24]  538 	movx	@dptr,a
      0001A1 EC               [12]  539 	mov	a,r4
      0001A2 4D               [12]  540 	orl	a,r5
      0001A3 60 0A            [24]  541 	jz	00118$
                                    542 ;	main.c:31: while (--j);
      0001A5 7D 70            [12]  543 	mov	r5,#0x70
      0001A7 7C 28            [12]  544 	mov	r4,#0x28
      0001A9                        545 00101$:
      0001A9 DD FE            [24]  546 	djnz	r5,00101$
                                    547 ;	main.c:32: }  while (--i);
      0001AB DC FC            [24]  548 	djnz	r4,00101$
      0001AD 80 E1            [24]  549 	sjmp	00107$
      0001AF                        550 00118$:
      0001AF 90 00 21         [24]  551 	mov	dptr,#_delay_ms_ms_1_17
      0001B2 EE               [12]  552 	mov	a,r6
      0001B3 F0               [24]  553 	movx	@dptr,a
      0001B4 EF               [12]  554 	mov	a,r7
      0001B5 A3               [24]  555 	inc	dptr
      0001B6 F0               [24]  556 	movx	@dptr,a
      0001B7 22               [24]  557 	ret
                                    558 	.area CSEG    (CODE)
                                    559 	.area CONST   (CODE)
                                    560 	.area XINIT   (CODE)
                                    561 	.area CABS    (ABS,CODE)
