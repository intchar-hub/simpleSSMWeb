# coding: utf-8

# author：赵宸浩
# createTime: 2020-07-23
# updateTime: 2020-07-23

from bs4 import BeautifulSoup
import requests
from Major import getMajor
import pymysql

urls = []  # 学者的url
ids = []  # 学者的id
names = []  # 每个教授的姓名
majors = []  # 每个教授的领域
scholars = []  # 每个教授的简介
thisSchool = "清华大学"
thisName = "姓名"





count = 1
url1 = 'https://www.tsinghua.edu.cn/szdw1/jcrc/lyys1.htm'#院士


r = requests.get(url1, timeout=30)
r.raise_for_status()
r.encoding = 'utf-8'

# 读取所有学者的url
soup = BeautifulSoup(r.text, 'html.parser')
all = soup.find_all('a')
for al in all:  
    try:
        if al["href"]!=None and al.get("href").find("info")!=-1:
            h = al.get('href')
        else:
            continue
        if h is None:
            continue
        else: 
            temp =  'https://www.tsinghua.edu.cn/info/' + h[-13:] + '\n'
            temp = temp.strip()
            urls.append(temp)
    except Exception as e:
        continue





urls=set(urls)#去除重复元素



# 读取每一个学者的信息
for line in urls:
    count += 1
   
    try:
        r = requests.get(line, timeout=30)
       
        r.raise_for_status()
        r.encoding = r.apparent_encoding
    except Exception as e:
        print(e)
        break
    soup = BeautifulSoup(r.text, 'html.parser')
    news = soup.find_all('div', class_="v_news_content")
    for s in news:
        temp = s.get_text()
        temp = "".join(temp.split())
        temp = temp.strip()
        scholars.append(temp)
    

idCount = 0



    # 分析字段
for each in scholars:
    idCount += 1
    if 0 < each.find("，") <= 3:
        thisName = each[0:each.find("，")]
    elif 0 < each.find("（") <= 3:
        thisName = each[0:each.find(("（"))]
    elif 0 < each.find("(") <= 3:
        thisName = each[0:each.find(("("))]
    elif 0 < each.find(",") <= 3:
        thisName = each[0:each.find((","))]
    
    thisID = thisSchool + thisName
    thisMajor = getMajor(each)
    ids.append(thisID)
    names.append(thisName)
    majors.append(thisMajor)



#存储入数据库
count=0
try:
    db=pymysql.connect("localhost","root","123456","user")
    cur=db.cursor()
    print("连接成功")
    for count in range(0,idCount-1):
        sql = "REPLACE INTO sholar(scholar_id,scholar_name,school,major,profile) VALUES ('%s','%s','%s','%s','%s')"%(ids[count],names[count],thisSchool,majors[count],scholars[count])
        cur.execute(sql)
        db.commit()
        
        print(count)
        print(names[count])
        print(majors[count])
        print(scholars[count])
        count+=1
    print(count)
except Exception as e:
    db.rollback()
    print("Fail")
finally:
    cur.close()
    db.close()
    print("CLOSE")


#count = 0
#for count in range(0, idCount-1):
#    try:
        
#        print(count)
#        print(names[count])
#        print(majors[count])
#        print(scholars[count])
#        count += 1
        
#    except Exception as e:
#        print(count)
#        print("Fail")
#    finally:
#        print(count)
#        print("CLOSE")
#print(count)


