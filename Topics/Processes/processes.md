# Processes

Keyword:
- process
- init process
- zombie process
- internal kernel process
- external user process
- kernel modes
- daemon process
- `nice` and `renice`
- static libraries
- PID, UID, EUID, GID
- fork
- Signals
- Threads
- System call
- Trace signals
- Runaway process
- Periodic process
- Run levels

## Life cycle of a process

1) A new process copies itself with the `fork` system call. A fork creates a
copy of the original process, and that copy is largely identical to the parent.

2) When a process completes, it calls a routine named `_exit` to notify the kernel
that it is ready to die.

3) Before a dead process can be allowed to end, the kernel requires that
its death be acknowledged by the parent, which the parent does with a call to
`wait`.

EXAMPLE: Creating a process in a command shell will be forked from the user's
shell. A wait system call puts the parent shell to sleep. NOTE: not all shell
command are forked because the program files do not need loading.

## Processes, programs, and threads

Internal kernel process, these take care of maintenance work. i.e making
sure buffers get flushed, CPU load is balanced, etc.

External user process, processes which run in user space like normal applications
but which the kernel started.

A thread is an execution context within a process. Every process has at least
one thread, but some processes have many. Each thread has its own stack and
CPU context but operates within the address space of its enclosing process.

Many of the parameters associated with a process directly affect its execution:
the amount of processor time it gets, the files it can access, and so on.

## The init process

The first user process on the system is init which has a process ID = 1. It is
started as soon as the kernel is initialized and has mounted the root filesystem.
The init process will run until the system is shutdown.


## Processes

A process is an instance of a program in execution. It may be in a number of
different states, such as running or sleeping. Every process has a PID (process ID),
a PPID (parent process ID), and PGID (process group ID). In addition, every process
has program code, data, variables, file descriptors, and an environment.

If the parent process dies before the child, the PPID of the child is set to 1,
the process is adopted by init. NOTE: recent Linux the PPID will be set to 2,
which corresponds to an internal kernel thread known as `kthreadd`.

kworker means a Linux kernel process doing "work" (processing system calls).
You can have several of them in your process list: kworker/0:1 is the one on
your first CPU core, kworker/1:1 the one on your second etc..

A child process which terminated before its parent, which has not waited of it
and examined its exit code, is know as a `zombie` process. The init process is
to check on its adopted children and let those who have terminated die gracefully.
It is sometimes known as the `zombie killer` or `child reaper`.

processes have attributes:
- The program being executed
- Context state
- Permissions
- Associated resources

process states:
- Running
- Sleeping
- Stopped
- Zombie

## Controlling processes with limits

A system administrator may need to change limits:

- To restrict capabilities so an individual user and/or process cannot exhaust system resources.
- To expand capabilities so a process does not run into resource limits i.e.
a server handing many clients may find that the default of 1024 open files makes its work impossible to perform.

Hard Limits, the maximum value, set only by the root user.
Soft Limits, the current limiting value, which a user can modify but can not exceed.

## Run Levels

A run level is a state of init and the whole system that defines what system services are operating.

0 – System halt i.e the system can be safely powered off with no activity.
1 – Single user mode.
2 – Multiple user mode with no NFS(network file system).
3 – Multiple user mode under the command line interface and not under the graphical user interface.
4 – User-definable.
5 – Multiple user mode under GUI (graphical user interface) and this is the standard runlevel for most of the LINUX based systems.
6 – Reboot which is used to restart the system.

## User mode and Kernel Mode

## Daemons

## Signals

Signals are process-level interrupts requests. About thirty different kinds.

- Sent among processes as a means of communication
- Can be sent by the terminal diver to kill, interrupt, or suspend processes
- Can be sent by the kernel
