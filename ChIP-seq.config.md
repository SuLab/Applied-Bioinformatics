# ChIP-seq configuration

#### Huitian Diao (Yolanda)
#### Oct 29, 2018


![Bioconda](https://bioconda.github.io/bioconda-utils/_images/bioconda.png)
### _So easy, your grandfather could do this..._

## 1. Bioconda
### 1.0 Install conda (If you never installed conda on your computer)
* [Mac& Linux Miniconda Install instructions](https://conda.io/miniconda.html)
* [Windows Miniconda Install instructions](https://www.scivision.co/anaconda-python-with-windows-subsystem-for-linux/)
* [Bioconda Install instructions](http://ddocent.com//bioconda/)

### 1.1 [sra-tools](https://bioconda.github.io/recipes/sra-tools/README.html)
```
conda install sra-tools # Install sra-tools (include fastq-dump)
#conda update sra-tools # Update sra-tools
```

### 1.2 [FastQC](https://bioconda.github.io/recipes/fastqc/README.html)
```
conda install fastqc # Install fastqc
#conda update fastqc # Update fastqc
```

### 1.3 [MultiQC](https://bioconda.github.io/recipes/multiqc/README.html)
```
conda install multiqc # Install multiqc
#conda update multiqc # Update multiqc
```

### 1.4 [Samtools](https://bioconda.github.io/recipes/samtools/README.html)
```
conda install samtools # Install samtools
#conda update samtools # Update samtools
```

### 1.5 [Trim-galore](https://bioconda.github.io/recipes/trim-galore/README.html)
```
conda install trim-galore # Install trim-galore
#conda update trim-galore # Update trim-galore
# Usage: trim_galore (can not call it by trim-galore :D)
```

### 1.6 [Bowtie2](https://bioconda.github.io/recipes/bowtie2/README.html)
```
conda install bowtie2 # Install bowtie2
#conda update bowtie2 # Update bowtie2
```

### 1.7 [MACS2](https://bioconda.github.io/recipes/macs2/README.html)
```
conda install macs2 # Update macs2
#conda update macs2 # Update macs2
```

#### 1.8 [USCS-bedgraphtobigwig](https://bioconda.github.io/recipes/ucsc-bedgraphtobigwig/README.html)
```
conda install ucsc-bedgraphtobigwig # Install bedgraphtobigwig
#conda update ucsc-bedgraphtobigwig # Update bedgraphtobigwig
```

![Bioconductor](https://www.bioconductor.org/images/logo_bioconductor.gif)
### _So easy, your grandfather could do this too!!!_

## 2. R packages through Bioconductor
### 2.1 [ChIPQC](https://bioconductor.org/packages/release/bioc/html/ChIPQC.html)
```
## try http:// if https:// URLs are not supported
source("https://bioconductor.org/biocLite.R")
biocLite("ChIPQC")
```

### 2.2 [ChIPseeker](https://bioconductor.org/packages/release/bioc/html/ChIPseeker.html)
```
## try http:// if https:// URLs are not supported
source("https://bioconductor.org/biocLite.R")
biocLite("ChIPseeker")
```

### 2.3 [ClusterProfiler](https://bioconductor.org/packages/release/bioc/html/clusterProfiler.html)
```
## try http:// if https:// URLs are not supported
source("https://bioconductor.org/biocLite.R")
biocLite("clusterProfiler")
```



