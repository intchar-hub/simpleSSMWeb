<%--
  Created by IntelliJ IDEA.
  User: 李耀港
  Date: 2020/7/25
  Time:3.20
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
<meta charset="utf-8">
<title>详情</title>
<style type="text/css">
	.footer{
		position: fixed;
		bottom: 0;
		}
		.paragraph { background-image: url(${pageContext.request.contextPath}/3.png);
		                 background-repeat: repeat;
				}

</style>

</head>
<body>
<div class="paragraph">
	<div>
		<center><h2>学者介绍</h2></center>
		<marquee bgcolor="#00c0ef" behavior="scroll">
			<font color="white" size="+0.5">这里是${scholar.scholar_name}的个人详情页面</font>
		</marquee>
	</div>
	
	<!--center-->
	<div id="main" style="width: 100%;">
		<div class="left" style="width: 37%;float: left;">
		<h3 align="left">个人简介</h3>
		<table border="2" bordercolor="black">
			<tr>
				<th rowspan="2" align="left"><img src="${pageContext.request.contextPath}/static/dist/img/user2-160x160.jpg" height="200" width=""></img></th>
				<th>姓名</th>
				<td align="center">${scholar.scholar_name}</td>
	
			</tr>
			<tr>
				<th>工作院校</th>
				<td align="center">${scholar.school}</td>
				<th>研究领域</th>
				<td align="center">${scholar.major}</td>
			</tr>
		</table>
	</div>
	
	<div class="left" style="width: 63%;float:right;">
		<br>
		<br>
		<h4 align="left">${scholar.profile}</h4>
		
	</div>
	</div>
	
	 <div style="font-size:20px;color: #d43f3a"><span>${error_msg}</span></div>
	<!--/center-->
	<div class="footer">
	<HR>
	<div>
		各位学者信息数据均来自于高校官网，侵删 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		&emsp;&emsp;&emsp;&emsp;&emsp;
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		&emsp;&emsp;&emsp; by：希望实训没事小组
	</div>
	</div>
	</div>
</body>
</html>

