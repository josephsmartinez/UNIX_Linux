# Standard Input, Standard Output and Standard Error

## Commands

- `<`
- `>`
- `|`
- `>>`
- `>`

## Type and Symbol

Type Symbol
standard input 0<
standard output 1>
standard error 2>
both err and out &>
Take stderr to stdout  2>&1
Pipe (|) excepts stdout only

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

You can hide stderr by redirecting file descriptor 2 to /dev/null, the special device in Linux that "goes nowhere"
> find / -name '*something*' 2>/dev/null

For example, if you try to grep the output of the find command, you'll notice that the error messages are not filtered, because only the standard output is piped to grep.
> find / -name '*something*' | grep 'something'

Resources:

Tour de Shell Scripting
http://www.learnlinux.org.za/courses/build/shell-scripting/ch01s04.html

https://www.computerhope.com/jargon/f/file-descriptor.htm