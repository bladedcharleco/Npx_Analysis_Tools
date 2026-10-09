
:: You can call TPrime three ways:
::
:: 1) > TPrime cmd-line-parameters
:: 2) > runit.bat cmd-line-parameters
:: 3a) Edit parameters in runit.bat, then call it ...
:: 3b) > runit.bat
::
:: This script effectively says:
:: "If there are no parameters sent to runit.bat, call TPrime
:: with the parameters hard coded here, else, pass all of the
:: parameters through to TPrime."
::

@echo off
@setlocal enableextensions
@cd /d "%~dp0"

set LOCALARGS=-syncperiod=1.0 ^
-tostream=M:\test_Stim_g0\test_Stim_g0_imec0\catgt_test_Stim_g0\test_Stim_g0_tcat.imec0.ap.xd_384_6_500.txt ^
-fromstream=1,M:\test_Stim_g0\test_Stim_g0_imec0\catgt_test_Stim_g0\test_Stim_g0_tcat.obx0.obx.xd_13_6_500.txt ^
-events=1,M:\test_Stim_g0\test_Stim_g0_imec0\catgt_test_Stim_g0\M296_3_obx_stim_pulses_seconds.txt,M:\test_Stim_g0\test_Stim_g0_imec0\catgt_test_Stim_g0\M296_3_obx_stim_pulses_seconds_tprime.txt

if [%1]==[] (set ARGS=%LOCALARGS%) else (set ARGS=%*)

%~dp0TPrime %ARGS%

