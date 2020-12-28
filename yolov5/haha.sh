#!bin/bash

for file1 in ~/yolo/bbox/1/*
do
  for file2 in $file1/*
  do
    a=$file2
    b=${a: -1}
    c='t'
    if [[ "${b}" != "${c}" ]]
    then
      rm -rf $file2
    fi
  done
done

echo "        "

for file1 in ~/yolo/bbox/2/*
do
  for file2 in $file1/*
  do
    a=$file2
    b=${a: -1}
    c='t'
    if [[ "${b}" != "${c}" ]]
    then
      rm -rf $file2
    fi
  done
done

for file1 in ~/yolo/bbox/3/*
do
  for file2 in $file1/*
  do
    a=$file2
    b=${a: -1}
    c='t'
    if [[ "${b}" != "${c}" ]]
    then
      rm -rf $file2
    fi
  done
done
