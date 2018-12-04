# Applied-Bioinformatics
Student course material for the Applied Bioinformatics course at Scripps Research for fall 2018.

## Prerequisites

The only requirement is that you have access to a latop running Windows 10 or macOS, and that you complete:
* [installation/configuration instructions](Configuration.md)  
* [installation/RNAseq_configuration](Configuration_RNAseq.md)
* [installation/ChIP-seq_configuration](ChIP-seq.config.md)

## Course materials

### Module 1: Bash, Juypter and git

#### 1.1 Course intro: 
* [slides](https://docs.google.com/presentation/d/1B8mOhQOvRb7aK2-l8y5oEoz9bmhj8zg7KY-tuXVWwOo)

#### 1.2 Bash basics
* [slides](https://docs.google.com/presentation/d/1ugVZpA1dBf-STiqx_rB6aMMM2ymirv50XBYTLjajKq8)

#### 1.3 Jupyter basics
* [slides](https://docs.google.com/presentation/d/1uSNAH_kLjUuNCB38JPH1dZNcPRGB4xTnRw7s6sLZSQc)
* [notebook](Module-1_bash-jupyter-git/1.3_jupyter-basics.ipynb)

#### 1.4 File manipulation
* [slides](https://docs.google.com/presentation/d/1v99KZHKdKDSsS3D3gerX_NpfoKEm6eO3a5euqxbZ0UA)
* [notebook](Module-1_bash-jupyter-git/1.4_working-with-files.ipynb)

#### 1.5 Redirection and pipes
* [slides](https://docs.google.com/presentation/d/1X88Zjiyo7LfJVVAKhvJKNKEsJMLgkPYQtCXHzkWg3uE)
* [notebook](Module-1_bash-jupyter-git/1.5_redirection-and-pipes.ipynb)

#### 1.6 awk
* [slides](https://docs.google.com/presentation/d/1ejePOkEU7FVSqXUPtpM89neLXP7nR24R9Cb24QSyeqw)
* [notebook](Module-1_bash-jupyter-git/1.6_awk.ipynb)

#### 1.7 git
* [how to find your homeworks again...](Module-1_bash-jupyter-git/git_reset_local_repo.ipynb)
* [slides](https://drive.google.com/open?id=11QUQRnKRmCQukB0pL82x9Kf7x5zyjEHe)
* [notebook](Module-1_bash-jupyter-git/1.7_for_loop_and_string_replacement.ipynb)

#### 1.8 looping
* [notebook](Module-1_bash-jupyter-git/1.8_find_git_stringreplacement_questions.ipynb)


#### Yolanda's handouts
* Bash handout 1 [notebook](Module-1_bash-jupyter-git/week1-1_bash.md)
* Bash handout 2 [notebook](Module-1_bash-jupyter-git/week1-2_bash.md)
* Bash handout 3 [notebook](Module-1_bash-jupyter-git/week2-1_bash.md)

### Module 2: R
#### 2.1 R objects
* [slides](https://github.com/SuLab/Applied-Bioinformatics/raw/master/Unit1-module2-R/R-1.pptx)
* [notebook](Unit1-module2-R/R.intro.1.ipynb)
* [Practice 2.1 sample answer](Unit1-module2-R/R.intro.1.practice2.1.ipynb)

#### 2.2 R data operations
* [slides](https://github.com/SuLab/Applied-Bioinformatics/raw/master/Unit1-module2-R/R-2.pptx)
* [notebook](Unit1-module2-R/R.intro.2.ipynb)
* [Practice 2.2 sample answer](Unit1-module2-R/R.intro.1.practice2.2.ipynb)
* [Practice 2.3 sample answer](Unit1-module2-R/R.intro.1.practice2.3.ipynb)

#### 2.3 and 2.4 Flowchart & review
* [slides](https://github.com/SuLab/Applied-Bioinformatics/raw/master/Unit1-module2-R/R-3.pptx)
* [Practice 2.4 sample answer](Unit1-module2-R/R.intro.1.practice2.4.ipynb)
* [2.4 addendum on looping](https://docs.google.com/presentation/d/1y0Yoyvejc8mp3MZWKPAw_u4sj5-wN4CSAi2U30IkWAs/)

#### 2.5 Exploratory Data Analysis and Plotting
* [slides](Unit1-module2-R/2.5_plotting.pdf)
* [Jupyter Notebook](Unit1-module2-R/2.5_plotting_1.ipynb)

### Module 3: RNA-seq

#### 3.0 RNA-seq overview 
* [slides](https://docs.google.com/presentation/d/1UJ_aLFQuwR_ZByDbpDjaaqGBhVZwA_8VHhy0RqWufN0/edit?usp=sharing)

#### 3.1 Raw data
* [slides](https://drive.google.com/open?id=1HMJQ6KhuneSVr7Obx8SBOTbda8BSXlmF)
* [notebook](Unit2-RNAseq/3.1_raw-rnaseq-data.ipynb)
* [3.1 sample solution](Unit2-RNAseq/3.1_exercise_solutions.ipynb)

#### 3.2 SAM files and gene counting
* [slides](https://drive.google.com/open?id=1QdEsymay8bQrqoIUZE4ofKfMEqgBs1xm)
* [notebook](Unit2-RNAseq/3.2_sam_and_htseq.ipynb)
* [3.2 sample solution](Unit2-RNAseq/3.2_exercise_solutions.ipynb)

#### 3.3 Counts-based expression analysis
* [slides](https://drive.google.com/open?id=1B7TiySFOo92vmwzr9YNwjdgxnhiDEMlW)
* [notebook](Unit2-RNAseq/3.3_counts-based-pipeline.ipynb)

#### 3.4 Preparing data for DESeq2
* [notebook](Unit2-RNAseq/3.4_DESeq2_import_data.ipynb)

#### 3.5 Gene expression analysis with DESeq2
* [notebook](Unit2-RNAseq/3.5_DESeq2_expression_analysis.ipynb)
* [slides](https://drive.google.com/open?id=1lDPbBNhdCZBajNED64Pcrr4foG0Zspqq)

#### 3.6 Differential expression analysis
* [notebook](Unit2-RNAseq/3.6_DESeq2_differential_expression_analysis.ipynb)
* [slides](https://drive.google.com/open?id=1deq5uIjmpa3G1zfb9PZqE1sT38uBsxGe)

#### 3.7 Enrichment analysis
* [slides](https://drive.google.com/file/d/1SE0LZBVgkB52l9SU0XHpmcvO6RyJMMzW/view?usp=sharing)

### Module 4: ChIP-seq
#### 4.1 ChIP-seq basics
* [slides - Matthew Pipkin](https://drive.google.com/open?id=1rWe790R3F9HQ3dyz2E6NVb44EcSg2Z7z)
* [slides - Yolanda](https://drive.google.com/open?id=1wSsKLtOCyYNWON3KQ5AcvTbsmWNFAb7N)
* [Q&A1](Unit2-module2-ChIPseq/ChIP-seq.Q&A.1.ipynb)
* [Practice 4.1 sample solutions](Unit2-module2-ChIPseq/ChIP-seq.practice4.1.ipynb)

#### 4.2 ChIP-seq filter and alignment
* [slides](https://drive.google.com/open?id=1raYmBLa4ZWdSU17MuwtyeqwBYtmyLZjY)
* [notebook](Unit2-module2-ChIPseq/ChIP-seq.2.ipynb)
* [Practice 4.2 sample solutions](Unit2-module2-ChIPseq/ChIP-seq.practice4.2.ipynb)
* [Practice 4.3 sample solutions](Unit2-module2-ChIPseq/ChIP-seq.practice4.3.ipynb)
* [Practice 4.4 sample solutions](Unit2-module2-ChIPseq/ChIP-seq.practice4.4.ipynb)
* [Data](https://drive.google.com/open?id=1n5-BAfI6SkjJZaniUZJDQCauZFlr_-8N)

#### 4.3 Customized filter and MACS2 peak calling
* [slides](https://drive.google.com/file/d/1bxYHHrTRhiGug2Zq_jbabeFWqVG7EPTw/view?usp=sharing)
* [notebook](Unit2-module2-ChIPseq/ChIP-seq.3.ipynb)
* [Q&A2](Unit2-module2-ChIPseq/ChIP-seq.Q&A.2.ipynb)
* [Practice 4.5 sample solutions](Unit2-module2-ChIPseq/ChIP-seq.practice4.5.ipynb)
* [Practice 4.6 sample solutions](Unit2-module2-ChIPseq/ChIP-seq.practice4.6.ipynb)
* [Data](https://drive.google.com/drive/folders/1EJJ58DaOKSG_9d_--8WSZ1qkeD3KHZAR?usp=sharing)
* Windows Data download
```
# Ubuntu terminal Option #1
scp your_email_name@login00.scripps.edu:/gpfs/home/hdiao/bam/target_file    Your_directory

# Ubuntu terminal Option #2
# click the links and download to your `Downloads` directory, then copy using this command template below:
cp /mnt/c/Users/<username>/Downloads/SRR3001750_srt_dupr.chr10.bam .
```

#### 4.4 ChIP-seq data visualization & general tips for fixing bugs
* [slides](https://drive.google.com/open?id=1v27eTROD3Xq5yhXefs-non2LR_L8h_DY)
* [Q&A3](Unit2-module2-ChIPseq/ChIP-seq.Q&A.3.ipynb)
* [Homework document: Bar_charts.R](Unit2-module2-ChIPseq/Bar_charts.R)

#### 4.5 ChIPQC and Transcription Factor Consensus Motif Enrichment by Homer
* [slides](https://drive.google.com/open?id=1UWi2f8x0CVt7xzxhSdw5us27O_9bSEiC)
* [notebook 1 (ChIPQC preparation)](Unit2-module2-ChIPseq/ChIP-seq.5.1.ipynb)
* [notebook 2 (ChIPQC)](Unit2-module2-ChIPseq/ChIP-seq.5.2_R.ipynb)
* [notebook 3 (Homer)](Unit2-module2-ChIPseq/ChIP-seq.5.3_Homer.ipynb)

