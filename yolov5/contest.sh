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
      python3 detect.py --weights runs/train/exp3/weights/best.pt --img 1536 --conf 0.01 --source $file2 --save-txt --project $file1 --name ${a: -1}"_result" --exist-ok --save-conf
      python yolo_to_voc.py $file1"/"${a: -1}"_result"
      rm -rf $file1"/"${a: -1}"_result/"*.txt
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
      python3 detect.py --weights runs/train/exp3/weights/best.pt --img 1536 --conf 0.01 --source $file2 --save-txt --project $file1 --name ${a: -1}"_result" --exist-ok --save-conf
      python yolo_to_voc.py $file1"/"${a: -1}"_result"
      rm -rf $file1"/"${a: -1}"_result/"*.txt
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
      python3 detect.py --weights runs/train/exp3/weights/best.pt --img 1536 --conf 0.01 --source $file2 --save-txt --project $file1 --name ${a: -1}"_result" --exist-ok --save-conf
      python yolo_to_voc.py $file1"/"${a: -1}"_result"
      rm -rf $file1"/"${a: -1}"_result/"*.txt
    fi
  done
done


