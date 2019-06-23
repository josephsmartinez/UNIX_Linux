# Standard Input, Standard Output and Standard Error

## Commands

- `<`
- `>`

## Type and Symbol

Type Symbol
standard input 0<
standard output 1>
standard error 2>

## STDIN

> cat < myfirstscript
> cat 0< myfirstscript

## STDOUT

The above ls -la example can be rewritten as
> ls -al myfirstscript 1> longlisting

## STDERR

Both streams display stdout and stderr
> find / -name '*something*'
You can hide stderr by redirecting file descriptor 2 to /dev/null
> find / -name '*something*' 2>/dev/null

Resources:

Tour de Shell Scripting
http://www.learnlinux.org.za/courses/build/shell-scripting/ch01s04.html