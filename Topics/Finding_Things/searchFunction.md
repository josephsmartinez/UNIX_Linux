# Functions

Finding UID and GID Permission bits
> for file in `find ${DIR}/* -perm -2000`; do ls -la $file; done
> ls -la | grep -E "^...s......\." && ls -la | grep -E "^......s...\."