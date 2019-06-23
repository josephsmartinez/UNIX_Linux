# Statard Out, In, Err Examples

You can hide stderr by redirecting file descriptor 2 to /dev/null, the special device in Linux that "goes nowhere"
> find / -name '*something*' 2>/dev/null

For example, if you try to grep the output of the find command, you'll notice that the error messages are not filtered, because only the standard output is piped to grep.
> find / -name '*something*' | grep 'something'

Resources:

https://www.computerhope.com/jargon/f/file-descriptor.htm