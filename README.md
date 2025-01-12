# codetempl
Creates a file with the boilerplate code for a given language. For example `codetempl c` will create a file `code.c` with contents:
```
#include <stdio.h>
int main (int argc, char* argv[]) {

  return 0;
}
```

It also saves me from manually making files executable with `chmod +x`, by creating the template file for that language as executable, like for shell scripts.

The program parses your input, finds the corresponding template file in the `code_templates` directory, and copies it with `cp`.

## Lanugages Currently Supported

- C
- Python
- Java
- Bash
- JavaScript
- LaTex
- C++
- HTML
- Perl

## Installation
Set up `CODETEMPL_ROOT` as an environment variable, pointing to where this project is saved on your system. Then add it to `PATH`.

For example (in `.profile`):
```
# setup for codetempl
export CODETEMPL_ROOT=/home/alejandro/codetempl
export PATH=$PATH:$CODETEMPL_ROOT
```

## Usage Instructions
You can request a code template file either by language or by filename.

#### By Filename
`codetempl <filename>`: Will parse the file extension in `<filename>`, ie `helloworld.c` to find which language to use and pick the appropriate template.

#### By Language
`codetempl <language>`: Will create a file `code.<ext>` where `<ext>` is the file extension appropriate to that language.

Run `codetempl help` to see which languages are supported

#### Multiple Files
You can pass multiple arguments to `codetempl` to create multiple files. Each argument can either be requesting by language or by filename, as described
above.

## Configuration File
`languages.config` has the declarations for accepted language names, and the recognized file extension.

The file syntax is simple.
- `#` for comments
- Items are newline-delimited
- Each line is of format `language_name file_extension`. Any amount of whitespace delimits the words.
- All other whitespace (trailing, leading, empty lines) is ignored

## Adding your own templates
Template files are stored in the `code_templates` directory in the root of this project. They must be named `code_template.ext`, where `ext` is the recognized file extension in the `languages.config` file. You can edit the content of the files as whatever your need for "boilerplate code" for that language evolves.
