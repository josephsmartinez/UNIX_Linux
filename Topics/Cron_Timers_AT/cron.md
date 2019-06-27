# Cron

## About

cron is a time-based job scheduler in Unix-like computer operating systems. *There are two types of crontab files. The system-wide crontab files and individual user crontab files.*

Users crontab files are stored by the user’s name and their location varies by operating systems. In Red Hat based system such as CentOS, crontab files are stored in the `/var/spool/cron` directory while on Debian and Ubuntu files are stored in the `/var/spool/cron/crontabs` directory.

`/etc/crontab` and the files inside the `/etc/cron.d` directory are system-wide crontab files which can be edited only by the system administrators.

In most Linux distributions you can also put scripts inside the `/etc/cron.{hourly,daily,weekly,monthly}` directories and the scripts will be executed every hour/day/week/month.

## Sections

- [Time Formats](#time-formats)
- [Crontab Variables]()
- [Crontab Restrictions]()
- [Creating Jobs](#creating-jobs)
- [Job Examples](#job-examples)
- [Resources](#resources)

## Time Formats

``` console
# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name  command to be executed
```

- The asterisk `*` operator means any value or always. If you have the asterisk symbol in the Hour field it means the task will be performed each hour.
The comma `,` operator allows you to specify a list of values for repetition. For example, if you have `1,3,5` in the Hour field, the task will run at 1 am, 3 am and 5 am.

- The hyphen `-` operator allows you to specify a range of values. If you have `1-5` in the Day of week field the task will run every weekday (From Monday to Friday).

- The slash `/` operator allows you to specify values that will be repeated over a certain interval between them. For example, if you have `*/4` in the Hour field it means the action will be performed every four hours. It is same as specifying `0,4,8,12,16,20`. Instead of asterisk before the slash operator you can also use a range of values, `1-30/10` means the same as `1,11,21`.

Run a command at 15:00 on every day from Monday through Friday:
> 0 15 * * 1-5 command
Run a script every 5 minutes and redirected the standard output to dev null, only the standard error will be sent to the specified e-mail address:
> MAILTO=email@example.com */5 * * * * /path/to/script.sh > /dev/null

## Crontab Variables

The cron daemon automatically sets several environment variables.

The default path is set to PATH=/usr/bin:/bin. If the command you are calling is present in the cron specified path you can either use the absolute path to the command or change the cron $PATH variable. You can’t implicitly append :$PATH as you would do with a normal script.
The default shell is set to /bin/sh. You can set a different shell by changing the SHELL variable.
Cron invokes the command from the user’s home directory. The HOME variable can be overridden by settings in the crontab.
The email notification is sent to the owner of the crontab. To overwrite the default behavior you can use the MAILTO environment variable with a list (comma separated) of all the email addresses you want to receive the email notifications. If MAILTO is defined but empty (MAILTO=""), no mail is sent.

## Crontab Restrictions

System administrators can control which users have access to the crontab command by using the /etc/cron.deny and /etc/cron.allow files. The files consist of a list of usernames, one user name per line.
By default only the /etc/cron.deny file exists and is empty which means that all users can use the crontab command. If you want to deny access to the crontab commands to a specific user add the username to this file.

If the /etc/cron.allow file exists, only the users who are listed in this file can use the crontab command.

If neither file exists, only the users with administrative privileges can use crontab command.

## Creating Jobs

Creating jobs for users with `contab`
``` console
crontab -e Edit or create a crontab file if doesn’t already exist.
crontab -l To Display the crontab file.
crontab -r To Remove the crontab file.
crontab -v To Display the last time you edited your crontab file. (This option is only available on a few systems.)
crontab -u <username> Edit other use crontab file. Requires system administrator privileges
```

The crontab can be created easily by using the crontab command.
> contab -e

Create systemwide jobs
> vim /etc/crontab

## Job Examples

``` conf
SHELL=/bin/bash
PATH=/sbin:/bin:/usr/sbin:/usr/bin
MAILTO=root

# For details see man 4 crontabs

# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name  command to be executed

# Autoupdate

# Mail Status Report

# Check Users on Systems

# Flag GID and UID Files

# Check Installed Software

# Review Open Port in Use

# Resync Time Clock

# Check Log Files

# MySQL Database backup
*  *  *  *  * /usr/bin/mysqldump --defaults-file=/root/.my.cnf -u root --all-databases --single-transaction --quick --lock-tables=false  > /root/Documents/SqlBackup/full-backup-$(date +%F).$(date +"%T").sql
```

## Resources


https://linuxize.com/post/scheduling-cron-jobs-with-crontab/