# codetempl
Creates a file with the boilerplate code for a given language. For example `codetempl c` will create a file `code.c` with contents
```
#include <stdio.h>
int main (int argc, char* argv[]) {

  return 0;
}
```
Also saves me from having to do stuff like `chmod +x` when making an executable file, if appropriate for the language (like Bash).

Was a good vehicle to teach myself Bash scripting and POSIX regular expressions

## Lanugages Currently Supported
- Java
  ```
    class Code
    {
	    public static void main(String[] args)
	    {

	    }
    }
  ```
- C
  ```
    #include<stdio.h> 
    #include<stdlib.h>

    int main(int argc, char *argv[])
    {

	    return 0;
    }
  ```
- C++
  ```
    #include <iostream>

    int main(int argc, char *argv[])
    {
      
	      return 0;
    }
  ```
- Python
  ```
    from sys import argv
    from time import sleep
    from random import randint
    '''------------------------------------'''
  ```
- Bash
  ```
    #!/bin/bash
  ```
- HTML
  ```
    <html>
    <header>Title</header>
    <body>
	
    </body>
    </html>
  ```

## Usage Instructions
You can request a code template file either by language or by filename.

#### By Filename
`codetempl <filename>`: Will parse the file extension in `<filename>` to find which language to use and pick the appropriate template.

#### By Language
`codetempl <language>`: Will create a file `code.<ext>` where `<ext>` is the file extension appropriate to that language.

Run `codetempl -langs` to see which languages are supported

#### Multiple Files
You can pass multiple arguments to `codetempl` to create multiple files. Each argument can either be requesting by language or by filename, as described
above.

## Dependencies
Just a UNIX system that can run Bash scripts
