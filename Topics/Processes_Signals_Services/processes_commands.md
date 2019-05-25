# Process commands

## Kill user TTY

Example 1
> w
> ps -dN | grep pts/3
> kill -9 20278

Example 2
Kill user program process (if using vim the vim program would shutdown)
> pkill -t pts/1
> pgrep -u joe -l
> pkill -u joe sshd

Displays or resets a number of resources limits
associated with processes running under a shell.
> unlimit

## Killing processes

> kill
> killall

A list of signals names and numbers
> kill -l

> pkill

A command is issued for background processing
> <command> &

## Checking processes with ps

> ps
See which process are internal kernel or external user processes
> ps -elf
> ps -aux
> ps axo pid,comm,nice
> ps -u root
> 

## Using pgrep to find runnning processes

> pgrep
List all processes owned by the root user
> pgrep -u root -l
List all processes not owned by the root user
> pgrep -u root -lv 

Ascertain what shared libraries an executable requires
> ldd <program>
> idd /usr/bin/vi
> idconfig

## Adjusting Process Prioity and Kill Processes

> (x=1; echo "This is a test sh script" > ~/output.file; while true; do echo "running for : $x sec" >> ~/output.file; sleep 1; x=$(($x + 1)); done) &
> kill -SIGSTOP %1
> kill -SIGCONT %1
-or- find the PPID and kill it
> ps fjx
> kill [PPID]

## Using nice and renice to adjust running processes

> renice --help
> nice --help
> systemctl start httpd
> ps axo pid,comm,nice | grep httpd
> systemctl stop httpd
> nice -n 0 httpd
> ps axo pid,comm,nice | grep httpd
> pkill -9 httpd
> systemctl start httpd
> renice -n 10 2879
> renice -n 10 $(pgrep httpd)

## Timing the compression a large file by using nice levels

> dd if=/dev/zero of=/root/test.file bs=1M count=1024
> time nice -n 19 tar -cvf test.tar test.file