# Stream Editor

## Engine

- Some of BRE

## Return match inline

> cat Traffic_Violations.csv | sed -n '/VOLVO/p'

## Replace String in file

> sed -i 's/foo/bar/g' file
> sed -i 's/maxmemory.*/maxmemory 26gb/' /some/file/some/where.txt


## Deleting Text in Files

Delete particular line
> sed '2d' file
Delete range of lines
> sed '2,4d' file


Resources:

Unix Sed Command to Delete Lines in File - 15 Examples
https://www.folkstalk.com/2013/03/sed-remove-lines-file-unix-examples.html