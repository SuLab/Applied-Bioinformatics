This file contains instructions for how to install R and jupyter on your computer. Instructions are provided for Windows 10 and MacOS.  If you do not have access to a Windows 10 or MacOS computer, contact the course instructors. 

## Mac

### 1. install python3 and jupyter using anaconda
* follow installation instructions for python3.6 at https://www.anaconda.com/download#macos .

### 2. install R
* download and install R-3.5.1.pkg from https://cran.r-project.org/bin/macosx/

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

* confirm the R kernel is successfully installed.  If you see the option for R as in the screenshot below, you are done!

![Jupyer R kernel view](https://user-images.githubusercontent.com/2635409/42073870-e6022f56-7b1d-11e8-9cbd-77e607599bdb.png)


## Windows Subsystem for Linux

**REMINDER:** You must have Windows 10 to be able to use the instructions below.  If you do not have access to a Windows 10 or MacOS computer, contact the course instructors.

### 1. install linux
* follow instructions at https://docs.microsoft.com/en-us/windows/wsl/install-win10
   * follow instructions for "WSL 1"
   * choose "Ubuntu 18.04 LTS" for your linux distribution

### 2. install juypter
* open an ubuntu window from the Windows start menu
* run the following commands
```
sudo apt update
sudo apt upgrade
sudo apt install python3 python3-pip ipython3
pip3 install jupyter
```

### 3. install R in linux subsystem
* execute these commands: 
```
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
curl -sL "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xE298A3A825C0D65DFD57CBB651716619E084DAB9" | sudo apt-key add
sudo apt update
sudo apt install r-base
```

### 4. install httr and git2r dependencies
```
sudo apt-get install libssl-dev libcurl4-gnutls-dev libxml2-dev
```

### 5. configure R kernel for jupyter
* launch R by typing `R` at the terminal prompt
* execute these commands:
```R
install.packages(c('repr','IRdisplay', 'evaluate', 'crayon', 'pbdZMQ', 'devtools', 'uuid', 'digest'), INSTALL_opts = '--no-lock')
devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec()
```

### 6. start jupyter
* From a bash prompt, execute `jupyter notebook`. You should see output like this: 
```
[I 09:26:38.967 NotebookApp] Serving notebooks from local directory: /usr/local/lib/python3.5/dist-packages
[I 09:26:38.967 NotebookApp] 0 active kernels
[I 09:26:38.967 NotebookApp] The Jupyter Notebook is running at:
[I 09:26:38.968 NotebookApp] http://localhost:8888/?token=4f0ec8297e0be4f8789fdcf422196717a3d9221e76e1a933
[I 09:26:38.968 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[W 09:26:38.972 NotebookApp] No web browser found: could not locate runnable browser.
[C 09:26:38.972 NotebookApp]

    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://localhost:8888/?token=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```
* launch jupyter by copying the URL shown *in your terminal window* into a browser. You should see something like this:
![Jupyter root view](https://user-images.githubusercontent.com/2635409/42073862-da786178-7b1d-11e8-93a6-ccab73c21b1e.png)

* confirm the R kernel is successfully installed.  If you see the option for R as in the screenshot below, you are done!

![Jupyer R kernel view](https://user-images.githubusercontent.com/2635409/42073870-e6022f56-7b1d-11e8-9cbd-77e607599bdb.png)

### (optional) install cmder
* download 'mini' version from http://cmder.net/
* uncompress and copy folder to `C:\Program Files\`
* add `C:\Program Files\cmder_mini` to your `Path` environment variable ([instructions](https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/))
   * you may have to log in/out for cmder to be accessible via your start menu, or just click the cmder file in windows explorer
* to open a bash window
   * within cmder, press control-T.  From the "startup command" menu, choose `{WSL::bash}` or `{bash::ubuntu}`
   * click the Start button
