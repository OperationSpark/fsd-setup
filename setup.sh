#!/bin/bash

printf "\n"

# create required html and css files
if ! test -e index.html; then
  touch index.html
fi

if ! test -e portfolio.html; then
  touch portfolio.html
fi

if ! test -e style.css; then
  touch style.css
fi

# Delete vscode folder if one already exists, make or remake vscode folder
if test -e .vscode; then
  rm -rf .vscode
fi

mkdir .vscode
mv ./fsd-setup/settings.json .vscode

mkdir scripts
mv ./fsd-setup/get-readmes.sh scripts

# Delete projects folder if one already exists, make/remake and cd into projects dir
if test -e projects; then
  rm -rf projects
fi

mkdir projects
cd projects

# Clone all FSD projects into projects directory
git clone https://github.com/operationspark/first-website-hs
git clone https://github.com/operationspark/portfolio-hs
git clone https://github.com/operationspark/circularity
git clone https://github.com/operationspark/platformer-neo platformer
git clone https://github.com/operationspark/bouncing-box

if ! test -e first-website-hs || ! test -e portfolio-hs || ! test -e platformer || ! test -e bouncing-box || ! test -e circularity; then
  printf "\nFAILURE: Some projects could not be accessed on GitHub. Please run the script again."
else
  # Check for existing project-instructions folder, creates directory if missing
  if ! test -e project-instructions; then
    mkdir ../project-instructions
  fi

  # Copy READMEs for projects into project-instructions dir
  cp first-website-hs/README.md ../project-instructions/first-website.md
  cp portfolio-hs/README.md ../project-instructions/portfolio.md
  cp platformer/README.md ../project-instructions/platformer.md
  cp bouncing-box/README.md ../project-instructions/bouncing-box.md
  cp circularity/README.md ../project-instructions/circularity.md

  # add images used in READMEs into project-instructions/img folder
  cd ../project-instructions
  mkdir img

  cp ../projects/first-website-hs/img/gitpod-open-file.png ../project-instructions/img
  cp ../projects/first-website-hs/img/preview-html-file.png ../project-instructions/img
  cp ../projects/first-website-hs/img/second-shot.png ../project-instructions/img
  cp ../projects/first-website-hs/img/gitpod-toggle-preview.png ../project-instructions/img

  cp ../projects/bouncing-box/img/bouncing-box.gif ../project-instructions/img
  cp ../projects/bouncing-box/img/collisionDetection.png ../project-instructions/img
  cp ../projects/bouncing-box/img/changeOfSpeed.png ../project-instructions/img
  cp ../projects/bouncing-box/img/wiggle_bug.gif ../project-instructions/img

  cp ../projects/circularity/img/screenBounds.png ../project-instructions/img

  cd ../projects

  #Cleanup first website and portfolio
  rm -rf first-website-hs portfolio-hs

  #platformer
  cd platformer
  rm -rf .git* .master

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
