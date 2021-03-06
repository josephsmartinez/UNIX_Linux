# Signals

Learning Objectives

- Expain what signals are and hoe they are used
- Know the avaiable signals and types of signals available in Linux
- Use kill, killall, pkill to send signal from the command line

Key Words

Inter-Process Communication (IPC)
Asynchronous Events
System Call


## What are signals

Signal are on of the oldest methods of Inter-Process Communcation and are used to notify process about asynchronus events.

By asynchronous the signal receiving process may:

- Not expect the event to occur
- Expect the event, but not know when it is most likely to occur

There are two path by which signals are sent to a process: 

- From the kernel to a user process, as a result of an exception or programming error
- From the process (using system calls) to the kernel which will then send it to user process. The process sending the signal can actually be the same as the one reeiving it.

Process that revves a signal can take specific actions which are coded in the program or via the system defaults.

Generally, signals are used to handle two things:

1. Exceptions detected by hardware (such as illegal memory reference)
2. Exceptions generated by the environment (such as premature death of a process from the user's terminal)

Displays a list of signals
> kill -l

## kill

> kill 1991
> kill -9 1991
> kill -SIGKILL 1991

A process cannot send a signal directly to another process; it must ask the kernel to send the signal by executing a system call. If a signal number is not given (as in the first example), the default is to send SIGTERM (15), a terminate signal that can be handled, the program can take elusive action or clean up, rather than just die immediately.

If this signal is ignored, the user can usually send a SIGKILL (9), which cannot be ignored, to terminate with extreme prejudice.