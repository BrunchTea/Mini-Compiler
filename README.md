# Mini-Compiler
 A mini compiler using C, designed for DSA homework, sp23

## Introduction

This is a mini compiler designed for DSA homework, sp23. It is written in C and is intended to be used as a learning tool for those interested in compilers and programming language design.

## Framework

The mini compiler is built using the following framework:

```bash
build/ # Output files
docs/  # Documents
include/ # Includes
lib/ # Library
tests/ # Test files
cg.c # Code generator
data.h # Global variables and definitions
decl.c # Function prototypes for all compiler files
decl.h # Function prototypes for all compiler files
defs.h # Structure and enum definitions
expr.c # Parsing of expressions
gen.c # Generic code generator
main.c # Main file
misc.c # Miscellaneous functions
opt.c # Optimisation functions
scan.c # Lexical scanning
stmt.c # Statement parsing functions
sym.c # Symbol table functions
tree.c # AST tree functions
types.c # Types and type handling
```

## Prerequisites

You should have installed the C develop toolchain!

If you're using ubuntu, just `sudo apt install necessities` on your shell

## Usage

To use the mini compiler, follow these steps:

1. Clone the repository to your local machine.
   **NOTE**: This program is built on UNbuntu 22.04, and passed tests on Darwin, so I personally suggest you use Linux or MacOS. However, if you hold on to run the program on Windows, there are two possible solutions:
   1. Visit Microsoft's official [site](https://learn.microsoft.com/en-us/windows/wsl/install),follow the guide and install WSL2
   2. Just install the whole gcc,llvm and clang and setup the $PATH, here I recommend (MSYS2)[https://www.msys2.org] instead of (MSVC)[https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170]
2. Install QBE if you haven't already. Just run `cd ./lib/que | make | sudo make install` on your shell
3. Navigate to the root directory of the project.
4. Run make to build the compiler.
5. Run `make install` to install the compiler
6. Run `cd ./build` and `./MINIC`to start your trail to compile an input file.