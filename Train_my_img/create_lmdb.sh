#!/usr/bin/env sh
    MY=examples/myfile


    echo "Create train lmdb.."
    rm -rf $MY/img_train_lmdb
    build/tools/convert_imageset \
    --shuffle \
    --resize_height=256 \
    --resize_width=256 \
    /home/xxx/caffe/data/re/ \
    $MY/train.txt \
    $MY/img_train_lmdb


    echo "Create test lmdb.."
    rm -rf $MY/img_test_lmdb
    build/tools/convert_imageset \
    --shuffle \
    --resize_width=256 \
    --resize_height=256 \
    /home/xxx/caffe/data/re/ \
    $MY/test.txt \
    $MY/img_test_lmdb


    echo "All Done.."

    注：代码中的shuffle为，打乱图片顺序。/home/xxx/caffe/data/re为下载的图像数据保存的绝对路径。

    最后，运行这个脚本

    #sudo sh examples/myfile/create_lmdb.sh
