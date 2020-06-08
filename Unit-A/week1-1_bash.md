# Command Line I
Huitian (Yolanda) Diao

Reference: Wiley Linux Command Line and Shell Scripting Bible

## Command line
### Concepts
1. __Shell__

    A shell is a user interface for access to an operating system's services. 
    ![System structure](https://i1.wp.com/bashcodes.com/wp-content/uploads/2013/07/Introducing-UNIX-and-LINUX-Operating-System_shell_BashCodes.png?resize=407%2C372)



    _Sometimes. But not always. There is a ghost in the shell._

    ![Ghost in the shell](https://images-na.ssl-images-amazon.com/images/I/914k-6jmLsL._SY445_.jpg?resize=200%2C372)
    
2. __Bash__
    
    Bash is a shell for Unix/Linux system. It is a replacement of Bourne shell developed for GNU project [GNU project](https://www.gnu.org/gnu/thegnuproject.en.html). 
    
3. __Command-line interface__
    
    An interface where user interacts with system with commands (text), in contrast with GUI interface (GUI) where user interacts with sytem through graphical icons.

### [Advantages of command line](https://www.hongkiat.com/blog/developers-command-line/)

### Starting with the shell
1. Launching shell

    __Mac/Linux system__: Use Terminal

    __Windows system__: Install Linux

2. Terminal interface

    1. The Shell Prompt
    ```
    ~ yolandatiao$
    ```

    2. Command strucutre
    ```
    [command] [options] [arguments]
    cat -n test.fasta
    ```

    3. Bash manual
    ```
    $ man bash
    ```
    
3. Self-help with bash
    By using __man__ you can check the manual of commands. Try it with the commands we are going to learn later!
    _Also, don't forget to use Google. __Always__ Google before asking. JUST GOOGLE IT! ![You can google it](https://i.imgflip.com/1zdrqa.jpg)_


## Nevigating file system
1. __cd__: change directory

    1. Absolute filepath
    ```
    cd /usr/lib
    cd documents # a folder named "documents" in current directory
    ```
    2. Relative filepath
    ```
    cd . # current directory
    cd .. # parent directory
    cd ~ # home directory
    ```

 2. __pwd__: display current working directory
     ```
     pwd
     ```

 3. __ls__: file listing
     ```
     ls # basic listing
     ls -F # distinguish files from directories
     ls -a # show hidden folders
     man ls # Read the manual of ls
     ```
## File handling
1. __touch__: creating file
    ```
    touch test.txt # Create a file named "test.txt"
    man touch # Manual of touch
    ```

2. __cp__: copying file
    ```
    touch test1.txt
    cp test1.txt test2.txt
    cp -R dir1 dir2 # Copy the whole directory
    man cp # Manual of cp
    ```

3. __mv__: renaming file / move file. 
    ```
    mv test2.txt test3.txt # Rename test2.txt to test3.txt
    mv dir2 dir4 # Rename directory dir2 to dir4
    mv test3.txt dir2 # Move test3.txt to directory dir2
    man mv
    ```

4. __rm__: deleting file
    ```
    rm test1.txt 
    rm -i test.txt
    man rm
    ```
    _Once file is removed, it can not be recovered. Safer option:_
    ```
    mv test1.txt Trash # Move file to Trash folder
    ```

## Directory handling
1. __mkdir__: creating directories

2. __rmdir__: deleting directories
   ```
   mkdir newdir
   rmdir newdir
   ```
   What is directory is not empty?
   ```
   mkdir newdir1
   cd newdir1
   touch file1
   touch file2
   mkdir subdir1
   cd ..
   rmdir newdir1
   rm newdir1
   ```
   Try other methods
   ```
   rm -r newdir1
   rm -rf newdir1
   ```
## View file contents
1. __stat__: status of file
    ```
    stat test.fasta
    ```

2. __file__: type of file
    ```
    file test.fasta
    ```

3. __cat__: display all data of file
    ```
    cat test.fasta
    ```

4. __less__: display data by page (versus cat command which read the entire file)
    ```
    cat Tumor_lib.fasta
    less Tumor_lib.fasta
    man less
    ```

5. __tail__ __head__: display last / first group of data in file
    ```
    tail Tumor_lib.fasta
    head Tumor_lib.fasta
    ```

6. __wc__: word count
    ```
    wc test.fasta
    wc -l Tumor_lib.fasta
    man wc
    ```

## Advanced file viewing
1. __grep__: Regular expression search
    ```
    grep "German" painters.txt
    ```

2. __*__: wildcard, a character that represents other characters
    ```
    ls *.txt
    ```

2. __sort__: Sort contents of a text file line by line
    ```
    sort painters.txt
    sort painters.txt > painters_sorted.txt
    man sort
    ```

3. __uniq__: reports or filters out repeated files
    ```
    sort painters_A.txt > painters_A_sorted.txt
    uniq -c painters_A_sorted.txt
    man uniq
    ```

## Using cheatsheet is never cheating. _It is **smart**_
* [__Mac terminal__ cheatsheet](https://gist.github.com/poopsplat/7195274)
* [__Bash__ cheatsheet](https://devhints.io/bash)
* [__Less__ navigation cheatsheet](https://github.com/altescape/dotfiles/wiki/Bash:-Less-command-and-navigate)
* [More cheatsheets](https://www.google.com/)

# Practice for Command Line I
1. Go to the folder __documents__ and create a folder __yourname_wk1_homework__
2. Copy __Tumor_lib.fasta__, __test.fasta__ and folder __Art__ to the folder you created
3. Redirect to the folder __Art__ under your new folder and find out how many files are in the folder
4. Rename __Tumor_lib.fasta__ to __tumorLib.fasta__
5. Count how many lines there are __tumorLib.fasta__
6. Display content of __ClaudeMonet.txt__
7. Find out how many lines contain __"Baroque"__ in __painters.txt__
8. For __test.fasta__, find out how many unique lines there are; and for repeating lines how many times each line repeats in __test.fasta__


