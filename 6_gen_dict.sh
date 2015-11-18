#!/bin/bash
if [ $# -lt 1 ];then
echo "Invalid param list"
echo "Usage: ./6_gen_dic.sh robot.ori"
exit
fi
name=$(echo $1 |sed 's/\.\w*\b//')
echo $name
awk '{for(i=1;i<=NF;i++)
{
if(i<NF){print "%s",$i}
else {print $i}
}
}' $name.vocab |python gen_tone.py >$name.dic
