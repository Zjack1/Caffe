#!/usr/bin/env sh
    DATA=data/re/
    MY=examples/myfile

    echo "Create train.txt..."
    rm -rf $MY/train.txt
    for i in 3 4 5 6 7 
    do
    find $DATA/train -name $i*.jpg | cut -d '/' -f4-5 | sed "s/$/ $i/">>$MY/train.txt
    done
    echo "Create test.txt..."
    rm -rf $MY/test.txt
    for i in 3 4 5 6 7
    do
    find $DATA/test -name $i*.jpg | cut -d '/' -f4-5 | sed "s/$/ $i/">>$MY/test.txt
    done
    echo "All done"
    
    
    rm：删除文件

    find：寻找文件

    cut ：截取路径

    sed：在每行的最后面加上标注。本例中将找到的“i*.jpg”文件加入标注为i，比如“3*.jpg”标注为3

    cat：将两个类别合并在一个文件里。

    然后，运行此脚本

    #sudo sh examples/myfile/create_filelist.sh
