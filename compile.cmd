@echo off
pushd "%~dp0"
mkdir auto >nul 2>nul
echo Compiling wallet code
tools\func -PS -o auto/multiplicator-highload-wallet-code.fif stdlib.fc multiplicator-highload-wallet-code.fc 
if errorlevel 1 (
	echo Error compiling wallet: %%ERRORLEVEL%
	exit /b 1
)
echo Preparing wallet deploy code
tools\fift -Itools\fift\lib -s new-multiplocator-highload-wallet.fif 0 698983191 new-wallet >info.txt
if errorlevel 1 (
	echo Error preparing deploy BOC: %%ERRORLEVEL%
	exit /b 1
)
echo Done.
popd