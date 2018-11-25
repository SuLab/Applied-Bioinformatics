# ChIP-seq configuration

#### Huitian Diao (Yolanda)
#### Oct 29, 2018


![Bioconda](https://bioconda.github.io/bioconda-utils/_images/bioconda.png)
### _So easy, your grandfather could do this..._

## 1. Bioconda
### 1.0 Install bioconda (If you never installed conda on your computer)
* [Mac&Linux Miniconda Install instructions](https://conda.io/miniconda.html)
* [Windows Miniconda Install instructions](https://www.scivision.co/anaconda-python-with-windows-subsystem-for-linux/) (You can ignore the "Setup Spyder IDE" part)
* [Mac&Linux&Windows Bioconda Install instructions](http://ddocent.com//bioconda/) (You can ignore the "dDocent" part)

### 1.1 Setting up python2.7 virtual environment
* [Managing conda environment](https://conda.io/docs/user-guide/tasks/manage-environments.html)
```
conda create -n chip python=2.7
source activate chip # To activate the virtual environment
```
* __All the following steps are under virtual environment `chip`__. When virtual environment is activated, you can see __`(chip)`__ at the start of your command prompt
* For using jupyter notebook in virtual environment, everything should be the same except before you type in `jupyter notebook`, use `source activate chip`

## 2. Tool installation
* 2.1 [sra-tools](https://bioconda.github.io/recipes/sra-tools/README.html)
* 2.2 [FastQC](https://bioconda.github.io/recipes/fastqc/README.html)
* 2.3 [MultiQC](https://bioconda.github.io/recipes/multiqc/README.html)
* 2.4 [Samtools](https://bioconda.github.io/recipes/samtools/README.html)
* 2.5 [Trim-galore](https://bioconda.github.io/recipes/trim-galore/README.html)
* 2.6 [Bowtie2](https://bioconda.github.io/recipes/bowtie2/README.html)
* 2.7 [MACS2](https://bioconda.github.io/recipes/macs2/README.html)
* 2.8 [USCS-bedgraphtobigwig](https://bioconda.github.io/recipes/ucsc-bedgraphtobigwig/README.html)
* 2.9 [Rpy2](https://anaconda.org/r/rpy2)

```
conda install sra-tools fastqc multiqc samtools trim-galore bowtie2 macs2 ucsc-bedgraphtobigwig
# Usage: trim_galore (can not call it by trim-galore :D)
```


## 3. R package installation

### Option #1: Through Bioconda

#### [ChIPQC](https://anaconda.org/bioconda/bioconductor-chipqc) and [DEseq2](https://anaconda.org/bioconda/bioconductor-deseq2)
```
conda install -c bioconda bioconductor-chipqc bioconductor-deseq2
```

#### [ChIPseeker](https://bioconda.github.io/recipes/bioconductor-chipseeker/README.html) and [ClusterProfiler](https://bioconda.github.io/recipes/bioconductor-clusterprofiler/README.html)
```
conda install bioconductor-chipseeker bioconductor-clusterprofiler
```

### Option #2: Through Bioconductor

If the installation through conda did not work for the bioconductor packages, please start a R kernel in jupyer notebook and then enter the following commands,

```
install.packages("BiocManager")
BiocManager::install(c("ChIPQC", "ChIPseeker", "clusterProfiler", "DESeq2"))
```
