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

## 2. Package installation

### 2.0 [Jupyter](https://anaconda.org/anaconda/jupyter) (If it is not already installed under conda)
```
conda install -c anaconda jupyter
```

### 2.1 [sra-tools](https://bioconda.github.io/recipes/sra-tools/README.html)
```
conda install sra-tools # Install sra-tools (include fastq-dump)
#conda update sra-tools # Update sra-tools
```

### 2.2 [FastQC](https://bioconda.github.io/recipes/fastqc/README.html)
```
conda install fastqc # Install fastqc
#conda update fastqc # Update fastqc
```

### 2.3 [MultiQC](https://bioconda.github.io/recipes/multiqc/README.html)
```
conda install multiqc # Install multiqc
#conda update multiqc # Update multiqc
```

### 2.4 [Samtools](https://bioconda.github.io/recipes/samtools/README.html)
```
conda install samtools # Install samtools
#conda update samtools # Update samtools
```

### 2.5 [Trim-galore](https://bioconda.github.io/recipes/trim-galore/README.html)
```
conda install trim-galore # Install trim-galore
#conda update trim-galore # Update trim-galore
# Usage: trim_galore (can not call it by trim-galore :D)
```

### 2.6 [Bowtie2](https://bioconda.github.io/recipes/bowtie2/README.html)
```
conda install bowtie2 # Install bowtie2
#conda update bowtie2 # Update bowtie2
```

### 2.7 [MACS2](https://bioconda.github.io/recipes/macs2/README.html)
```
conda install macs2 # Update macs2
#conda update macs2 # Update macs2
```

#### 2.8 [USCS-bedgraphtobigwig](https://bioconda.github.io/recipes/ucsc-bedgraphtobigwig/README.html)
```
conda install ucsc-bedgraphtobigwig # Install bedgraphtobigwig
#conda update ucsc-bedgraphtobigwig # Update bedgraphtobigwig
```

## 3. R packages through Bioconda

### 3.0 [r-essentials](https://docs.anaconda.com/anaconda/user-guide/tasks/use-r-language/)
```
conda install r-essentials
conda install mro-base
```

### 3.1 [ChIPQC](https://anaconda.org/bioconda/bioconductor-chipqc)
```
conda install -c bioconda bioconductor-chipqc
```

### 3.2 [ChIPseeker](https://bioconda.github.io/recipes/bioconductor-chipseeker/README.html)
```
conda install bioconductor-chipseeker
```

### 3.3 [ClusterProfiler](https://bioconda.github.io/recipes/bioconductor-clusterprofiler/README.html)
```
conda install bioconductor-clusterprofiler
```

### 2.4 [DEseq2](https://anaconda.org/bioconda/bioconductor-deseq2)
```
conda install -c bioconda bioconductor-deseq2
```

