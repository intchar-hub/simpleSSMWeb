
# author：寇笑宇
# createTime: 2020-07-22
# updateTime: 2020-07-22



majors_1 = ["农业科学", "农学", "林学", "畜牧", "兽医", "水产"]  # 农业科学类
majors_2 = ["基础医学", "临床医学", "预防医学", "公共卫生学", "军事医学", "特种医学", "医学", "药学", "中医", "中药"]  # 医药科学类
majors_3 = ["工程", "测绘科学", "材料", "矿山", "冶金", "机械", "动力", "电气", "能源", "核", "电子科技", "通信", "自动控制", "计算机", "软件",
			"产品应用", "纺织", "食品", "土木", "建筑", "水利", "交通", "运输", "航空", "航天", "环境科学", "资源科学", "安全科学技术",
			"网络"]  # 工程与技术科学类
majors_4 = ["自然科学", "数学", "力学", "物理", "化学", "天文", "地球", "生物", "心理", "量子", "应用", "地质", "动物","植物"]  # 自然科学类
majors_5 = ["人文与社会科学", "马克思主义", "哲学", "宗教", "语言", "文学", "艺术", "历史", "考古", "经济", "政治", "法学", "军事", "社会", "民族",
			"文化", "新闻", "传播",
			"图书", "情报", "文献", "教育", "体育", "统计", "管理", "商务"]  # 人文与社会科学类


def getMajor(profile):
	if any(major in profile for major in majors_1):
		return "农业科学类"
	elif any(major in profile for major in majors_2):
		return "医药科学类"
	elif any(major in profile for major in majors_3):
		return "工程与技术科学类"
	elif any(major in profile for major in majors_4):
		return "自然科学类"
	elif any(major in profile for major in majors_5):
		return "人文与社会科学类"
	else:
		return "未知"