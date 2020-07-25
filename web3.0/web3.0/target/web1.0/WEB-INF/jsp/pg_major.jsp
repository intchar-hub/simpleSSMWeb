<%--
  Created by IntelliJ IDEA.
  User: 寇笑宇，李耀港
  Date: 2020/7/20
  UpdateTime: 12:30
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>高校学者发现系统</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome图标 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons图标 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dist/css/AdminLTE.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="/yg_page.css">
    <style>

        table{
            text-align: center
        }

        .searchbox {
            float: right;
            width: 200px;
            height: 30px;
            border: 1px solid #00c0ef;
            border-radius: 5px;
            margin-top: 10px;
        }

        .searchbox input {
            width: 83%;
            height: 100%;
            background-color: transparent;
            float: left;
            background: none;
            outline: none;
            border: none;
        }

        .searchbox input:focus {
            border: none;
        }

        .searchbox span {
            display: inline-block;
            width: 14%;
            margin-top: 6px;
            color: #fff;
        }
        .boxxx{
            font-size: 2.7rem;
        }

        .dropbtn {
            background-color: #4CAF50;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            border-radius: 5px;
            left:0px;
            top:0px;
            z-index:10;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {background-color: #f1f1f1}

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #3e8e41;
        }

    </style>
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <header class="main-header">
        <!-- Logo -->
        <a href="#" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini">主页</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>系统</b>主页</span>
        </a>
        <!-- 头部导航条: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="${pageContext.request.contextPath}/static/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">用户</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="${pageContext.request.contextPath}/static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    个人用户 - XXX
                                    <small>入职时间：xx-xx-xx</small>
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">修改密码</a>
                                    </div>
                                </div>
                                <!-- /.row -->
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="${pageContext.request.contextPath}/gologin" class="btn btn-default btn-flat">登录</a>
                                </div>
                                <div class="pull-right">
                                    <a href="${pageContext.request.contextPath}/goregist" class="btn btn-default btn-flat">注册</a>
                                </div>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>

        </nav>
    </header>

    <!-- 左侧工具栏 -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- 用户面板 -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="${pageContext.request.contextPath}/static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>个人用户</p>
                </div>
            </div>

            <!-- 导航栏菜单-->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">导航栏</li>
                <li class="active">
                    <a href="${pageContext.request.contextPath}/goindex">
                        <i class="fa fa-th"></i> <span>主页</span>
                        <span class="pull-right-container"></span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>学者库</span>
                        <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                    </a>
                    <ul class="treeview-menu">
                       
                        <li><a href="${pageContext.request.contextPath}/scholar/showScholarsBySchool"><i class="fa fa-circle-o"></i> 按院校</a></li>
                        <li><a href="${pageContext.request.contextPath}/scholar/showScholarsByMajor"><i class="fa fa-circle-o"></i> 按领域</a></li>
						 <li><a href="${pageContext.request.contextPath}/scholar/getAll"><i class="fa fa-circle-o"></i>学者搜索</a></li>
                    </ul>
                </li>
                <li><li class="switch_calendar">
                <a href="#">
                    <i class="fa fa-calendar"></i> <span>日历</span>
                    <span class="pull-right-container">
                                <small class="label pull-right bg-red">26</small>
                                <small class="label pull-right bg-blue">7</small>

                            </span>
                </a>
            </li>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-share"></i> <span>关于系统</span>
                        <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>项目功能</span></a></li>
                        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>关于我们</span></a></li>
                        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>免责声明</span></a></li>
                    </ul>
                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
    <!-- 按院校展示页面 -->
    <div class="content-wrapper major_con">
        <!-- 页面内容头信息 -->
        <section class="content-header">
            <!-- 标题 -->
            <h3>
                共收录<font size="13" color="#a52a2a">5</font>个专业大类
                <!--   <small>控制面板</small>-->
            </h3>
            <!-- 面包屑导航条 -->
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 学者库</a></li>
                <li class="active">按领域</li>
            </ol>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="dropdown">
                            <div class="dropbtn">工程与技术科学类</div>
                            <div class="dropdown-content">
                            <li class="list-group-item"><a href="${pageContext.request.contextPath}/scholar/getScholarsByMajor?major=工程与技术科学类">工程与技术科学类</a></li>
                        </div>
                        </div>
                    </div>

                    <div class="col-lg-2 right_part">
                        <div class="dropdown">
                            <div class="dropbtn">农业科学</div>
                            <div class="dropdown-content">
                            <li class="list-group-item"><a href="${pageContext.request.contextPath}/scholar/getScholarsByMajor?major=农业科学类">农业科学类</a></li>
                        </div>
                        </div>
                    </div>

                    <div class="col-lg-2 right_part">
                        <div class="dropdown">
                            <div class="dropbtn">医药科学</div>
                            <div class="dropdown-content">
                            <li class="list-group-item"><a href="${pageContext.request.contextPath}/scholar/getScholarsByMajor?major=医药科学类">医药科学类</a></li>
                        </div>
                        </div>
                    </div>

                    <div class="col-lg-2 right_part">
                        <div class="dropdown">
                            <div class="dropbtn">自然科学类</div>
                            <div class="dropdown-content">
                            <li class="list-group-item"><a href="${pageContext.request.contextPath}/scholar/getScholarsByMajor?major=自然科学类">自然科学类</a></li>
                        </div>
                        </div>
                    </div>

                    <div class="col-lg-3 right_part">
                        <div class="dropdown">
                            <div class="dropbtn">人文与社会科学类</div>
                            <div class="dropdown-content">
                            <li class="list-group-item"><a href="${pageContext.request.contextPath}/scholar/getScholarsByMajor?major=人文与社会科学类">人文与社会科学类</a></li>
                        </div>
                        </div>
                    </div>

            </div>
        </section>

        <%--  中间页面    --%>
        <section class="content-header">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">学者挖掘</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table id="example2" class="table table-striped table-hover">
                                <thead>
                                <tr>
                                    <th>姓名</th>
                                    <th>学校</th>
                                    <th>领域</th>
                                    <th>个人页面</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="scholar" items="${pageInfos.list}" >
                                    <tr>
                                        <td>${scholar.scholar_name}</td>
                                        <td>${scholar.school}</td>
                                        <td>${scholar.major}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/scholar/getScholarByID?scholarId=${scholar.scholar_id}" >详细信息</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <div class="col-md-6">
                                总${pageInfos.pages}页，当前第${pageInfos.pageNum}页
                            </div>
                            <div class="col-md-6">
                                <ul class="pagination">
                                    <li><a href="${pageContext.request.contextPath}/scholar/getScholarsByMajor?major=${major}&page=1&size=5" aria-label="Previous">首页</a></li>
                                    <li><a href="${pageContext.request.contextPath}/scholar/getScholarsByMajor?major=${major}&page=${pageInfos.pageNum-1}&size=5">上一页</a></li>
                                    <c:forEach items="${pageInfos.navigatepageNums}" var="pageNumber">
                                        <c:if test="${pageNumber==pageInfos.pageNum}">
                                            <li class="active"><a href="${pageContext.request.contextPath}/scholar/getScholarsByMajor?major=${major}&page=${pageNumber}&size=5">${pageNumber}</a></li>
                                        </c:if>
                                        <c:if test="${pageNumber!=pageInfos.pageNum}">
                                            <li><a href="${pageContext.request.contextPath}/scholar/getScholarsByMajor?major=${major}&page=${pageNumber}&size=5">${pageNumber}</a></li>
                                        </c:if>
                                    </c:forEach>
                                    <li><a href="${pageContext.request.contextPath}/scholar/getScholarsByMajor?major=${major}&page=${pageInfos.pageNum+1}&size=5">下一页</a></li>
                                    <li><a href="${pageContext.request.contextPath}/scholar/getScholarsByMajor?major=${major}&page=${pageInfos.pages}&size=5" aria-label="Next">尾页</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


</div>
    <div class="content-wrapper calendar_con">
        <section class="content-header">
            <!-- 标题 -->
            <h1>
                日历
            </h1>
            <!-- 面包屑导航条 -->
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 日历</a></li>
                <li class="active">查看日历</li>
            </ol>
            <!-- 日历展示 -->
            <div align="center" class="boxxx" >
                <script language="javascript">
                    var my = new Date();

                    function showc() {
                        var k=1;
                        var j=1;
                        var today;
                        var tomonth;
                        var theday=1;//日期
                        var max;
                        var temp;
                        var tempday;//这个月第一天的星期
                        document.write ("<b>" + my.getFullYear() + "-" + (my.getMonth()+1) + "</b>");
                        document.write ("<table border='2' width='400' height='280'>");
                        document.write ("<tr>");
                        document.write ("<td height='23' width='39'><font color='red'><font size='4'>Sun</font></font></td>");
                        document.write ("<td height='23' width='39'><font size='4'>Mon</font></td>");
                        document.write ("<td height='23' width='39'><font size='4'>Tue</font></td>");
                        document.write ("<td height='23' width='39'><font size='4'>Wed</font></td>");
                        document.write ("<td height='23' width='39'><font size='4'>Thu</font></td>");
                        document.write ("<td height='23' width='39'><font size='4'>Fri</font></td>");
                        document.write ("<td height='23' width='39'><font size='4'>Sat</font></td>");
                        document.write ("</tr>");
                        temp=my.getDate();
                        my.setDate(1);
                        //document.write (my.getDate());
                        tempday=my.getDay();//返回第一天是星期几
                        my.setDate(temp);
                        today=my.getDay();//返回现在星期几

                        switch ((my.getMonth()+1)) {
                            case 1:
                            case 3:
                            case 5:
                            case 7:
                            case 8:
                            case 10:
                            case 12:
                                max=31;
                                break;
                            case 4:
                            case 6:
                            case 9:
                            case 11:
                                max=30;
                                break;
                            default:
                                max=29;//这里没有考虑闰月！！
                            //document.write (max);
                        }
                        for(k=0;k<6;k++) {
                            document.write ("<tr>");
                            for(j=0;j<=6;j++) {
                                document.write ("<td height='23' width='39'>");
                                if(j>=(tempday)) {
                                    tempday=0;//设置为最小，相当于取消判断条件
                                    if(theday<=max) {
                                        document.write ("<a title=" + my.getFullYear() + "-" + (my.getMonth()+1) + "-" +theday + " target='_blank' href=detail.asp?date=" + theday + ">");
                                        if(theday==my.getDate())
                                            document.write ("<font color='#00733E'><font size='4.2'>[" + theday + "]</font></font></a>");
                                        else if(j==0)
                                            document.write ("<font color='red'><font size='4'>" + theday + "</font></font></a>");
                                        else
                                            document.write ("<font size='4'>"+theday + "</font></a>");
                                        theday++;
                                    }
                                }
                                document.write ("</td>");
                            }
                            document.write ("</tr>");
                        }
                        document.write ("</table>");
                    }
                    showc();
                </script>
            </div>


        </section>
    </div>
</div>
</body>
<!-- ./wrapper -->
<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/static/plugins/jquery/jquery.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/static/dist/js/adminlte.min.js"></script>
<script src="/turnPage.js"></script>
<script>
    $(document).ready(function () {
        $('.calendar_con').css('display', 'none');

        //  点击院校/领域 切换对应显示内容
        $('.switch_major').off().on('click', function () {
            $('.major_con').css('display', 'block');
            $('.calendar_con').css('display', 'none');
        })
        $('.switch_calendar').off().on('click', function () {
            $('.major_con').css('display', 'none');
            $('.calendar_con').css('display', 'block');
        })
    })
</script>

</html>