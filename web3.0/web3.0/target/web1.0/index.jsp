<%--
  Created by IntelliJ IDEA.
  User: 寇笑宇，李耀港
  Date: 2020/7/25
  Time: 3.21
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/yg_page.css">
    <style>
        table{
            text-align: center
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

        <%--  中间页面    --%>
   	<div class="content-wrapper zhuye_con">
       	    <section class="content-header">
       	        <!-- 标题 -->
       	       <h1>
       	           信息展示
       	       </h1>
       	       <!-- 面包屑导航条 -->
       	       <ol class="breadcrumb">
       	           <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
       	           <li class="active">信息展示</li>
       	       </ol>
       	        <div class="content yg_container">
       	                            <div class="row">
       	        <section class="content container-fluid">
       	                    <!-- Small boxes (Stat box) -->
       	                    <div class="row">
       	                        <div class="col-lg-3 col-xs-6">
       	                            <!-- small box -->
       	                            <div class="small-box bg-aqua">
       	                                <div class="inner">
       	                                    <h3>150</h3>
       	        
       	                                    <p>收录高校</p>
       	                                </div>
       	                                <div class="icon">
       	                                    <i class="ion ion-stats-bars"></i>
       	                                </div>
       	                                <a href="${pageContext.request.contextPath}/scholar/showScholarsBySchool" class="small-box-footer">更多 <i class="fa fa-arrow-circle-right"></i></a>
       	                            </div>
       	                        </div>
       	                        <!-- ./col -->
       	                        <div class="col-lg-3 col-xs-6">
       	                            <!-- small box -->
       	                            <div class="small-box bg-yellow">
       	                                <div class="inner">
       	                                    <h3>440</h3>
       	        
       	                                    <p>收录学者</p>
       	                                </div>
       	                                <div class="icon">
       	                                    <i class="ion ion-person-add"></i>
       	                                </div>
       	                                <a href="${pageContext.request.contextPath}/scholar/getAll" class="small-box-footer">更多 <i class="fa fa-arrow-circle-right"></i></a>
       	                            </div>
       	                        </div>
       	                        <!-- ./col -->
       	                        <div class="col-lg-3 col-xs-6">
       	                            <!-- small box -->
       	                            <div class="small-box bg-red">
       	                                <div class="inner">
       	                                    <h3>5</h3>
       	        
       	                                    <p>专业分类</p>
       	                                </div>
       	                                <div class="icon">
       	                                    <i class="ion ion-pie-graph"></i>
       	                                </div>
       	                                <a href="${pageContext.request.contextPath}/scholar/showScholarsByMajor" class="small-box-footer">更多 <i class="fa fa-arrow-circle-right"></i></a>
       	                            </div>
       	                        </div>
       	                        <!-- ./col -->

       	                    </div>
       	        

       	        </section>
       	</div>
           <!-- Add the sidebar's background. This div must be placed
            immediately after the control sidebar -->
           <div class="control-sidebar-bg"></div>
       </div>
       <!-- ./wrapper -->
            </section>
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

<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/static/plugins/jquery/jquery.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/static/dist/js/adminlte.min.js"></script>
<script src="${pageContext.request.contextPath}/turnPage.js"></script>
<script>
	$(document).ready(function () {
	    $('.calendar_con').css('display', 'none');
	
	    //  点击院校/领域 切换对应显示内容
	    $('.switch_zhuye').off().on('click', function () {
	        $('.zhuye_con').css('display', 'block');
	        $('.calendar_con').css('display', 'none');
	    })
	    $('.switch_calendar').off().on('click', function () {
	        $('.zhuye_con').css('display', 'none');
	        $('.calendar_con').css('display', 'block');
	    })
	})

</script>

</html>