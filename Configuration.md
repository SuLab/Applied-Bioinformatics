# Configuration: Complete the following one week before class ~1 hr
#### Contact Instructors and TAs for any obstacles encountered -- do this via course Slack channel access > email
This file contains instructions for how to install terminal (for command line), jupyter notebook (as part of anaconda, which includes python 3), and R (as well as the R kernel for jupyter notebook) on your personal computer. Instructions are provided based on MacOS or Windows 10.  If you do not have access to a MacOS or Windows 10 computer, contact the course instructors. 

## Mac OS *note to scroll to bottom after completing steps 1-5 ['Confirm installations']

### 1. install python3 and jupyter using anaconda
* follow installation instructions for python3.6 at https://www.anaconda.com/download#macos <br><br>
*Note: You can install jupyter to a pre-existing conda environment via
```
jupyterPath <- "/miniconda/envs/env_name/bin"
jupyterPath2 <- paste(Sys.getenv("HOME")
"/miniconda/envs/env_name/bin",sep="")
```
then continue with the rest of the instructions below

### 2. install R
* download and install R-4.0.2.pkg from https://cran.r-project.org/bin/macosx/

### 3. install xcode-select
* open a terminal and run `xcode-select --install`

### 4. configure R kernel
* launch R
* execute these commands
```
jupyterPath <- "/anaconda3/bin"
jupyterPath2 <- paste(Sys.getenv("HOME"),"/anaconda3/bin",sep="")
Sys.setenv(PATH = paste(Sys.getenv("PATH"),jupyterPath,jupyterPath2,sep=":"))
install.packages(c('repr', 'IRdisplay', 'evaluate', 'crayon', 'pbdZMQ', 'devtools', 'uuid', 'digest'))
devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec()
```

### 5. start jupyter
* launch terminal
* From the bash prompt, execute `jupyter notebook`. You should see output like this: 
```
$ jupyter notebook
[I 17:13:34.085 NotebookApp] JupyterLab beta preview extension loaded from /anaconda3/lib/python3.6/site-packages/jupyterlab
[I 17:13:34.085 NotebookApp] JupyterLab application directory is /anaconda3/share/jupyter/lab
[I 17:13:34.091 NotebookApp] Serving notebooks from local directory: /Users/sulab
[I 17:13:34.091 NotebookApp] 0 active kernels
[I 17:13:34.091 NotebookApp] The Jupyter Notebook is running at:
[I 17:13:34.091 NotebookApp] http://localhost:8888/?token=8db8050d83f22c9fa642269693264052b92c4863b715937b
[I 17:13:34.091 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 17:13:34.095 NotebookApp] 
    
    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://localhost:8888/?token=8db8050d83f22c9fa642269693264052b92c4863b715937b&token=8db8050d83f22c9fa642269693264052b92c4863b715937b
[I 17:13:34.495 NotebookApp] Accepting one-time-token-authenticated connection from ::1
[I 17:13:38.193 NotebookApp] Creating new notebook in 
[I 17:13:38.200 NotebookApp] Writing notebook-signing key to /Users/sulab/Library/Jupyter/notebook_secret
[I 17:13:38.864 NotebookApp] Kernel started: 3769ef70-39e0-4796-9d8d-fab6fb710baf
[I 17:13:39.366 NotebookApp] Adapting to protocol v5.0 for kernel 3769ef70-39e0-4796-9d8d-fab6fb710baf
[I 17:13:48.603 NotebookApp] Starting buffering for 3769ef70-39e0-4796-9d8d-fab6fb710baf:2ae497a1c403450a8418b96d78d1cd05
```

* jupyter should have automatically started in a browser. You should see something like this:
![Jupyter root view](https://user-images.githubusercontent.com/2635409/42073862-da786178-7b1d-11e8-93a6-ccab73c21b1e.png)

* confirm the R kernel is successfully installed.  If you see the option for R as in the screenshot below, you are done!<br>
**Note** If you encounter an error relating to 'installspec()', try [the following site](https://medium.com/@kyleake/how-to-install-r-in-jupyter-with-irkernel-in-3-steps-917519326e41)

![Jupyer R kernel view](https://user-images.githubusercontent.com/2635409/42073870-e6022f56-7b1d-11e8-9cbd-77e607599bdb.png)


## Windows R and RStudio Installation

### 1. Download and install [base R](https://cran.rstudio.com/bin/windows/base/R-4.2.1-win.exe)
* TL;DR - accept the defaults and click "Next" on everything
* Ensure to 'check' RTools4.2. If you forget, you can add it by installing it from [here](https://cran.rstudio.com/bin/windows/Rtools/rtools42/files/rtools42-5253-5107-signed.exe) otherwise you will run into a lot of errors.


### 2. Download and install [RStudio](https://www.rstudio.com/products/rstudio/download/#download)
* Ensure you have at least 772.1 MB available on the drive you are installing RStudio

### 3. Download and [Install Git for Windows](https://github.com/git-for-windows/git/releases/download/v2.37.1.windows.1/Git-2.37.1-64-bit.exe)
* Accept the defaults. RStudio for Windows prefers for Git to be installed at C:/Program Files (The default)

### 4. Launch RStudio
* in R console, execute the commands in console:
```R
install.packages(c('packages_to_install'))
```

### 5. OPTIONAL. Install Windows Subsystem for Linux
**REMINDER:** You must have Windows 10 to be able to use the instructions below.  If you do not have access to a Windows 10 or MacOS computer, contact the course instructors.

#### 1. install linux
* follow instructions at https://docs.microsoft.com/en-us/windows/wsl/install-win10
   * follow instructions for "WSL 1"
   * choose "Ubuntu 20.04 LTS" for your linux distribution. This should be the default option if not specified.


#### 2. install R in linux subsystem
* execute these commands from [r-project.org](https://cloud.r-project.org/bin/linux/ubuntu/#install-r): 
```
sudo apt update -qq
sudo apt install --no-install-recommends software-properties-common dirmngr
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
sudo apt install --no-install-recommends r-base
```

#### 4. install httr and git2r dependencies
* httr is an R package that parallels Requests library in Python
* git2r dependency is R export to git
```
sudo apt-get install libssl-dev libcurl4-gnutls-dev libxml2-dev
```


## Confirm installations
* Are you able to identify and open R console on your computer? Y/N
* Are you able to identify and open RStudio on your computer? Y/N
* In RStudio terminal, Type `R --version` and check if you have *v4.2.1 Funny Looking Kid* installed 
* Did you make a Github account in the instance you don't already have one? Y/N <br>
If not, follow the instructions [here](https://www.wikihow.com/Create-an-Account-on-GitHub) don't get caught up in the details after, we'll be covering that :)<br>
* Do you have access to our TSRI #abcb-2022 Slack channel to ask us troubleshooting questions on any of the above? Y/N
