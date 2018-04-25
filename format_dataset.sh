#! /bin/bash

# Variables train_set and valid_set indicates the percentage of images to move in the corresponding folder.
# Set train_set=x*32768, where x is the percentage of images in the training set such that 0<x<1.
# Set valid_set=(x+y)*32768, where y is the percentage of images in the validation set such that 0<x+y<1.
# As default values, we used x=0.5, and y=0.15.

train_set=16384
valid_set=21299
path="English/Img/GoodImg/Bmp"
train_path="img/train"
valid_path="img/valid"
test_path="img/test"

mkdir -p model
mkdir -p img
mkdir -p $train_path
mkdir -p $valid_path
mkdir -p $test_path

for folder in $path/*
do
	folder_name=`echo $folder | cut -f 5 -d/`
	echo $folder_name
	mkdir -p $train_path/$folder_name
	mkdir -p $valid_path/$folder_name
	mkdir -p $test_path/$folder_name
	for filename in $folder/*
	do
		rand=$RANDOM
		if [ $rand -lt $train_set ]
		then
			cp $filename $train_path/$folder_name/
		elif [ $rand -lt $valid_set ]
		then
			cp $filename $valid_path/$folder_name/
		else
			cp $filename $test_path/$folder_name/
		fi
	done
done

