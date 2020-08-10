# Set up your Github / Gitpod Workspace

Below, you will find instructions for creating a github repository and setting up your Gitpod workspace. Read all instructions carefully before moving on. If you get stuck, encounter an issue, or simply need help, reach out to your instructor immediately.

## 1) Create a GitHub repository 

Instructions for github repository go here

## 2) Create a Gitpod Workspace

<img style="width: 400px" src="https://github.com/OperationSpark/fsd-setup/blob/master/create-workspace-gitpod.png?raw=true">

1. Go to: <a href=https://gitpod.io>gitpod.io</a>
2. Scroll down to "Get Started" (see above)
3. Paste your GitHub url in the space
4. Click on **Start Workspace**

## 3) Install your projects

<img style="width: 400px" src="https://github.com/OperationSpark/fsd-setup/blob/master/bash-terminal.png?raw=true">

With your workspace open, find bash terminal and enter these commands (see above)
* `git clone https://github.com/OperationSpark/fsd-setup.git`
* `npm install -g opspark`
* `chmod +x script/setup.sh`
* `./script/setup.sh`

Enter your username and your password.

## 4) Pin Your workspace

1. Go to <a href=https://gitpod.io/workspaces/>https://gitpod.io/workspaces/</a>
2. Click on the Pin icon next to your workspace (see below) 

<img src="https://github.com/OperationSpark/fsd-setup/blob/master/pin-workspace.png?raw=true">

# Other useful features of Gitpod

## To Preview Your Code
Install Live Server
Right Click on `index.html` of the project you are working on and select "Preview with Live Server"

## To Share your Code

Workspace --> Share Running Workspace

## To Push Code

Go to: <a href=https://gitpod.io/access-control>gitpod.io/access-control</a>

<img style="width: 400px" src="https://github.com/OperationSpark/fsd-setup/blob/master/authorize-github-push.png?raw=true">

Check the **"write public repos"** box (see the picture above below)

Return to your workspace and find the bash terminal.

Then, enter these commands
`git add .`
`git commit -m "describe your changes here"`
`git push`
