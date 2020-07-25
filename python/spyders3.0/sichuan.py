

# coding: utf-8

#author:李耀港,寇笑宇，李华逸
#createTime: 2020-07-15
#updateTime: 2020-07-21

from bs4 import BeautifulSoup
import requests
import pymysql
from Major import getMajor


urls=[]#学者的url
ids=[]#学者的id
names=[]#每个教授的姓名
majors=[]#每个教授的领域
scholars=[]#每个教授的简介
thisSchool = "四川大学"
count=0


url='http://rsc.scu.edu.cn/szdw/lyys.htm'
r=requests.get(url,timeout=30)
r.raise_for_status()
r.encoding='utf-8'

#读取所有学者的url
soup=BeautifulSoup(r.text,'html.parser')
tables = soup.find_all('table',class_="gridtable")
all_url =soup.find_all('a')


for u in all_url:
    if u["href"]!=None and u["href"].find("info")>0:
        h=u.get("href")
    else:
        continue
    if h is None:
        continue
    else:
        temp = 'rsc.scu.edu.cn/info/' + h[-14:] + '\n'
        temp=temp.strip()
        urls.append(temp)
urls=set(urls)#去重
    


#读取每一个学者的信息
for line in urls:
    count+=1
    try:
        r = requests.get('http://'+line, timeout=30)
        r.raise_for_status()
        r.encoding = r.apparent_encoding
    except Exception as e:
        print(e)
        break
    soup=BeautifulSoup(r.text,'html.parser')
    title =soup.find('h1',class_="detailtitle")
    name= title.span.text
    names.append(name)
    news=soup.find_all('div',class_="v_news_content")
    for s in news:
        temp=s.get_text()
        temp= "".join(temp.split())
        temp=temp.strip()
        scholars.append(temp)

idCount=0

#分析字段
for each in scholars:
    idCount+=1
    thisID=thisSchool+names[idCount-1]
    thisMajor = getMajor(each)
    ids.append(thisID)
    majors.append(thisMajor)

#存储入数据库
count=0
try:
    db=pymysql.connect("localhost","root","123456","user")
    cur=db.cursor()
    print("连接成功")
    for count in range(0,idCount):
        sql = "REPLACE INTO sholar(scholar_id,scholar_name,school,major,profile) VALUES ('%s','%s','%s','%s','%s')"%(ids[count],names[count],thisSchool,majors[count],scholars[count])
        cur.execute(sql)
        db.commit()
        count+=1
        print(count)
        print(names[count])
        print(majors[count])
        print(scholars[count])
    print(count)
except Exception as e:
    db.rollback()
    print("Fail")
finally:
    cur.close()
    db.close()
    print("CLOSE")

