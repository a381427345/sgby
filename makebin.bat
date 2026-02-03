Filecomb test.bin /f make.cfg
move test.bin ..\emu\test.bin
@if errorlevel == 1 goto	errendinf
cd ..\emu
call a600.exe
cd ..\os

@goto	normalend

:errendinf:
@echo .Warning: test.bin update is unsuccessful!
@echo .

:normalend
