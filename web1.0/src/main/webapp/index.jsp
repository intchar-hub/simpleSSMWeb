<%--
  Created by IntelliJ IDEA.
  User: 寇笑宇,李耀港
  Date: 2020/7/11
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>高校学者发现系统</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <!-- Font Awesome图标 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
    <!-- Ionicons图标 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/AdminLTE.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/_all-skins.min.css">
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
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
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
                            <img src="resources/static/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">用户</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="resources/static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

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
                                    <a href="${pageContext.request.contextPath}/user/gologin" class="btn btn-default btn-flat">登录</a>
                                </div>
                                <div class="pull-right">
                                    <a href="${pageContext.request.contextPath}/user/goregist" class="btn btn-default btn-flat">注册</a>
                                </div>
                            </li>
                        </ul>
                    </li>


                </ul>
            </div>
            <div class="searchbox"><input type="text"><span class="fa fa-search"></span></div>
        </nav>
    </header>
    <!-- 左侧工具栏 -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- 用户面板 -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="resources/static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>个人用户</p>
                </div>
            </div>

            <!-- 导航栏菜单-->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">导航栏</li>
                <li class="active">
                    <a href="#">
                        <i class="fa fa-th"></i> <span>主页</span>
                        <span class="pull-right-container"></span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>高校学者发掘</span>
                        <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                    </a>
                    <ul class="treeview-menu">
                        <li class=""><a href="#"><i class="fa fa-circle-o"></i> 按高校</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> 按专业</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-calendar"></i> <span>日历</span>
                        <span class="pull-right-container">
                            <small class="label pull-right bg-red">12</small>
                            <small class="label pull-right bg-blue">7</small>
                        </span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-share"></i> <span>关于系统</span>
                        <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
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
    <!-- 页面内容区域 -->
    <div class="content-wrapper">
        <!-- 页面内容头信息 -->
        <section class="content-header">
            <!-- 标题 -->
            <h1>
                信息展示
                <!--   <small>控制面板</small>-->
            </h1>
            <!-- 面包屑导航条 -->
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
                <li class="active">信息展示</li>
            </ol>
        </section>

        <!-- 主题内容 -->
        <section class="content container-fluid">
            <!-- Small boxes (Stat box) -->
            <div class="row">
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-aqua">
                        <div class="inner">
                            <h3>150</h3>

                            <!--     <p>新订单</p>
                             </div>
                             <div class="icon">
                                 <i class="ion ion-bag"></i>
                             </div>
                             <a href="#" class="small-box-footer">更多 <i class="fa fa-arrow-circle-right"></i></a>
                         </div>
                     </div>
                     <！-- ./col
                     <div class="col-lg-3 col-xs-6">
                         <！-- small box
                         <div class="small-box bg-green">
                             <div class="inner">
                                 <h3>53<sup style="font-size: 20px">%</sup></h3>  -->

                            <p>收录高校</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="#" class="small-box-footer">更多 <i class="fa fa-arrow-circle-right"></i></a>
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
                        <a href="#" class="small-box-footer">更多 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h3>65</h3>

                            <p>专业分类</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-pie-graph"></i>
                        </div>
                        <a href="#" class="small-box-footer">更多 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">表格</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table id="example2" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>展示1</th>
                                    <th>展示2</th>
                                    <th>展示3</th>
                                    <th>展示4</th>
                                    <th>展示5</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>T</td>
                                    <td>I
                                        E
                                    </td>
                                    <td>W</td>
                                    <td>4</td>
                                    <td>X</td>
                                </tr>
                                <tr>
                                    <td>M</td>
                                    <td>L</td>
                                    <td>T</td>
                                    <td>-</td>
                                    <td>X</td>
                                </tr>
                                <tr>
                                    <td>Mi</td>
                                    <td>I</td>
                                    <td>R</td>
                                    <td>-</td>
                                    <td>C</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </section>
    <!-- /.页面内容区域 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.0
        </div>
        <strong>Copyright &copy; 2020/7 <a href="#">希望实训没事队</a></strong> 版权所有
    </footer>

    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>

<!-- ./wrapper -->
<!-- jQuery 3 -->
<script src="resources/js/jquery.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="resources/js/bootstrap.js"></script>
<!-- AdminLTE App -->
<script src="resources/js/adminlte.min.js"></script>

</div>
</div>
</body>
</html>
