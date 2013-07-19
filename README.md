# About #
A simple `makefile` skeleton for your little project.

# How to Use #
Download and uncompress the ZIP or tar.gz archived file and `cd` to the result directory.  
As the project is a skeleton, you are recommanded to write code with some rules.
Add your source code files to the `src` and `inc` directory.

## Here is some example to explain how to: ##
### binary file ###
To write a program which will generate a executable binary file like `ls`, and assume that you want to 
get a `sayhello` result.  
Create your `.c` file with name `sayhello.c` (in `src` directory), write all your code in this file.  
Edit `makefile` and find variable `BINS`, add `sayhello` at the end of the line, and seperate multi programes 
with a space(' ').

### shared library ###
To write a program which will generate a shared library like `libhello.so`.  
Create your `.c` file with name `hello.c` (in `src\hello\` directory), and `.h` file with any name while I prefer `libhello.h` 
in `inc` directory.  
Edit `makefile` and find variable `LIBS`, add `libhello.so` at the end of the line, and seperate multi programes 
with a space(' ').

### more ###
Maybe all the above not suitable for you, here I recommand you to read the makefile, it's so simple that you can custom it for yourself.

** After all done, run command `make` to get your result. **  
** In the code, I add a `test` to `BINS`, and you can see it. **

# Contact #
Email : isaymeorg [at] gmail [dot] com  
Blog  : [www.isayme.org](www.isayme.org "www.isayme.org") [Chinese Simplified]

