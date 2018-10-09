# Installing packages and programs required for Applied Bioinformatics course: RNA-seq analysis
### Jerry Zak
#### 8 Oct 2018

Please follow these instructions and complete the steps by Thursday's class (11 October 2018).

Unless stated otherwise, the instructions below should work for Mac and Win users. Please contact me or the other TAs via Slack if you run into problems.
NB: You need at least 10 GB of free hard drive space, and 8 GB RAM is recommended. For those with less than 8 GB RAM, follow instructions in part 3 to build single-chromosome indices.
### 1. Install R packages
_Windows/Ubuntu_ users, first run in terminal (Cmder session {WSL::bash}):
```
sudo apt install libxml2-dev
```
All users, open an R console (from terminal or Jupyter) and type the commands below. Please note that the installer might first prompt you to install required packages which may need to be compiled from source. Ask for help if you get stuck.
```
install.packages(c("RColorBrewer", "gplots", "ggplot2", "pheatmap", "plyr", "dplyr", "fastqcr"))

source("https://bioconductor.org/biocLite.R")
biocLite(pkgs = c("genefilter", "biomaRt", "DESeq2"))
```
NB: If you see a message that one of the libraries is protected, say 'No' to using a personal library. Such message normally means that you already have the package installed.

### 2. Download SRA toolkit and the raw reads for SRR5454079
NB: Make sure you have at least 3 GB of free disk space available.

_Mac users_: Download the appropriate version of NCBI SRA Tools from https://www.ncbi.nlm.nih.gov/sra/docs/toolkitsoft/

_Windows/Ubuntu_ users: Using terminal from outside of the `Applied Bioinformatics` folder (e.g. your home directory), run
```
wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-ubuntu64.tar.gz
```
Mac and Win shared instructions:
From the folder in which you downloaded the .tar.gz file, run
```
tar -zxvf [put your sra filename here.tar.gz]
```
Now you should have a folder named `sratoolkit.2.9.2-ubuntu64` or the equivalent for Mac. If you can see this folder, run
```
./sratoolkit.2.9.2-ubuntu64/bin/fastq-dump --split-files SRR5454079
```
This will take a while. Depending on your setup and connection speed it can take over an hour.

### 3. Download HISAT and the human reference indices
First, we need to download a software called HISAT
* *If you are a Mac user*, go to https://ccb.jhu.edu/software/hisat2/index.shtml and find the box labeled Releases. Download the Mac version by clicking the link.  
* *If you are an ubuntu/WSL user*, open a terminal, the execute this command `wget ftp://ftp.ccb.jhu.edu/pub/infphilo/hisat2/downloads/hisat2-2.1.0-Linux_x86_64.zip`. (NB: if you get an error using `wget`, try replacing that with `curl -O`.  Same applies for all subsequent `wget` commands.) 

For either operating system, unzip the file (this can be done using the `unzip` command from terminal) and keep the folder in a location where you can find it.

Next, Download the HISAT2 reference indices for the human genome 
```
wget ftp://ftp.ccb.jhu.edu/pub/infphilo/hisat2/data/grch38.tar.gz
```
This will take a while, please allow the download to complete, the index file is about 4 GB.  (NB: again, if you get an error using `wget`, try replacing that with `curl -O`.)
Once the download is complete, create a folder called `HISAT_indices` somewhere you can find it, and move the file there, then extract:
```
mv grch38.tar.gz HISAT_indices/
cd HISAT_indices
tar -zxvf HISAT_indices/grch38.tar.gz
```

__If you have less than 8 GB RAM__ follow these instructions:
* In terminal
```
wget ftp://ftp.ensembl.org/pub/release-94/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.chromosome.20.fa.gz
gunzip Homo_sapiens.GRCh38.dna.chromosome.20.fa.gz
```
* Next, create a directory in your preferred location called HISAT_indices, then take note of the absolute path to your HISAT2 folder above and run the following (with the path adjusted to your system):
```
/path/to/hisat2-2.1.0/hisat2-build -f Homo_sapiens.GRCh38.dna.chromosome.20.fa HISAT_indices/grch38_chr20
```
* The building procedure should conclude with a message about the `Total time for call to driver() for forward index:`. Now you have built indices for the human chromosome 20. 

### 4. Install samtools
Use a terminal for the following steps.
On a _Mac_:
```
brew tap homebrew/science
brew install samtools
```

On _Win/Ubuntu_:
```
sudo apt install samtools
```

### 5. Install HTSeq
_Mac_ users, execute:
```
pip install HTSeq
```

Alternatively, follow these instructions: https://htseq.readthedocs.io/en/release_0.10.0/install.html#installation-on-macos-x

_Win/Ubuntu_ users, run from terminal:
```
sudo apt-get install build-essential python2.7-dev python-numpy python-matplotlib python-pysam python-htseq
```
Check your HTSeq version using
```
pip freeze | grep HTSeq
```
You should be running version 0.11 (although 0.6 and above should work). If the command above gives no output, try the following:
```
sudo pip uninstall htseq
sudo pip install htseq
pip freeze | grep HTSeq
```

### 6. Check the location of the newly installed software
Using the bash commands introduced in Unit 1, reassure yourself that you can 
- find the location of the folder containing the SRA Toolkit (starts with `sratoolkit`)
- find the location of the downloaded FASTQ file (SRR5454079_1.fastq)
- be able to move SRR5454079_1.fastq to your homework folder (or the `data` subfolder of the homework folder)
- find the location of the HISAT2 program files and indices
