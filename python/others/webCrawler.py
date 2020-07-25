import requests

 
def getHTMLText(url):
    try:
        r = requests.get(url, timeout=30)
        r.raise_for_status()
        r.encoding = r.apparent_encoding
        return r.text
    except:
        return ""

def main():
   html=getHTMLText('https://www.whu.edu.cn/')
   print(html)
main()