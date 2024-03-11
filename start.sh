#!/bin/bash

repoURL="https://github.com/PUKAN223/TicTacToe.git"
targetFolder="TicTacToe"

if [ ! -d "$targetFolder" ]; then
    npm install
    echo "Cloning TicTacToe repository..."
    git clone "$repoURL" "$targetFolder"
    echo "Repository cloned successfully."
    cd "./$targetFolder" || exit
    npm install
    echo "Please Run Again to Use TicTacToe"
    read -rp "Press Enter to continue..."
else
    node "./$targetFolder/script/TicTacToe.js"
    read -rp "Press Enter to continue..."
fi
