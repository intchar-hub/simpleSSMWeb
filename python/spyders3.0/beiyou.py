# coding: utf-8

# author：赵宸浩
# createTime: 2020-07-25
# updateTime: 2020-07-25

from bs4 import BeautifulSoup
import requests
from Major import getMajor
import pymysql


ids = []  # 学者的id
names = []  # 每个教授的姓名
majors = []  # 每个教授的领域
scholars = []  # 每个教授的简介
thisSchool = "北京邮电大学"
thisName = "姓名"

url='https://zsb.bupt.edu.cn/content/content.php?p=6_12_13'

r = requests.get(url, timeout=30)
r.raise_for_status()
r.encoding = 'utf-8'
soup=BeautifulSoup(r.text,'html.parser')

for s in soup.find_all('tr'):
    temp = s.get_text()
    temp = "".join(temp.split())
    temp = temp.strip()
    scholars.append(temp)

idCount = 0

for each in scholars:
    idCount += 1
    if 0 < each.find("院") <= 3:
        thisName = each[0:each.find("院")]
    
    
    thisID = thisSchool + thisName
    thisMajor = getMajor(each)
    ids.append(thisID)
    names.append(thisName)
    majors.append(thisMajor)



##存储入数据库
#count=0
#try:
#    db=pymysql.connect("localhost","root","123456","user")
#    cur=db.cursor()
#    print("连接成功")
#    for count in range(0,idCount-1):
#        sql = "REPLACE INTO sholar(scholar_id,scholar_name,school,major,profile) VALUES ('%s','%s','%s','%s','%s')"%(ids[count],names[count],thisSchool,majors[count],scholars[count])
#        cur.execute(sql)
#        db.commit()
        
#        print(count)
#        print(names[count])
#        print(majors[count])
#        print(scholars[count])
#        count+=1
#    print(count)
#except Exception as e:
#    db.rollback()
#    print("Fail")
#finally:
#    cur.close()
#    db.close()
#    print("CLOSE")


count = 0
for count in range(0, idCount-1):
    try:
        
        print(count)
        print(names[count])
        print(majors[count])
        print(scholars[count])
        count += 1
        
    except Exception as e:
        print(count)
        print("Fail")
    finally:
        print(count)
        print("CLOSE")
print(count)