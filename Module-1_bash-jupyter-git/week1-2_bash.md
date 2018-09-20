# Command Line II
Huitian (Yolanda) Diao

Reference: Wiley Linux Command Line and Shell Scripting Bible

## Bash programming
1. __echo__: outputs the strings it is being passed as arguments
    ```
    echo "Hello, world!"
    ```
2. Variables
    1. Naming conventions ([Google style guide](https://google.github.io/styleguide/shell.xml#Naming_Conventions))
        * Lower-case, with underscores to seperate words. Only alphanumeric and underscore.
        * Must start with a letter

    ![Naming your variable well!](http://benjdd.com/assets/memes/variable-names.jpg)

    2. Assigning value (__=__) and accessing value (__$__)
    ```
    student_number=10
    echo $student_number
    student_1="Alice"
    echo $student_1
    echo "The first student is: $student_1"
    ```

3. __read__: read a line from the standard input and split it into fields
    ```
    echo "What's my name???"
    read my_name
    echo "My name is $my_name"
    ```
    _(If you happen to not remember who you are, try typing in __Who am I__ in bash)_ ![When you work too hard](http://m.memegen.com/altucu.jpg)

4. Redirecting
    1. __>__: standard output
    2. __>>__: append
    ```
    echo "Alice" > students.txt
    cat students.txt
    echo "Bob" > students.txt
    cat students.txt
    echo "Cathy" >> students.txt
    cat students.txt
    ```

5. __nano__: simple editor
    ```
    nano newStudents.txt
    # Type in your name and use Ctrl+X to exit and save
    cat newStudents.txt
    ```

6. Writing a bash script
    1. Shebang: Direct which [interpreter](https://en.wikipedia.org/wiki/Interpreter_(computing)) to use
    ```
    nano print_names.sh
    ```

    ```
    #!/usr/bin/env bash
    # Filename: print_names.sh

    echo "Please type in your name:"
    read new_name

    echo "Alice"
    echo "Bob"
    echo "Cathy"
    echo $new_name
    ```

    2. Run script
    ```
    bash print_names.sh
    ```
7. Compressing / archiving data
    1. Compressing tools: compress large files into smaller files that take up less space
    
    Utility | File extension
    ---------------- | ----------------
    bzip2 | .bz2
    compress | .Z
    gzip | .gz
    zip | .zip
    ```
    ls -l Tumor_lib.fasta
    bzip2 Tumor_lib.fasta
    ls
    ls -l Tumor_lib.fasta.bz2
    cat Tumor_lib.fasta.bz2
    bzcat Tumor_lib.fasta.bz2
    bunzip Tumor_lib.fasta.bz2
    ls
    ```
    2. __tar__: archiving tool
    ```
    man tar
    tar -czvf Art.tar.gz Art
    ls -lh Art.tar.gz
    tar -xzvf Art.tar.gz
    mv Art.tar.gz ..
    tar -xzvf Art.tar.gz
    ls
    ```

## Using HPC
1. log in to HPC
    ```
    ssh hdiao@login01.scripps.edu
    ```

2. Download and upload
   1. __scp__
   ```
   # Download
   scp hdiao@login01.scripps.edu:/gpfs/home/hdiao/Applied-Bioinformatics-Course/week1-2/models.txt ~/Documents
   # Upload
   scp test.fasta hdiao@login01.scripps.edu:/gpfs/home/hdiao/Applied-Bioinformatics-Course/week1-2
   ```

   2. Softwares: [__Fugu__](https://fugu.en.softonic.com/mac)   [__Filezilla__](https://filezilla-project.org/)

3. Process management
    1. __ps__: process monitoring
    ```
    ps
    man ps
    ```

    2. __kill__: terminate process
    ```
    kill [process ID]
    ```

4. Using modules
    ```
    module av
    salmon --help
    module load salmon
    salmon --help
    ```
5. Job management
    1. __qsub__: job upload

    2. __qstat__: job status

    3. __qdel__: delete job

    4. Job parameters

6. Exercise: use __fastqc__
    1. Read user manual ([fastqc website](http://www.bioinformatics.babraham.ac.uk/projects/fastqc/))
    ```
    fastqc --help
    ```

    2. Write script
    ```
    nano fastqc.sh
    ```

    ```
    #!/usr/bin/env bash
    # Filename: fastqc.sh

    cd $PBS_O_WORKDIR

    module load fastqc
    fastqc sample.fastq
    ```

    3. Submit job
    ```
    qsub fastqc.sh
    ```

    4. Check status
    ```
    qstat -au hdiao
    ```

    5. Check reports
    ```
    cat fastqc.sh.e1421126
    cat fastqc.sh.o1421126
    ```

    6. Zip output and download
    ```
    mkdir fastqc.output
    mv *fastqc* fastqc.output
    tar -czvf fastqc.output.tar.gz fastqc.output
    scp hdiao@login01.scripps.edu:/gpfs/home/hdiao/Applied-Bioinformatics-Course/week1-2/fastqc.output.tar.gz ~/Documents
    ```

7. HPC self help
    * [HPC user guide](https://vpn.scripps.edu/+CSCO+0h75676763663A2F2F766167656E6172672E667065766363662E727168++/its/highperformancecomputing/user_guide.html)
    * [HPC user manual](http://docs.adaptivecomputing.com/torque/4-0-2/help.htm#topics/2-jobs/submittingManagingJobs.htm#topics/2-jobs/submittingManagingJobs.htm?TocPath=2.0%20Submitting%20and%20managing%20jobs|_____0)
    * [Availble packages](https://vpn.scripps.edu/+CSCO+0h75676763663A2F2F766167656E6172672E667065766363662E727168++/its/highperformancecomputing/-CSCO-3h--Scientific_Software.html#Next)

## File permissions

![File permissions](https://raw.githubusercontent.com/DavidBruant/containednpm/master/worm%20meme.jpg)

1. File permission symbols
    ```
    cd documents
    ls -l
    ```

    First character | Object type
    --------------- | -----------
    \- | files
    d | directories
    l | links
    c | character devices
    b | block devices
    n | network devices

    ```
    -rw-r--r--  1 yolandatiao  staff  278228 Aug 12 12:48 Tumor_lib.fasta
    ```

    Premission triplet | Acess
    ------------------ | ---------------
    r | read permission
    w | write permission
    x | excute permission

    * First set of triplet (rw-): permissions for file owner (yolandatiao); read and write
    * Second set of triplet (r--): permissions for group owner (staff); read only
    * Third set of triplet (r--): permissions for everyone else; read only

2. __chmod__: changing permission
    ```
    chmod [options] [mode] [file]
    ```
    
    Linux file permission codes

    Permissions | Binary | Octal | Description
    ----------- | ------ | ----- | -----------
    --- | 000 | 0 | No permissions
    --x | 001 | 1 | Excute-only
    -w- | 010 | 2 | Write-only
    -wx | 011 | 3 | Write and excute
    r-- | 100 | 4 | Read-only
    r-x | 101 | 5 | Read and excute
    rw- | 110 | 6 | Read and write
    rwx | 111 | 7 | Read, write and excute

    ```
    chmod [ugoa...] [+-=] [rwx...]
    ```

    u: user
    g: group
    o: others
    a: all above

    ```
    chmod 760 test.fasta
    ls -l test.fasta
    chmod o+r test.fasta
    ls -l test.fasta
    ```

# Practice for Command Line II
1. Write a bash script with __nano__ editor, which while runing will ask you what's your favorite color and print the answer to the screen.
2. Download the file __models.txt__ from __/gpfs/home/hdiao/Applied-Bioinformatics-Course/week1-2__ using __scp__, and __append__ "Drosophila melanogaster" into the file.
3. Log in to HPC, copy the folder __/gpfs/home/hdiao/Applied-Bioinformatics-Course/week1-2__ to your HPC home directory
4. Run fastqc for the file someRNAseq.fastq. Submit a job, check the job process, archive and zip the output files.
5. Change permission for the file __test.fasta__ so that only owner can read and write it.

















