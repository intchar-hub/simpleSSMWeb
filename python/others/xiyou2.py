#!/usr/bin/env python
# coding: utf-8

# In[4]:


#author:李耀港
#createTime: 2020-07-15
#updateTime: 2020-07-16
#代码行数：38



from bs4 import BeautifulSoup
import requests
import re

with open("xiyouurl3.txt","a+") as f:
    url='http://www.xiyou.edu.cn/szdw2/szdw1.htm'
    r=requests.get(url,timeout=30)
    r.raise_for_status()
    r.encoding='utf-8'

    soup=BeautifulSoup(r.text,'html.parser')
    al = soup.find_all('div',class_="sztt") 
    for al in al:
        w=al.a
        h = w.get('href')
        temp = 'www.xiyou.edu.cn/info/'+h[-14:]+'\n'
        f.write(temp)
    f.close()


# In[5]:


count=0
#打开文件读取每一个url
with open("xiyouurl2.txt","r") as f:
    for line in f.readlines():
        line = line.strip()
        count+=1
        #尝试爬取
        try:
            r = requests.get('http://'+line, timeout=30)
            r.raise_for_status()
            r.encoding = r.apparent_encoding
        except:
            print('Error')
            break   
        
        soup=BeautifulSoup(r.text,'html.parser')
        s=soup.find_all('div',class_="v_news_content")
        with open("xiyoucon.txt","a+",encoding='utf-8') as c:
            for s in s:        
                c.write(s.get_text())
            c.close()
            print("第%d篇爬取成功！……loading……"%(count))
            
        f.close()
print('DONE')


# In[ ]:




