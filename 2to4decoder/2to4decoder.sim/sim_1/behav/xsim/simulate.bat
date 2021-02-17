@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed Feb 17 12:44:01 +0530 2021
REM SW Build 3064766 on Wed Nov 18 09:12:45 MST 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim decoder_tb_behav -key {Behavioral:sim_1:Functional:decoder_tb} -tclbatch decoder_tb.tcl -view C:/Users/shiva/Desktop/DSD/2to4decoder/decoder_tb_behav.wcfg -log simulate.log"
call xsim  decoder_tb_behav -key {Behavioral:sim_1:Functional:decoder_tb} -tclbatch decoder_tb.tcl -view C:/Users/shiva/Desktop/DSD/2to4decoder/decoder_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
