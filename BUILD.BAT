@echo off
call set65.bat
@del	err.txt	>nul

rem @c6502 -C -d  main.c
rem @if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_gamEng gamEng.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_comIn comIn.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_comOut comOut.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_datman datman.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_fsys fsys.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_VarMa varma.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_Fight Fight.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_FgtSub FightSub.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_FgtCot FgtCount.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_FgtPA FgtPkAi.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_PlcFun PublicFun.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_PaCC paccount.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_ShowF showface.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_CityE cityedit.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_CityC citycmd.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_CityCB citycmdb.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_CityCC citycmdc.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_CityCD citycmdd.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_CityCE citycmde.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_Tactic tactic.c
@if	errorlevel == 1 goto	errend

@c6502 -C -d -aa_InfD infdeal.c
@if	errorlevel == 1 goto	errend

rem @x6502 -q -d picture.asm
rem @if errorlevel == 1 goto ERREND
rem 
rem @c6502 -C -d -aa_debug debug.c
rem @if	errorlevel == 1 goto	errend
rem 
rem 
rem ------------------------------------------------------------
rem 
rem @c6502 -C -d  dummy dummy.c
rem @if	errorlevel == 1 goto	errend
rem 
rem @c6502 -C -d  -aa_size size.c
rem @if	errorlevel == 1 goto	errend
rem 
@del	test.tsk > nul
@link 	main.cfg >err.txt
@if	not exist test.tsk	goto	errend
dir 	test.tsk
call makebin.bat

@echo .
@echo .
@echo .		≤‚ ‘≥Ã–Ú  --------  ±‡“Î≥Ã–Ú÷¥––
@echo ==============================   OK !!! ==================================

@goto	normalend

:errend
type err.txt
pause
@goto	normalend

:normalend

