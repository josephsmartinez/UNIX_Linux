# Files, File contexts, Permissions


## Commands

> chown
> chmod
> mask
> umask
> chcon
display file or file system status
> stat

## Permissions with letters

chmod with Letters

Usage: chmod {options} filename

| Options | Definition          |
| u       | owner               |
| g       | group               |
| o       | other               |
| a       | all (same as ugo)   |
| x       | execute             |
| w       | write               |
| r       | read                |
| +       | add permission      |
| -       | remove permission   |
| =       | set permission      |

## Understanding umask



## SELinux Context Headers

> chcon -t httpd_sys_content_t file-name
> chcon -R -t httpd_sys_content_t 

Resource:

4.7. SELINUX CONTEXTS – LABELING FILES
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/selinux_users_and_administrators_guide/sect-security-enhanced_linux-working_with_selinux-selinux_contexts_labeling_files