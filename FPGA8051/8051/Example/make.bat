@echo SDCC script by Duan.
@pause
@echo Cleaning.
@del main.hex main.ihx main.lk main.lst main.map main.mem main.rel main.rst main.sym
@pause
@echo step.1 compiling main.c.
@sdcc --model-large -c main.c 
@echo step.2 linking main.rel.
@sdcc main.rel --model-large -mmcs51 --stack-loc 0x60 --stack-size 0x20 --iram-size 128 --xram-size 2048
@echo step.3 packing main.ihx.
@packihx main.ihx > main.hex 
@pause
