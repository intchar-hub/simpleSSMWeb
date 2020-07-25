

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
thisSchool = "上海交通大学"
count=0
    

url='https://www.sjtu.edu.cn/zgkxyys/index.html'
r=requests.get(url,timeout=30)
r.raise_for_status()
r.encoding='utf-8'

#读取所有学者的url
soup=BeautifulSoup(r.text,'html.parser')

all_url =soup.find_all('a')


for u in all_url:
    #print (u)
    if u["href"]!=None and u["href"].find("20181024")>0:
        h=u.get("href")
        #print (h)
    else:
        continue
    if h is None:
        continue
    else:
        temp = 'www.sjtu.edu.cn' + h[0:] + '\n'
        temp=temp.strip()
        #print (temp)
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
    title =soup.find('div',class_='Article no-padding-top').find('h2')
    nametext=title.text
    if ord(nametext[0]) not in (97,122) and ord(nametext[0]) not in (65,90): 
        name= ''.join(nametext.split())
    #print ('135')
    #print (nametext,name)
    names.append(name)
    news=soup.find_all('div',class_="col-sm-9")
    for s in news:
        temp=s.get_text()
        temp= "".join(temp.split())
        temp=temp.strip()
        scholars.append(temp)

idCount=0


# #判断学科
# def getMajor(profile):
#     majors_1 = ["农业科学","农学", "林学", "畜牧", "兽医", "水产"]  # 农业科学类
#     majors_2 = ["基础医学", "临床医学", "预防医学", "公共卫生学", "军事医学", "特种医学", "医学", "药学", "中医", "中药"]  # 医药科学类
#     majors_3 = ["工程" , "测绘科学", "材料", "矿山", "冶金", "机械", "动力", "电气", "能源", "核", "电子科技", "通信", "自动控制", "计算机", "软件",
#                 "产品应用", "纺织", "食品", "土木", "建筑", "水利", "交通", "运输", "航空", "航天", "环境科学", "资源科学", "安全科学技术","网络"]  # 工程与技术科学类
#     majors_4 = ["自然科学","数学", "力学", "物理", "化学", "天文", "地球", "生物", "心理" , "量子" , "应用"]  # 自然科学类
#     majors_5 = ["人文与社会科学","马克思主义", "哲学", "宗教", "语言", "文学", "艺术", "历史" , "考古", "经济", "政治", "法学", "军事", "社会", "民族", "文化", "新闻", "传播",
#                 "图书", "情报", "文献", "教育", "体育", "统计", "管理" , "商务"]  # 人文与社会科学类
#     thisMajor = "未知"
#     if any(major in profile for major in majors_1):
#         return "农业科学类"
#     elif any(major in profile for major in majors_2):
#         return "医药科学类"
#     elif any(major in profile for major in majors_3):
#         return "工程与技术科学类"
#     elif any(major in profile for major in majors_4):
#         return "自然科学类"
#     elif any(major in profile for major in majors_5):
#         return "人文与社会科学类"
#     else:
#         return "未知"


#分析字段
for each in scholars:
    idCount+=1
    
#     if 0<each.find("：")<=3:
#         thisName=each[0:each.find("：")]
#     elif 0<each.find(":")<=3:
#         thisName=each[0:each.find(":")]
#     elif 0<each.find("，")<=3:
#         thisName=each[0:each.find(("，"))]
        
    
    thisID=thisSchool+names[idCount-1]
    thisMajor=getMajor(each)
    ids.append(thisID)

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

