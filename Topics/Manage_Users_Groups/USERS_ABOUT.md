# About User, Groups, and Permissions

What is Set User ID (setuid)?
SUID is a special permission assigned to a file. These permissions allow the file being executed to be executed with the privileges of the owner. For example, if a file was owned by the root user and has the setuid bit set, no matter who executed the file it would always run with root user privileges.

What is Set Group ID (setgid) for files?
When the Set Group ID bit is set, the executable is run with the authority of the group. For example, if a file was owned by the users’ group, no matter who executed that file it would always run with the authority of the user’s group.

Sticky bit
The sticky bit is more commonly used on directories where it allows the files or directories within to only be moved or deleted by that object's owner, the directory owner, or the super-user.

NOTE: The sticky bit has no effect if other does not have execute permissions.
The sticky bit is represented with a lower-case "t" in the output of ls. In cases where it has no effect it is represented with an upper-case "T".
