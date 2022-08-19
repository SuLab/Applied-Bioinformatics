## Configuration: Complete the following one week before class ~1 hr
This file contains instructions for how to install R, RStudio, and git on your personal computer. The instructions below should work for most recent versions of MacOS, Windows, and Ubuntu.  If you do not have a computer with one of those operating systems, or if you have any problems, please contact the course instructurs via the course Slack channel.

### Install R
* Follow installation links and instructions at https://cran.rstudio.com/. The current version is R-4.2.1. 
* In general, select the defaults
* **Windows**
   * select the option for "Install R for the first time"
   * Ensure to 'check' RTools4.2. If you forget, you can add it by installing it from [here](https://cran.rstudio.com/bin/windows/Rtools/rtools42/files/rtools42-5253-5107-signed.exe) otherwise you will run into a lot of errors.

### Install RStudio
* Download the installer for your OS at https://www.rstudio.com/products/rstudio/download/#download

### Install git
* Basically you will follow links and instructions at https://git-scm.com/downloads
* **MacOs**
    * follow the "homebrew" instructions, which boil down to executing these two commands in your Terminal application:
       * `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
       * `brew install git`
* **Ubuntu Linux**: Execute `apt-get install git`.  If you see any errors, try `sudo apt-get install git`

### RECOMMENDED FOR WINDOWS USERS: Install Windows Subsystem for Linux (WSL)
* Follow instructions in https://docs.microsoft.com/en-us/windows/wsl/install
