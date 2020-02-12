#!/bin/bash
echo '----------------------'
echo 'Download file from GCS'
echo '----------------------'

gsutil cp gs://image-recognition-project/picture/$1 .

echo '----------------------'
echo 'Excute script on file'
echo '----------------------'


python classify_image.py --image_file $1

echo '----------------------'
echo 'Delete file'
echo '----------------------'

rm $1
