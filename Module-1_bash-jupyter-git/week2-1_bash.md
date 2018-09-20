# Command Line III

Karthik Gangavarapu, Huitian (Yolanda) Diao

## Running one command on multiple inputs

![Killing two birds with one stone](http://cdn2.hubspot.net/hub/108329/file-16375462-jpg/images/two_birds,_one_stone.jpg)

### Loops
1. __for__
    ```
    for i in {a..e}
    do
      echo $i
    done
    ```
    
    For loop + wildcard
    ```
    cd ../data/
    mkdir fastq
    mv *.fastq fastq
    ```

    Exercise:
    Rename all the files in the folder __data__ from __.fq__ to __.fastq__
    ```
    cd ../data/
    for i in $(ls)
    do
      mv $i ${i/.fq/.fastq}
    done
    ```

    [Bash string manipulation](https://www.cyberciti.biz/tips/bash-shell-parameter-substitution-2.html)

2. __while__



### Logic
1. __if else__

2. Logic operators

### __find__

### __xargs__

## More on fastq files

![Do you really wanna](https://media.makeameme.org/created/ummm-yeah-if-5b036c.jpg)

## Version control with Git
### What is git?

![What if there is no github](http://smutch.github.io/VersionControlTutorial/_images/vc-xkcd.jpg)




