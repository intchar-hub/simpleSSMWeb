# coding: utf-8

#author:李耀港,寇笑宇
#createTime: 2020-07-15
#updateTime: 2020-07-16

import pymysql

def sqlStore(ids,names,school,majors,scholars):
	count = 0
	try:
		db = pymysql.connect("localhost", "root", "123456", "user")
		cur = db.cursor()
		for count in range(0, len(scholars)):
			sql = "REPLACE INTO sholar(scholar_id,name,school,mahor,profile)VALUES (%s,%s,%s,%s)"
			cur.execute(sql, (ids[count], names[count], school,majors[count], scholars[count]))
			count += 1
	except Exception as e:
		print(e)
	finally:
		cur.close()
		db.close()