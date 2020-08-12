# Set up your Github / Gitpod Workspace

Below, you will find instructions for creating a github repository and setting up your Gitpod workspace. Read all instructions carefully before moving on. If you get stuck, encounter an issue, or simply need help, reach out to your instructor immediately.

## 0) Pre-requisites:

Before continuing on to the next steps, make sure that you have done the following:
* Created a personal email account on Gmail.
* Created an account on Greenlight
* Created an account on Github
* Joined the Operation Spark Github Team. You can find your invitation to join this team by going to github.com/OperationSpark.

## 1) Create a GitHub repository 

Click here to open a new browser tab and create create a new GitHub repository:
<a href="https://github.com/new" target="_blank">Right Click --> Open Link In New Tab </a>.

### NOTE: If you're not signed-in to GitHub, you might see a web page that says 404 (This is not the web page you are looking for).  Just sign-in to GitHub on this page and you will be forwarded to the _create new repository_ page.

Follow these steps and see the screenshot below to create a new repository.

**Click to enlarge image**
<img src="https://raw.githubusercontent.com/magdalenemc/first-website/edit1/img/create-repo.png">

1. On the Create New Repository page, in the box for **Repository name**, name the repository like:

    `your-github-username.github.io`
    
    replacing `your-github-username` with you actual GitHub username.  MAKE SURE your username is spelled correctly, otherwise you'll have problems **(See A)**.
    

2. Enter a description for your repository in the **Description** box, like `My own awesome website!' **(See B)**.

3. Select the **Public** radio button to allow anyone to see this repository **(See C)**.

4. Check the **Initialize this repository with a README** box **(See D)**.

5. Click the **Add .gitignore** button, and Search for "Node". Click on "Node" from the dropdown. **(See E)**.
    
6. Double check that you have followed these instructions properly. Then click **Create Repository** **(See F)**.

Awesome, you created your repository!

## 2) Create a Gitpod Workspace

<img style="width: 400px" src="https://github.com/OperationSpark/fsd-setup/blob/master/create-workspace-gitpod.png?raw=true">

1. Go to: <a href=https://gitpod.io>gitpod.io</a>
2. Scroll down to "Get Started" (see above)
3. Paste your GitHub url in the space
4. Click on **Start Workspace**

## 3) Install your projects

<img style="width: 400px" src="https://github.com/OperationSpark/fsd-setup/blob/master/bash-terminal.png?raw=true">

With your workspace open, find bash terminal and enter these commands one at a time (see above)
* `git clone https://github.com/OperationSpark/fsd-setup.git`
* `npm install -g opspark`
* `chmod +x fsd-setup/setup.sh`
* `./fsd-setup/setup.sh`
* `rm -rf ./fsd-setup

Enter your username and your password.

## 4) Pin Your workspace

1. Go to <a href=https://gitpod.io/workspaces/>https://gitpod.io/workspaces/</a>
2. Click on the Pin icon next to your workspace (see below) 

<img src="https://github.com/OperationSpark/fsd-setup/blob/master/pin-workspace.png?raw=true">

## 5) Allow Push Access

Go to: <a href=https://gitpod.io/access-control>gitpod.io/access-control</a>

<img style="width: 400px" src="https://github.com/OperationSpark/fsd-setup/blob/master/authorize-github-push.png?raw=true">

Check the **"write public repos"** box (see the picture above below)

# Other useful features of Gitpod

## To Preview Your Code
Install Live Server
Right Click on `index.html` of the project you are working on and select "Preview with Live Server"

## To Share your Code

Workspace --> Share Running Workspace

## To Push Code

Return to your workspace and find the bash terminal.

Then, enter these commands

`git add .`

`git commit -m "describe your changes here"`

`git push`
