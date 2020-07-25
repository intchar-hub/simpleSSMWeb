{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 4,
   "metadata": {},
   "outputs": [],
   "source": [
    "#author:李耀港\n",
    "#createTime: 2020-07-15\n",
    "#updateTime: 2020-07-16\n",
    "#代码行数：38\n",
    "\n",
    "\n",
    "\n",
    "from bs4 import BeautifulSoup\n",
    "import requests\n",
    "import re\n",
    "\n",
    "with open(\"xiyouurl3.txt\",\"a+\") as f:\n",
    "    url='http://www.xiyou.edu.cn/szdw2/szdw1.htm'\n",
    "    r=requests.get(url,timeout=30)\n",
    "    r.raise_for_status()\n",
    "    r.encoding='utf-8'\n",
    "\n",
    "    soup=BeautifulSoup(r.text,'html.parser')\n",
    "    al = soup.find_all('div',class_=\"sztt\") \n",
    "    for al in al:\n",
    "        w=al.a\n",
    "        h = w.get('href')\n",
    "        temp = 'www.xiyou.edu.cn/info/'+h[-14:]+'\\n'\n",
    "        f.write(temp)\n",
    "    f.close()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "第1篇爬取成功！……loading……\n",
      "第2篇爬取成功！……loading……\n",
      "第3篇爬取成功！……loading……\n",
      "第4篇爬取成功！……loading……\n",
      "第5篇爬取成功！……loading……\n",
      "第6篇爬取成功！……loading……\n",
      "第7篇爬取成功！……loading……\n",
      "第8篇爬取成功！……loading……\n",
      "第9篇爬取成功！……loading……\n",
      "第10篇爬取成功！……loading……\n",
      "第11篇爬取成功！……loading……\n",
      "第12篇爬取成功！……loading……\n",
      "第13篇爬取成功！……loading……\n",
      "第14篇爬取成功！……loading……\n",
      "第15篇爬取成功！……loading……\n",
      "第16篇爬取成功！……loading……\n",
      "第17篇爬取成功！……loading……\n",
      "第18篇爬取成功！……loading……\n",
      "第19篇爬取成功！……loading……\n",
      "第20篇爬取成功！……loading……\n",
      "第21篇爬取成功！……loading……\n",
      "第22篇爬取成功！……loading……\n",
      "第23篇爬取成功！……loading……\n",
      "第24篇爬取成功！……loading……\n",
      "第25篇爬取成功！……loading……\n",
      "第26篇爬取成功！……loading……\n",
      "第27篇爬取成功！……loading……\n",
      "第28篇爬取成功！……loading……\n",
      "第29篇爬取成功！……loading……\n",
      "第30篇爬取成功！……loading……\n",
      "第31篇爬取成功！……loading……\n",
      "第32篇爬取成功！……loading……\n",
      "Error\n",
      "DONE\n"
     ]
    }
   ],
   "source": [
    "count=0\n",
    "#打开文件读取每一个url\n",
    "with open(\"xiyouurl2.txt\",\"r\") as f:\n",
    "    for line in f.readlines():\n",
    "        line = line.strip()\n",
    "        count+=1\n",
    "        #尝试爬取\n",
    "        try:\n",
    "            r = requests.get('http://'+line, timeout=30)\n",
    "            r.raise_for_status()\n",
    "            r.encoding = r.apparent_encoding\n",
    "        except:\n",
    "            print('Error')\n",
    "            break   \n",
    "        \n",
    "        soup=BeautifulSoup(r.text,'html.parser')\n",
    "        s=soup.find_all('div',class_=\"v_news_content\")\n",
    "        with open(\"xiyoucon.txt\",\"a+\",encoding='utf-8') as c:\n",
    "            for s in s:        \n",
    "                c.write(s.get_text())\n",
    "            c.close()\n",
    "            print(\"第%d篇爬取成功！……loading……\"%(count))\n",
    "            \n",
    "        f.close()\n",
    "print('DONE')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.7.6"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
