#!/bin/bash

printf "\n"

if test -e projects; then
    rm -rf projects
fi

mkdir projects
cd projects

git clone https://github.com/operationspark/circularity
git clone https://github.com/operationspark/platformer
git clone https://github.com/operationspark/bouncing-box

if ! test -e platformer || ! test -e bouncing-box || ! test -e circularity; then
    printf "\nFAILURE: Some projects could not be accessed on GitHub. Please run the script again."
else
    #platformer
    cd platformer
    rm -rf .git* .master
    bower install

    #bouncing-box
    cd ../bouncing-box
    rm -rf .git* .master

    #circularity
    cd ../circularity
    rm -rf .git* .master
    bower install

    #test bower_components
    if ! test -e bower_components; then
        printf "\nFAILURE: bower install failed. Please run 'npm install -g opspark', then run this script again.\n"
    else
        printf "\nSUCCESS: All projects succesfully installed.\n"
    fi
fi
