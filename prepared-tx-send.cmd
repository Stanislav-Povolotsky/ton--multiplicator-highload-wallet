@echo off
pushd "%~dp0"
@tools\lite-client -C tools\global-config.json --cmd "sendfile orders.boc"
if errorlevel 1 (
	echo Error sending message: %ERRORLEVEL%
	exit /b 1
)
popd