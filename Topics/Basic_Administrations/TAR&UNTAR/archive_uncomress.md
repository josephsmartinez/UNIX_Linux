# Archive, Compress, Unpack, and Uncompress Files

## Compressing

> gzip file.txt

Flags: -c create -f file name
> tar -cvf myarchive.tar file1 file2 dir/ dir2/

View the contents of the tar 
> tar -t myarchive.tar

Make a tar.gz which is smaller in size
> gzip myarchive.tar

Filter the archive through gzip
> tar -cvzf other_archive.tar.gz  file1 file2 dir/ dir2/

Compression information
> gzip -l file.gz

## Decompressing

> gzip -d other_archive.tar.gz
> tar -xvf other_archive.tar.gz

Check the difference of files before decompressing
> tart - dvf other_archive.tar.gz
