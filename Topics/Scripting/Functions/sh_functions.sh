

function find_gid_files(){
  for file in `find ${DIR}/* -perm -2000`; do 
    ls -la $file; 
  done
}

function find_gid_uid(){
  ls -la | grep -E "^...s......\." && ls -la | grep -E "^......s...\."
}