@echo off
pushd "%~dp0"
@tools\lite-client -C tools\global-config.json --cmd "sendfile new-wallet698983191-query.boc"
if errorlevel 1 (
	echo Error deploying wallet: %ERRORLEVEL%
	exit /b 1
)
popd