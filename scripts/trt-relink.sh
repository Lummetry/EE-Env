getFileName() {
    path=$1
    filename=$(echo "$path" | awk -F '/' '{print $NF}')
    echo $filename
}

npath=/opt/conda/lib/python3.10/site-packages/nvidia
tpath=/opt/conda/lib/python3.10/site-packages/torch
lpath=/opt/conda/lib
cd $npath

files=`find . -name *.so*`

for ff in $files; do
  if [[ -L "$ff" ]]; then
    # Don't do anything if file is symlink
    echo File $ff is a symlink, skipping
    continue
  fi
  x=$(getFileName $ff)
  echo Running for shared object $x

  allfiles=`find $lpath -maxdepth 1 -name $x`
  allfiles=${allfiles}`find $tpath -name $x`

  for xx in $allfiles; do
    realfile=$xx
    if [[ -L "$xx" ]]; then
      realfile=`readlink -f $xx`
    fi

    rm $ff
    echo Linking $ff to $realfile
    ln -s $realfile $ff
    break
  done
done
