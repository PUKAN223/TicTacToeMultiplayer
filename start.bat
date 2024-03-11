@echo off
setlocal

set repoURL=https://github.com/PUKAN223/TicTacToe.git
set targetFolder=TicTacToe

if not exist %targetFolder% (
    echo Cloning TicTacToe repository...
    git clone %repoURL% %targetFolder%
    echo Repository cloned successfully.
    cd ./TicTacToe
    npm i
    echo Please Run Again to Use TicTacToe
    pause
) else (
    tsc -p ./TicTacToe/tsconfig.json -m commonjs
    node ./TicTacToe/script/TicTacToe.js
    pause
)

endlocal
