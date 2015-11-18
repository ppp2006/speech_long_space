#!/bin/bash

if [ $# -lt 1 ];then
echo "Invalid param list"
echo "Usage: ./1_gen_txt.sh robot.ori"
exit
fi
name=$(echo $1 |sed 's/\.ori\w*\b//')
echo $name
./3_gen_lm.sh $name.txt
./4_gen_fileids.sh voice $name.fileids 
./5_gen_transcription.sh $name.ori
./6_gen_dict.sh $name.ori
