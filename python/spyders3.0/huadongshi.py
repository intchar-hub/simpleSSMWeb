# coding: utf-8

# author：赵宸浩
# createTime: 2020-07-21
# updateTime: 2020-07-21

from bs4 import BeautifulSoup
import requests
import pymysql
from Major import getMajor


url = [] # url列表
urls = []  # 学者的url
ids = []  # 学者的id
names = []  # 每个教授的姓名
majors = []  # 每个教授的领域
scholars = []  # 每个教授的简介
thisSchool = "华东师范大学"
thisName = "姓名"



count = 1
url = ['http://www.hr.ecnu.edu.cn/s/116/t/209/p/1/c/3538/d/15387/list.htm',#在职院士
     'http://www.hr.ecnu.edu.cn/s/116/t/209/p/1/c/3538/d/15388/list.htm']#已故院士
     


for j in range(3):
    try:
        start_url = 'http://www.hr.ecnu.edu.cn/s/116/t/209/p/1/c/3538/d/746'+str(3+j)#杰青#紫江#终身教授
        if j==0:
            depth = 3
        elif j==1:
            depth = 4
        elif j==2:
            depth = 11
        for i in range(depth):
            try:
                url.append(start_url + '/i/' + str(i + 1) + '/list.htm')
            except:
                continue

    except:
        continue
 

for i in range(len(url)):
    r = requests.get(url[i], timeout=30)
    r.raise_for_status()
    r.encoding = 'utf-8'

    # 读取所有学者的url
    soup = BeautifulSoup(r.text, 'html.parser')
    all = soup.find_all('a')
    for al in all:  
        if al["href"]!=None and al.get("href").find("info")!=-1:
            h = al.get('href')
        else:
            continue
        if h is None:
            continue
        else:
            temp = 'www.hr.ecnu.edu.cn' + h + '\n'
            temp = temp.strip()
            urls.append(temp)
urls=set(urls)#去除重复元素



# 读取每一个学者的信息
for line in urls:
    count += 1
   
    try:
        r = requests.get('http://' + line, timeout=30)
        if str(r.status_code).find("2")==-1:
            continue
        r.raise_for_status()
        r.encoding = r.apparent_encoding
    except Exception as e:
        print(e)
        break
    soup = BeautifulSoup(r.text, 'html.parser')
    news = soup.find_all('span', class_="content")
    for s in news:
        temp = s.get_text()
        temp = "".join(temp.split())
        temp = temp.strip()
        scholars.append(temp)
    
idCount=0
    # 分析字段
for each in scholars:
    idCount+=1
    if 0 < each.find("：") <= 3:
        thisName = each[0:each.find("：")]
    elif 0 < each.find("1") <= 3:
        thisName = each[0:each.find(("1"))]
    elif 0 < each.find("个") <= 3:
        thisName = each[0:each.find(("个"))]
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

