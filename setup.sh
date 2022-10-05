#!/bin/bash

printf "\n"

if test -e projects; then
  rm -rf projects
fi

mkdir projects
cd projects

git clone https://github.com/operationspark/first-website-hs
git clone https://github.com/operationspark/portfolio-hs
git clone https://github.com/operationspark/circularity
git clone https://github.com/operationspark/platformer
git clone https://github.com/operationspark/bouncing-box

if ! test -e first-website-hs || ! test -e portfolio-hs || ! test -e platformer || ! test -e bouncing-box || ! test -e circularity; then
  printf "\nFAILURE: Some projects could not be accessed on GitHub. Please run the script again."
else
  #check for existing project-instructions folder
  if ! test -e circularity then
    mkdir ../project-instructions
  fi

  #READMEs
  cp first-website-hs/README.md ../project-instructions/first-website.md
  cp portfolio-hs/README.md ../project-instructions/portfolio.md
  cp platformer/README.md ../project-instructions/platformer.md
  cp bouncing-box/README.md ../project-instructions/bouncing-box.md
  cp circularity/README.md ../project-instructions/circularity.md

  #Cleanup first website and portfolio
  rm -rf first-website-hs portfolio-hs

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
