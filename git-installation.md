# Installing git

You will be following the links and instructions at https://git-scm.com/downloads

## MacOs
* follow the "homebrew" instructions, which boil down to executing these two commands in your Terminal application:
    * `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
    * `brew install git`
       
## Ubuntu Linux
* Execute `apt-get install git`.  If you see any errors, try `sudo apt-get install git`.

## Windows
* The installer will ask you what you'd like to make the default editor. Unless you know the difference between the different options, select "Nano"
* Select the "Override the default branch name for new repositories" option. Leave the default of "main".
* Choose all other defaults.

# Configuring git in RStudio
Installation instructions are derived from [Computing for Social Sciences at The University of Chicago](https://cfss.uchicago.edu/setup/what-is-git/ "Computing for Social Sciences at The University of Chicago").

## Configuring SSH
* In R console install the following packages:
```R
install.packages(c("usethis", "gitcreds", "gh"))
```

* Tell R who you are:
	* `user.name` can be your real name ('First', 'Last') or your github username
	* `user.email` needs to be your github email address

```R
usethis::use_git_config(user.name = "Your Name", user.email = "youremail@scripps.edu")
```

* create a SSH key by running the following command in R console:
	* allows you to push updates to github without typing in your password
	* Clck 'yes' when prompted to generate a new SSH key
	```R
credentials::ssh_setup_github()
```

* Configure github by pasting your key into your account.
	* When prompted to open your browser to paste your key into github, click yes 
	* Name your key in `Title`. You can label it whatever you want. I named mine "RStudio"
	* Paste your public key to github and click "Add SSH key"
	
## Creating a repository for your RProject
* There are a couple methods to create a repository (repo). (1) You can create a repo online using GitHub. (2) You can create a repo using Terminal on your computer and sync it to your GitHub. Either way, you need to login to GitHub and create a 'new' repository. This can be done [here](https://github.com/new). Make sure when you copy and paste your remote repo location, select the SSH hyperlink.

### Creating a repo online using GitHub and push to it
* Navigate to where you want to pull your remote repository to in Terminal.  I'm using fluffy-octo-journey as my repo in this example.
```bash
git remote add origin git@github.com:turoger/fluffy-octo-journey.git
git branch -M main
git push -u origin main
```

### Creating a repo locally using Terminal and push to remote GitHub
* Navigate to where your project files are in Terminal 
Initialize git and add it to your remote repository on GitHub. I'm using fluffy-octo-journey as my repo in this example.

```bash
git init
git commit -m "First commit to GitHub for my RProject"
git remote add origin
git branch -M main
git remote add origin git@github.com:turoger/fluffy-octo-journey.git
git push -u origin main
```
