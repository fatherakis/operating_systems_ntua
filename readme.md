## Operation Systems - ECE NTUA Course 2021

All 4 Lab exercises were done in groups of 2.

## Lab 1

### <div align="center"> Object file linking "zing" </div>

Zing folder:
* zing .c, .h, .o: Source, Header and Object files.

* main .c, .o: Main Source and Object files.

* Makefile: makefile required for compilation arguments and object linking.



### <div align="center"> File concatenation: 2 files in another </div>

Fconc folder:
* Makefile: compilation arguments for the full program.

* main.c: Main source code and file handling.

* fconc .c, .h: Source and header files for concatenation.

## Lab 2

* Makefile: compilation arguments for all the following questions.

### <div align="center"> Creation of given process tree </div>

* proc-common .c, .h: Source code and Headers for fork helper functions.
* ask2-fork .c: Source for main process tree implementation.


### <div align="center"> Creation of arbitrary process tree </div>

* tree .c, .h: Tree structure source code and headers.
* tree-example .c: Print tree from structure source code.

### <div align="center"> Signal Handling </div>

* ask2-signals.c : Signal Handling source code.


### <div align="center"> Parallel computation of arithmetic expression </div>

* ask2-calc.c : Computation source code utilizing all previously defined functions.

## Lab 3

### <div align="center"> Syncronization in given code </div>

* simple_sync.c: Main program code where syncronization is implemented
* Makefile: Compile commands featuring POSIX mutexes and gcc atomic functions for syncronization support


### <div align="center"> Parallel computation of Mandelbrot set </div>

* mandel-lib .c, .h: Source code and headers for helping functions

* mandel .c: Main mandelbrot set and parallelism program.

## Lab 4

### <div align="center"> System Calls and Virtual Memory Managment </div>

* mmap .c: Memory managment source code.

* help .c, .h: Provided helping functions.

### <div align="center"> Parallel Mandelbrot computation with processes instead of threads </div>

* mandel-fork.c: Source code for process paralellism.
