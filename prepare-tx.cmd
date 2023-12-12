@echo off
pushd "%~dp0"
set seq_num=1
set multiplicator=10
tools\fift -Itools\fift\lib -s multiplicator-highload-wallet-tx-comment.fif new-wallet 698983191 %seq_num% %multiplicator% orders.txt --no-bounce orders >orders-tx-info.txt
if errorlevel 1 (
	echo Error preparing orders message: %ERRORLEVEL%
	exit /b 1
)
type orders-tx-info.txt
popd