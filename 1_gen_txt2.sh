#!/bin/bash
awk '{for(i=2;i<=NF;i++)
{
if(i<NF){print "%s",$i}
else {print $i}
}
}' robot.ori|python gen_txt.py >robot.txt1;
while read SEQ LINE;do
#       if [ $line -eq 0 ];thendd
#       let line+=1;
#       continue;
#       fi
        let line+=1;
#       echo $LINE;
        echo ""$SEQ" <s> "$LINE" </s>">>robot.txt;
done <robot.txt1
