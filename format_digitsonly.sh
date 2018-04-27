#! /bin/bash

# Move digit images to the folder img_digits. Select 20 images for the training set and 5 for the validation set.

path="English/Img/GoodImg/Bmp"
train_path="img_digits/train"
valid_path="img_digits/valid"
test_path="img_digits/test"

mkdir -p model
mkdir -p img_digits
mkdir -p $train_path
mkdir -p $valid_path
mkdir -p $test_path

count=0
for folder in $path/*; do
	i=0
	folder_name=`echo $folder | cut -f 5 -d/`
	echo $folder_name
	mkdir -p $train_path/$folder_name
	mkdir -p $valid_path/$folder_name
	mkdir -p $test_path/$folder_name
	for filename in $folder/*; do
		if [ $i -lt 20 ]; then
			cp $filename $train_path/$folder_name/
		elif [ $i -lt 25 ]; then
			cp $filename $valid_path/$folder_name/
		else
			cp $filename $test_path/$folder_name/
		fi
		((i++))
	done
	((count++))
	if [ $count -eq 10 ]; then
		break
	fi
done

