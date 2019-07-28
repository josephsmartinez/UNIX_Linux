# Git and Git Management

## Quich HOW TOs

- change username and password

## Git Protcols

- git
- https

## Git Repository Listing

COMMIT_EDITMG - plain text file records the commits
HEAD - reference to the current branch
config - configuration file for user information and repo
decription - contain the name of the repo
hooks - contains script used to automate processes during the commit phases
index - contains staging area and commmit information
info  -
logs - logs
objects - database of compressed file with hashed contents the have been commited the repo  
refs -

## Configure username and password

> git config --list
> git config [--global] user.name "Full Name"
> git config [--global] user.email "email@address.com"
> git config --global user.name ""
> git config --global user.email ""
> git config user.name ""
> git config user.email ""

## Creating  a Local Git Reposity

initializes  a git repository
> git init /path/to/direcory
initizlizes a bare git repository, for larger project, contains no working area
> git init --bare /path/to/directory

## Adding and Removing files from repository

> git add
> git status
> git rm [file]

## Using git status

> git status
view the output in shortened format
> git status -s
get more verbose output including what was changed in a file
> git status -v

## Committing to Git

> git commit
> git commit -m "commit message"
commit a modified file in the stagin area
> git commit -a -m "message"

## Ignore certaub file types

> touch .gitignore
> git check-ignore `<pattern>`

## Using Tags

- Annotated Tages (most common)
- Lightweight Tags

## Using Branches

> git branch
> git checkout <branch_name>
> git ckeckout -b <branch_name>
> git merge <branch_to_merge_to>
> git branch -d `<branch>`

## Rebasing

## Reverting a Commit

> git revert

================

## Pushing to a repository

> git init
> git add [filename]
> git commit -m "Adding files"
> git status

## Configure Username and User Email

> git config --global user.name johndoe
> git config --global user.email

## Logs

> git log
> git log --graph
> git log --stat
> git log --pretty=format
will display the one per line history of the commits
> git log --oneline

## Stash the changes

Uncommitted changes
> git stash save "description of changes"

## Reset git head and Revert (How to undo all uncommitted changes)

WARNING: Well, best practice is for you to stash the changes in case you were mistaken and later decide that you really wanted them after all

> git reset --hard

Revert
> git revert `<commit>`
> git revert HEAD~2

Soft reset
> git reset HEAD
Undo `git --reset`
> git reset 'HEAD@{1}'

## Differences

> git diff
> git diff <1615681> <11561651>

## Garbage Collection

> git gc
> git gc --prunce
> git config gc.pruneexpire "30 days"

## Cloning Local Respositories and HTTPS

> git clone `<local_repo> <new_repo>`
> git clone https://somerepo.git

## Tacking Remote Repositories

> git remote -v
> git fetch

## Push, Push, and Create Pull Request

[Git SSH key setup](https://stackoverflow.com/questions/34400272/visual-studio-code-always-asking-for-git-credentials/50420113#50420113)

Git ignore Files
https://github.com/github/gitignore

Create useful .gitignore files for your project
https://www.gitignsore.io/

Using Version Control in VS Code
https://code.visualstudio.com/Docs/editor/versioncontrol

Resources to learn Git
https://try.github.io/

Tagging commits
https://git-scm.com/book/en/v2/Git-Basics-Tagging

Git Branching
https://git-scm.com/book/en/v2/Git-Branching-Branch-Management

Git Rebase
https://git-scm.com/book/en/v2/Git-Branching-Rebasing