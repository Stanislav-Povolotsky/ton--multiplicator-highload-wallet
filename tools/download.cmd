curl -L -O https://github.com/ton-blockchain/ton/releases/download/v2023.11/func.exe
curl -L -O https://github.com/ton-blockchain/ton/releases/download/v2023.11/fift.exe
curl -L -O https://github.com/ton-blockchain/ton/releases/download/v2023.11/lite-client.exe
curl -L -O https://github.com/ton-blockchain/ton/releases/download/v2023.11/tonlib-cli.exe
curl -O https://ton.org/global-config.json
mkdir mnemo-to-pk
curl -L -o ./mnemo-to-pk/ton-mnemonic-pk.html https://raw.github.com/ton-defi-org/ton-offline-transaction/master/ton-mnemonic-pk.html
curl -L -o ./mnemo-to-pk/tonweb-mnemonic.js   https://raw.github.com/ton-defi-org/ton-offline-transaction/master/tonweb-mnemonic.js

rem toncli
rem https://docs.ton.org/develop/smart-contracts/sdk/toncli
rem python -m pip install toncli