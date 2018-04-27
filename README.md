# character_recognition
Simple character recognition framework using deep learning (Keras)

How to use the classifer:
1) Download the dataset called EnglishImg.tgz from http://www.ee.surrey.ac.uk/CVSSP/demos/chars74k/.
2) Extract the file.
3) Run the script format_dataset.sh to move the images in appropriate folders.
4) Run the notebook character_recognition with Jupyter.

Alternatively, you can run the script format_digitsonly.sh to extract a small subset of the dataset. In this case, only digits will be considered with 20 images for the training set and 5 images for the validation set. The notebook character_recognition_digits contains the output of a working example on this subset.
