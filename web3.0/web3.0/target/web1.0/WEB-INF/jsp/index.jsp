<%--
  Created by IntelliJ IDEA.
  User: 寇笑宇，李耀港
  Date: 2020/7/18
  Time: 15:37
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
    </style>
</head>

<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">
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
                <form method="post" action="${pageContext.request.contextPath}/scholar/getScholarsByName">
                    <div class="searchbox">
                        <input type="text" name="search" placeholder="输入姓名查询">
                        <button class="layui-btn layui-btn-sm"><i class="layui-icon">&#xe615;</i>搜索</button>
                    </div>
                </form>
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
                            <li><a href="${pageContext.request.contextPath}/scholar/getScholarsBySchool?school=all"><i class="fa fa-circle-o"></i> 按院校</a></li>
                            <li><a href="${pageContext.request.contextPath}/scholar/getScholarsByMajor?major=all"><i class="fa fa-circle-o"></i> 按领域</a></li>
                            <li><a href="${pageContext.request.contextPath}/scholar/getAll"><i class="fa fa-circle-o"></i> 学者搜索</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-calendar"></i> <span>日历</span>
                            <span class="pull-right-container">
                                <small class="label pull-right bg-red">26</small>
                                <small class="label pull-right bg-blue">7</small>

                            </span>
                        </a>
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
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">学者挖掘</h3>
                            </div>
                            <div class="box-body">
                                <table id="example1" class="table table-striped table-hover">
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
                                        <li><a href="${pageContext.request.contextPath}/scholar/getAll?page=1&size=5" aria-label="Previous">首页</a></li>
                                        <li><a href="${pageContext.request.contextPath}/scholar/getAll?page=${pageInfos.pageNum-1}&size=5">上一页</a></li>
                                        <c:forEach items="${pageInfos.navigatepageNums}" var="pageNumber">
                                            <c:if test="${pageNumber==pageInfos.pageNum}">
                                                <li class="active"><a href="${pageContext.request.contextPath}/scholar/getAll?page=${pageNumber}&size=5">${pageNumber}</a></li>
                                            </c:if>
                                            <c:if test="${pageNumber!=pageInfos.pageNum}">
                                                <li><a href="${pageContext.request.contextPath}/scholar/getAll?page=${pageNumber}&size=5">${pageNumber}</a></li>
                                            </c:if>
                                        </c:forEach>
                                        <li><a href="${pageContext.request.contextPath}/scholar/getAll?page=${pageInfos.pageNum+1}&size=5">下一页</a></li>
                                        <li><a href="${pageContext.request.contextPath}/scholar/getAll?page=${pageInfos.pages}&size=5" aria-label="Next">尾页</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    <%--  搜索结果--%>
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">搜索结果</h3>
                            </div>
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
                                    <c:forEach var="scholar" items="${searchList}" >
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
                            </div>
                        </div>

                    </div>
                </div>
       						
            </section>
        </div>
           <!-- Add the sidebar's background. This div must be placed
            immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
    </div>
</div>
       <!-- ./wrapper -->
</body>

<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/static/plugins/jquery/jquery.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/static/dist/js/adminlte.min.js"></script>
<script src="${pageContext.request.contextPath}/turnPage.js"></script>
<script>

</script>

</html>