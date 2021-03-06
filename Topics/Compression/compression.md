# Archive, Compress, Unpack, and Uncompress Files

## About

Compressed files use less disk space and download faster than large, uncompressed files.

## Sections

- [Compressing](#compressing)
- [Decompressing](#decompressing)
- [Resources](#resources)

NOTE: Flag order matters!!!

## Commands

- `tar` compress and uncompress [tar, bz2, xz] files
- `gzip`
- `gunzip`
- `bzip2`
- `bzcat`
- `bunzip2`

## Compressing

> gzip file.txt

Flags: -c create -f file name
> tar -cvf myarchive.tar file1 file2 dir/ dir2/

View the contents of the tar
> tar -tvf myarchive.tar

Make a tar.gz which is smaller in size
> gzip myarchive.tar

View the content of the .gz file
> tar -ztvf myarchive.tar.gz

Filter the archive through gzip
> tar -cvz --file Directory.tar.gz
> tar -cvzf other_archive.tar.gz  file1 file2 dir/ dir2/

Compression information
> gzip -l file.gz

## Decompressing

> tar -xv --file Directory.tar.gz
> gzip -d other_archive.tar.gz
> tar -xvf other_archive.tar.gz

Check the difference of files before decompressing
> tar - dvf other_archive.tar.gz

Compress from other directory
> tar czf /tmp/backup.tar.gz -C /home/centos/ Directory

Uncompress tar file (.tar) to another directory
> tar xvC /var/tmp -f file.tar

### Resources

tar(1) - Linux man page
https://linux.die.net/man/1/tar

18 Tar Command Examples in Linux
https://www.tecmint.com/18-tar-command-examples-in-linux/
