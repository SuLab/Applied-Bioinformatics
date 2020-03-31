# Applied Bioinformatics
Welcome to the Applied Bioinformatics course offered at [The Scripps Research Institute](https://www.scripps.edu//). </br>
Course materials from previous years are available [here](https://github.com/SuLab/Applied-Bioinformatics/tree/master). </br> 

This course is available in [2] parts and operates under the Computational Biology & Bioinformatics (CBB) core track: </br>
i.  Unit A:    Fundamentals of Scientific Computing (FSC), 4 weeks </br>
1. Use the Bash shell for file manipulation and navigation of the file system </br>
2. Use R code to perform exploratory data analysis of data in files </br>
3. Use Jjupyter Nnotebooks for note-keeping R code </br>
4. Use Ggit and GgitHhub for code versioning (tracking changes of source code) </br>
ii. Units B-C: Applied Bioinformatics and Computational Biology (ABCB), 8 weeks </br>

The reasoning for this internal breakdown of the course is to give individuals an opportunity to "learn from scratch" and then go more in-depth, or choose either or path (solely partake in Unit A or Units B-C) depending on the individuals' needs. </br>


Instructors: Dr. Andrew I Su ([@andrewsu](https://github.com/andrewsu)) and Dr. Sabah Ul-Hasan ([@sabahzero](https://github.com/sabahzero)) </br>
Teaching Assistants (TAs): Huitian Yolanda Diao ([@Huitian](https://github.com/Yolanda-HT)), Karthik Gangavarapu ([@gkarthik](https://github.com/gkarthik)), Shang-Fu Chen </br> 

## Prerequisites

* An enthusiasm for learning, at whatever level of exprience you may or may not be
* A Windows 10 or macOS laptop 
* Installation of the following, prior to arrival:
  * Jupyter Notebook with programming languages Python3 (automatic) and R [here](Configuration.md) 
  * Packages to be used for RNA-Seq Analyses [here](Configuration_RNAseq.md)

## Schedule at a Glance

* Unit A (4 wks, dates TBD): Fundamentals of Scientific Computing, or STBIO 400
  * Week 1: Course Introduction and Bash Basics
  * Week 2: Jupyter Notebook and File Manipulation
  * Week 3: File Manipulation cnt'd, Redirection and Pipes
  * Week 4: Installation of Git, and Loops
* Unit B (5 wks, dates TBD): Understanding and Exploration RNA-Seq and scRNA-Seq (single cell), or STBIO 440i
  * Week 5: Introduction to R and Plotting Publication-Ready Figures
  * Week 6: Continutation of R
  * Week 7: Introduction to RNA-Seq and Raw Data Ouput
  * Week 8: RNA-Seq Data Pre-processing, and Introduction to Capstone Project
  * Week 9: RNA-Seq Data Post-processing and DESeq2
* Unit C (3 wks, dates TBD): Capstone Projects and Overview of the Bioinformatics Data Workflow Spectrum, or STBIO 440ii
  * Week 10: Capstone Project Workshop
  * Week 11: Capstone Project Presentations
  * Week 12: An Overview of Additional Bioinformatics Workflows (Metagenomics and Proteomics + resources for others)

## Course materials

### Unit A: Bash, Juypter and Git
* A.1a: Course introduction [slides](https://docs.google.com/presentation/d/1B8mOhQOvRb7aK2-l8y5oEoz9bmhj8zg7KY-tuXVWwOo) and pre-survey
* A.1b: Bash basics [slides](https://docs.google.com/presentation/d/1ugVZpA1dBf-STiqx_rB6aMMM2ymirv50XBYTLjajKq8) and notebook
* A.2a: Jupyter basics [slides](https://docs.google.com/presentation/d/1uSNAH_kLjUuNCB38JPH1dZNcPRGB4xTnRw7s6sLZSQc) and [notebook](Module-1_bash-jupyter-git/1.3_jupyter-basics.ipynb)
* A.2b: File manipulation [slides](https://docs.google.com/presentation/d/1v99KZHKdKDSsS3D3gerX_NpfoKEm6eO3a5euqxbZ0UA) and [notebook](Module-1_bash-jupyter-git/1.4_working-with-files.ipynb) 
* A.3a: Pipes [slides](https://docs.google.com/presentation/d/1X88Zjiyo7LfJVVAKhvJKNKEsJMLgkPYQtCXHzkWg3uE) and [notebook](Module-1_bash-jupyter-git/1.5_redirection-and-pipes.ipynb)
* A.3b: Programming in awk [slides](https://docs.google.com/presentation/d/1ejePOkEU7FVSqXUPtpM89neLXP7nR24R9Cb24QSyeqw) and [notebook](Module-1_bash-jupyter-git/1.6_awk.ipynb)
* A.4a: Git to [retrieve your homework](Module-1_bash-jupyter-git/git_reset_local_repo.ipynb), [slides](https://drive.google.com/open?id=11QUQRnKRmCQukB0pL82x9Kf7x5zyjEHe), and [notebook](Module-1_bash-jupyter-git/1.7_for_loop_and_string_replacement.ipynb)
* A.4b: Loops slides and [notebook](Module-1_bash-jupyter-git/1.8_find_git_stringreplacement_questions.ipynb)
* A.4c: Overview of Unit A
  * Bash handout 1 [notebook](Module-1_bash-jupyter-git/week1-1_bash.md)
  * Bash handout 2 [notebook](Module-1_bash-jupyter-git/week1-2_bash.md)
  * Bash handout 3 [notebook](Module-1_bash-jupyter-git/week2-1_bash.md)

### Unit B: Exploration of RNA-Seq and scRNA-Seq utilizing R
* B.5a: Introduction to R [slides](https://github.com/SuLab/Applied-Bioinformatics/raw/master/Unit1-module2-R/R-1.pptx) and [notebook](Unit1-module2-R/R.intro.1.ipynb) with [sample answer](Unit1-module2-R/R.intro.1.practice2.1.ipynb)
* B.5b: R operations [slides](https://github.com/SuLab/Applied-Bioinformatics/raw/master/Unit1-module2-R/R-2.pptx) and [notebook](Unit1-module2-R/R.intro.2.ipynb) with sample answers [2](Unit1-module2-R/R.intro.1.practice2.2.ipynb) and [3](Unit1-module2-R/R.intro.1.practice2.3.ipynb) 
* B.6a: R review [slides](https://github.com/SuLab/Applied-Bioinformatics/raw/master/Unit1-module2-R/R-3.pptx) and sample answer [4](Unit1-module2-R/R.intro.1.practice2.4.ipynb) with [extension info on loops](https://docs.google.com/presentation/d/1y0Yoyvejc8mp3MZWKPAw_u4sj5-wN4CSAi2U30IkWAs/)
* B.6b: Data visualization in R [slides](Unit1-module2-R/2.5_plotting.pdf) and [notebook](Unit1-module2-R/2.5_plotting_1.ipynb)
* B.7a: Overview of RNA-Seq [slides](https://docs.google.com/presentation/d/1UJ_aLFQuwR_ZByDbpDjaaqGBhVZwA_8VHhy0RqWufN0/edit?usp=sharing)
* B.7b: Introduction to RNA-Seq data [slides](https://drive.google.com/open?id=1HMJQ6KhuneSVr7Obx8SBOTbda8BSXlmF) and [notebook](Unit2-RNAseq/3.1_raw-rnaseq-data.ipynb) with [sample answer](Unit2-RNAseq/3.1_exercise_solutions.ipynb) 
* B.8a: Pre-processing SAM files [slides](https://drive.google.com/open?id=1QdEsymay8bQrqoIUZE4ofKfMEqgBs1xm) and [notebook](Unit2-RNAseq/3.2_sam_and_htseq.ipynb) with sample answer [2](Unit2-RNAseq/3.2_exercise_solutions.ipynb)
* B.8b: Expression count analysis [slides](https://drive.google.com/open?id=1B7TiySFOo92vmwzr9YNwjdgxnhiDEMlW) and [notebook](Unit2-RNAseq/3.3_counts-based-pipeline.ipynb)
* B.9a: Post-processing data for DESeq2 [slides](https://drive.google.com/open?id=1lDPbBNhdCZBajNED64Pcrr4foG0Zspqq) and notebooks [1](Unit2-RNAseq/3.4_DESeq2_import_data.ipynb) and [2](Unit2-RNAseq/3.5_DESeq2_expression_analysis.ipynb)
* B.9b: DeSeq2 continued [slides](https://drive.google.com/open?id=1deq5uIjmpa3G1zfb9PZqE1sT38uBsxGe) and [notebook](Unit2-RNAseq/3.6_DESeq2_differential_expression_analysis.ipynb), and more on enrichment via [slides](https://drive.google.com/file/d/1SE0LZBVgkB52l9SU0XHpmcvO6RyJMMzW/view?usp=sharing)

### Unit C: Capstone Project, and Overview of Pipelines
