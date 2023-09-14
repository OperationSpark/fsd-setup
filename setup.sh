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

# Delete scripts folder if one already exists, make or remake scripts folder
if test -e scripts; then
  rm -rf scripts
fi

mkdir .vscode
cp ./fsd-setup/settings.json .vscode

mkdir scripts
cp ./fsd-setup/get-readmes.sh scripts

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
  printf "\n------------------------------------------------------------"
  printf "\n------------------------------------------------------------"
  printf "\n-------------------IMPORTANT!! READ THIS--------------------"
  printf "\n------------------------------------------------------------"
  printf "\n------------------------------------------------------------\n"
  printf "\nFAILURE: Some projects could not be accessed on GitHub and have not been installed\n"
  printf "\n------------------------------------------------------------"
  printf "\n------------------------------------------------------------\n"
  printf "\nFirst, check that you have added integrations between gitpod and github at https://gitpod.io/integrations\n"
  printf "\nIf you did not already have integrations set up, you can re-run the previous command after connecting gitpod with GitHub\n"
  printf "\n------------------------------------------------------------\n"
  printf "\nIf you have already added integrations, it is likely that you have not joined the Operation Spark GitHub team\n"
  printf "\nCheck with your teacher to make sure that you have been invited to the GitHub team\n"
  printf "\nIf you do have an invitation, you can accept it at https://github.com/operationSpark/ and then re-run the previous command from the setup directions again\n"
  printf "\n------------------------------------------------------------\n"
  printf "\n------------------------------------------------------------\n\n"
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
  cp ../projects/first-website-hs/img/gitpod-preview-html-file.png ../project-instructions/img
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
