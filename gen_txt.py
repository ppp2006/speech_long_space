#encoding=utf-8

import sys
import jieba

reload(sys)
sys.setdefaultencoding("utf-8")
for line in sys.stdin:
    ju_zi = line.rstrip('\n')
    ju_zi.decode('utf-8')
    juzi_list=ju_zi.split(' ')
    content=juzi_list[2]
    seg_list = []
    seg_list1 = jieba.cut(content) #jieba return decoded utf-8 string!!
    for seg in seg_list1:
        seg_list.append(seg)
#        print seg,
    print juzi_list[0]+ ' ' +juzi_list[1] + ' ' + ' '.join(seg_list) + ' ' + juzi_list[3]
#    print seg_list

            
