Report Card
Expectations
Score
1. Demonstrate a Conceptual understanding of topics covered in the LPIC-1 Exam 101 test
70 %
Exam Breakdown
Demonstrate a Conceptual understanding of topics covered in the LPIC-1 Exam 101 test
1.
Which of the answers below BEST describes what happens to the file called 'file.txt' when the following command is run? echo "hello" >> file.txt

A. Will append hello at the end of file.txt. If the file does not exist, it will create the file and place the text within it.

done Correct
B. Places the 'hello' text at the beginning of the file, moving any existing content down underneath

C. Will recreate file.txt (removing the file if it already existed) and place hello at the beginning of the file

D. No listed answer

2.
sigkill signal is:

A. 2

B. 15

C. 1

D. 9

done Correct
3.
Output from an lsblk -f command on a file system that you suspect to be damaged appears below:

sdd
└─sdd1 xfs 6b4a59ad-e496-4a63-9411-7bc9350000ae /srv

What command would you use to try and repair the file system?

A. tune2fs -e /dev/sdd1

B. xfs_frs /dev/sdd1

C. xfs_repair /dev/sdd1

done Correct
D. e2fsck -p /dev/sdd1

4.
You have a file named: important.tar.bz2

Which command will extract the contents of this file?

A. tar -xfJ important.tar.bz2

close Your Answer
forum
Why is this incorrect?
The compression switch here is for a different style of compression. https://linuxacademy.com/cp/courses/lesson/course/2167/lesson/3/module/214

B. tar -xfz important.tar.bz2

C. tar -xf important.tar.bz2

D. tar -xjf important.tar.bz2

done Correct
forum
Why is this correct?
This is correct. https://linuxacademy.com/cp/courses/lesson/course/2167/lesson/3/module/214

5.
Which command would you use to determine if a specified command is a built-in or a separate binary?

A. which

close Your Answer
forum
Why is this incorrect?
This command will display the full directory to a specified application. https://linuxacademy.com/cp/courses/lesson/course/2165/lesson/2/module/214

B. set

C. type

done Correct
forum
Why is this correct?
This is correct. https://linuxacademy.com/cp/courses/lesson/course/2768/lesson/2/module/242

D. man

6.
While in vi command mode you type 3yy what is the result?

A. Will paste three lines starting with the line your cursor is on.

B. You will type the characters '3yy' into the document.

C. Will cut three lines starting with the line your cursor is on.

close Your Answer
forum
Why is this incorrect?
The yank 'y' command does not remove text. https://linuxacademy.com/cp/courses/lesson/course/2175/lesson/1/module/214

D. Will yank 3 lines starting with the line your cursor is on.

done Correct
forum
Why is this correct?
This is correct. https://linuxacademy.com/cp/courses/lesson/course/2175/lesson/1/module/214

7.
The command cat /etc/passwd | grep ^root will:

A. Display all the lines in the file with the pattern root.

B. Display all lines in the file that do not have the pattern root.

C. Display all the lines in the file that start with the pattern root.

done Correct
D. Display all lines in the file that does not have the letter 'r'

8.
You've been tasked to manage an older Linux system running GRUB/GRUB-legacy. You're attempting to make kernel changes to allow the system to boot into an alternate kernel version. Which configuration file needs to be edited?

A. /boot/grub/menu.lst

done Correct
forum
Why is this correct?
This is correct. https://linuxacademy.com/cp/courses/lesson/course/2156/lesson/1/module/214

B. /etc/grub/grub.cfg

C. /boot/grub/grub.cfg

close Your Answer
forum
Why is this incorrect?
This is not the proper file name. https://linuxacademy.com/cp/courses/lesson/course/2156/lesson/1/module/214

D. /etc/grub/menu.lst

9.
chmod 755 file.txt will:





10.
While attempting to shut down the Apache service with "systemctl stop httpd" you notice that there are httpd processes that are refusing to shut down. How might you send a SIGTERM signal to try and gently stop the processes to all httpd processes?

A. pgrep httpd

B. kill -9 httpd

C. pkill httpd

done Correct
forum
Why is this correct?
This is correct. https://linuxacademy.com/cp/courses/lesson/course/2170/lesson/2/module/214

D. kill -15 httpd

close Your Answer
forum
Why is this incorrect?
The kill command will require a PID to target, and a graceful shutdown has already failed. https://linuxacademy.com/cp/courses/lesson/course/2170/lesson/2/module/214

11.
You downloaded an ISO file of a Linux distribution from the Internet. You want to verify it's SHA 256 signature to make sure that your file is not corrupt. Which command would you use? Assume that you have a file named 'checksum' that contains the checksum for the ISO file.

A. md5sum -c file.iso

B. sha256sum checksum

C. sha512sum -c file.iso

D. sha256sum -c checksum

done Correct
12.
Which key, in command mode, would send the cursor to the end of the file in vim?

A. j

B. h

C. G

done Correct
D. gg

13.
Which file system contains information about interrupts, IRQ's, ioports, and dma addresses?

A. /sys

B. /etc

C. /proc

done Correct
D. /var

14.
Where is the default umask value set for the entire system? Since the umask value can be set depending on the type of login used, choose two files:

A. /etc/profile

done Correct
B. /etc/bashrc

done Correct
forum
Why is this correct?
This is correct. The umask value is set here for a non-login shell https://linuxacademy.com/cp/courses/lesson/course/2183/lesson/4/module/214

C. /home/user/.bashrc

D. /etc/umask.

15.
You have just created a new swap partition, and used the mkswap command to apply a swap file system to the disk. What would you do next to use the newly created swap space?

A. Run swapon to enable the new swap space.

done Correct
B. Run the modprobe command to load the swap space.

C. Reboot the system.

D. Run the mkswap command.

16.
If an executable file has the setuid octal bit of 4 applied what is the result?

A. The file when executed will only run if the user ID is the same as the user's ID who owns the file

B. The file can be modified but not executed

C. No such thing as a sticky bit.

D. The file is executed with the same permissions as the user/group who owns the file

done Correct
17.
A virtual machine has just had a new disk attached and another administrator has created a new partition on this disk, which happens to be the third disk on the system now. Which of the following is the name of this disk partition?

A. /dev/vdc3

B. /dev/vdd3

C. /dev/vdb1

close Your Answer
forum
Why is this incorrect?
This would be the first partition on the second disk. https://linuxacademy.com/cp/courses/lesson/course/2179/lesson/1/module/214

D. /dev/vdc1

done Correct
forum
Why is this correct?
This is correct. https://linuxacademy.com/cp/courses/lesson/course/2179/lesson/1/module/214

18.
You just ran the command: systemctl set-default multi-user.target. What will the state of the system be in after you reboot the computer?

A. The computer will reboot into a multi-user rescue mode.

B. There is no multi-user target. The system will just reboot into a default setting.

C. The computer will reboot into a command-line only mode, with networking and the ability for multiple users to log in.

done Correct
D. The computer will reboot into a graphical desktop environment.

19.
0x82 Type code represents the:

A. XFS file system

B. Standard Linux file system

C. FAT file system

D. Linux swap space

done Correct
20.
Which command would you use to modify the amount of time between file system checks on and EXT4 file system?

A. tune2fs -c

B. mke2fs

C. xfs_db

D. tune2fs -i

done Correct
21.
uniq -d will:

A. Print only duplicate lines in a file.

done Correct
B. Sets a different delimiter for the output.

C. Print only unique lines in a file.

D. Both print only unique lines in a file and print only duplicate lines in a file.

22.
Which of the following will redirect standard output to standard error?

A. >>&

B. 1>&2

done Correct
C. >>

D. 2>

23.
The -t flag when passed to mkfs requires you to:

A. Specify the file system type.

done Correct
B. Automatically detects the file system type for the device.

C. Allows you to toggle the boot flag.

D. Check the device for bad blogs before building the file system.

24.
Which command will find files modified at least 3 days ago in your current working directory?

A. find . -mtime +3

done Correct
forum
Why is this correct?
This is correct. https://linuxacademy.com/cp/courses/lesson/course/2167/lesson/4/module/214

B. find . +mtime -3

C. find /home -mtime -3

D. find . -mtime -3

close Your Answer
forum
Why is this incorrect?
This command would show the files modified within the last 3 days https://linuxacademy.com/cp/courses/lesson/course/2167/lesson/4/module/214

25.
You need to create a file full of zeros that is 1 GB in size. Which command will perform this action? Choose the "best" possible answer.

A. dd if=/dev/zero of=/dev/zero

B. dd if=/dev/zero of=filename bs=1M count=1024

done Correct
forum
Why is this correct?
This is correct. https://linuxacademy.com/cp/courses/lesson/course/2167/lesson/3/module/214

C. dd if=/dev/sdf1 of=/root/filename size=1M bs=1024

D. dd if=/dev/zero of=filename size=1G

close Your Answer
forum
Why is this incorrect?
This is not a valid option. https://linuxacademy.com/cp/courses/lesson/course/2167/lesson/3/module/214

26.
Which two commands could you use to search the manual pages for a particular keyword?

A. apropos

done Correct
B. find

C. locate

D. man -k

done Correct
27.
Which command will show you your total current inode usage?

A. ls -i

B. du --inode

C. df --inode

done Correct
D. du -i

28.
You've modified your system and want to boot into the graphical target every time your system boots and completes the boot process. To make this persistent on your system so it boots into the graphical target each time the system starts, what would you do?

A. create a symlink in /etc/systemd/system/default.target -> /usr/lib/systemd/system/graphical.target

B. systemctl set-default graphical.target

done Correct
forum
Why is this correct?
This is correct. https://linuxacademy.com/cp/courses/lesson/course/2148/lesson/2/module/214

C. systemctl enable graphical.target

close Your Answer
forum
Why is this incorrect?
This is not the way to set the default target. https://linuxacademy.com/cp/courses/lesson/course/2148/lesson/2/module/214

D. systemctl get-default graphical.taret

29.
Which of the following will verify the signature on a package to determine its integrity and origin?

A. rpm -ql

B. rpm -sig

C. rpm --checksig

done Correct
forum
Why is this correct?
This is the correct answer. https://linuxacademy.com/cp/courses/lesson/course/2160/lesson/2/module/214

D. rpm -check

close Your Answer
forum
Why is this incorrect?
This is not a valid option. https://linuxacademy.com/cp/courses/lesson/course/2160/lesson/2/module/214

30.
What option would you use to ensure that the 'rm' command will prompt you before removing a file?

A. rm -d

B. rm -f

C. rm -r

D. rm -i

done Correct
31.
Which of these locations are pseudo file systems that contain information about hardware connected to your computer?

A. /sys

done Correct
B. /tmp

C. /run

D. /dev

done Correct
32.
While using fdisk, which key creates a new partition?

A. n

done Correct
B. p

C. d

D. l

33.
You're working on a Linux system with systemd as it's primary init manager. To change into the graphical target, what would you do?

A. systemctl isolate graphical

B. systemctl init 5

C. systemctl init graphical.target

D. systemctl isolate graphical.target

done Correct
34.
Where are the repository file(s) stored on a Linux system that uses yum for package management?

A. /usr/bin/yum

B. /etc/yum.repos.d

done Correct
C. /etc/rpm

D. /etc/apt/sources.list

35.
Which man page section is for user executable programs and utilities?

A. 8

B. 3

C. 1

done Correct
D. 2

36.
ln -s will:

A. Both create a symbolic link and create a hard link.

B. Provide a line count summary of a file.

C. Create a symbolic link.

done Correct
D. Create a hard link.

37.
You have a directory set up for group collaboration. What permissions would you apply to it to keep others out, while the group retains ownership of the contents?

A. chmod 2770

done Correct
forum
Why is this correct?
This is correct. https://linuxacademy.com/cp/courses/lesson/course/2183/lesson/3/module/214

B. chmod 4770

close Your Answer
forum
Why is this incorrect?
This would add the SUID bit to the user's column. https://linuxacademy.com/cp/courses/lesson/course/2183/lesson/3/module/214

C. chmod u+s,g+s,o=

D. chmod 1770

38.
You have an rpm package on your system that you need to upgrade. Which command would you use?

A. rpm -i software.rpm

B. rpm -q software.rpm

C. rpm -e software.rpm

D. rpm -U software.rpm

done Correct
39.
What happens when you set the setuid on a directory?

A. Anyone whose UID does not match that of the owner of the directory is not permitted to open the directory.

B. When the file is executed the same permissions are applied as the owner who owns the file

C. The setuid bit cannot be set to a directory

close Your Answer
forum
Why is this incorrect?
This is not true. https://linuxacademy.com/cp/courses/lesson/course/2183/lesson/3/module/214

D. It is ignored

done Correct
forum
Why is this correct?
This is the correct answer. https://linuxacademy.com/cp/courses/lesson/course/2183/lesson/3/module/214

40.
What does the following command do:

chmod g+s file

A. It sets the SUID bit on 'file'

B. It sets the SGID bit on 'file'

done Correct
C. It sets the sticky bit on 'file'

D. It makes the file executable by the group.

41.
Which of the following is the newest initialization system used across most modern Linux distributions?

A. systemd

done Correct
B. sysvinit

C. launchd

D. upstart

42.
The sticky bit, if enabled as a permission, has what effect?

A. Prevents any user, including the owner of the directory of the file, from modifying or removing the file

close Your Answer
forum
Why is this incorrect?
There is a separate permission that handles that. The sticky bit is not it. https://linuxacademy.com/cp/courses/lesson/course/2183/lesson/3/module/214

B. Both only the directory's owner or file's owner can rename or delete files (chmod +t filename or chmod 1000) instead of anybody with write permissions and prevents any user, including the owner of the directory of the file, from modifying or removing the file

C. Only the directory's owner or file's owner can rename or delete files (chmod +t filename or chmod 1000) instead of anybody with write permissions

done Correct
forum
Why is this correct?
This is how the sticky bit works. https://linuxacademy.com/cp/courses/lesson/course/2183/lesson/3/module/214

D. Only the group owner can modify files with the sticky bit.

43.
Which directory is typically used for mounting CD or DVD devices?

A. /media

done Correct
B. /opt

C. /tmp

D. /srv

44.
You need to monitor a command's output at 10 second intervals. Which command would you use?

A. date

B. ps

C. time -n 10

D. watch -n 10

done Correct
45.
Which of the following is a platform for containers in Linux?

A. kvm

B. xen

C. LXC

done Correct
D. VirtualBox

46.
You just ran the history command, and saw the following as part of the output:

996 yum check-update

How could you re-run this command, without typing it out again?

A. \996

B. !996

done Correct
C. 996

D. history 996

47.
You need to rerun the configuration of a deb package much like the configuration that was run during installation. How would you do this?

A. dpkg -i packagename

B. Use the dpkg-reconfigure command.

done Correct
C. Remove the package and then reinstall it.

D. Run dpkg -mkconfig command

48.
Which two commands would display all of your environment variables in Bash?

A. shopt

B. env

done Correct
C. set

done Correct
D. export

49.
You have a Bash shell script that you are troubleshooting. There seems to be an extra character somewhere in the file. You decide to use the od command to locate it. Which command option would best suit this scenario?

A. od -o

B. od -f

C. od -x

D. od -c

done Correct
50.
What is the file system format needed for /boot/efi?

A. ext2

B. LVM

C. vfat

done Correct
forum
Why is this correct?
This is the correct file system to use for this partition. https://linuxacademy.com/cp/courses/lesson/course/2156/lesson/2/module/214.

D. xfs

close Your Answer
forum
Why is this incorrect?
This is not the correct file system for this partition. https://linuxacademy.com/cp/courses/lesson/course/2156/lesson/2/module/214

51.
Which man page section is for system administrator utilities?

A. 1

B. 6

C. 5

D. 8

done Correct
52.
Run level 6 can be used to:

A. Use Graphic Interfaces (GUI)

B. Shutdown and halt the system

C. Reboot the system

done Correct
D. Enter single user mode

53.
If you want a command or process to continue running after exiting the system, which of these would you add to the front of the command?

A. bg

B. nohup

done Correct
forum
Why is this correct?
This is the correct answer. https://linuxacademy.com/cp/courses/lesson/course/2170/lesson/3/module/214

C. fg

D. &

close Your Answer
forum
Why is this incorrect?
This will immediately send a process to the background, and it goes at the end of a command. https://linuxacademy.com/cp/courses/lesson/course/2170/lesson/3/module/214

54.
You need to create a symbolic link with a target of /etc/passwd on /home/user/passwd. How would you do this?

A. ln -s /home/user/passwd /etc/passwd

close Your Answer
forum
Why is this incorrect?
This is the reverse of what you want. https://linuxacademy.com/cp/courses/lesson/course/2184/lesson/1/module/214

B. ln /etc/passwd /home/user/passswd

C. ln -s /etc/passwd /home/user/passwd

done Correct
forum
Why is this correct?
This is correct. https://linuxacademy.com/cp/courses/lesson/course/2184/lesson/1/module/214

D. ln /home/user/passwd -s /etc/passwd

55.
On an EFI system, what file would you edit to modify GRUB's behavior?

A. /boot/grub/menu.lst

B. /etc/default/grub

done Correct
C. /boot/grub2/grubenv

D. /boot/grub/grub.conf

56.
In a 'sysvinit' based distribution, the 'init' process is:

A. The last process run during system start.

B. It sets the default boot target.

C. Responsible for launching all other system startup processes and is the first process launched once the boot loader hands off to the system.

done Correct
D. The first stage of the login process.

57.
What will the following command accomplish? dpkg -i file.deb

A. Will install file.deb package.

done Correct
B. Removes a debian package.

C. Lists all the files inside of file.deb package.

D. Lists the status of a package.

58.
set -o noclobber enables noclobber on your shell. What function does this perform?

A. Sends standard error and standard output to the same location.

B. Prevents accidental overwrites of existing files.

done Correct
C. Allows overwrites of existing files.

D. Logs accidental overwrites and backs them up to a special file system.

59.
You need to copy a directory named stuff, along with all of its contents, into a new directory named things. Which command would you use?

A. cp -d stuff things

B. cp stuff things

close Your Answer
forum
Why is this incorrect?
This would not work since the 'stuff' directory contains files. The 'stuff' directory would be omitted. https://linuxacademy.com/cp/courses/lesson/course/2167/lesson/2/module/214

C. cp -f stuff things

D. cp -r stuff things

done Correct
forum
Why is this correct?
This is the correct answer. https://linuxacademy.com/cp/courses/lesson/course/2167/lesson/2/module/214

60.
What is the software called that will run virtual machines on a host system?

A. Docker

B. LXD

C. hypervisor

done Correct
D. container