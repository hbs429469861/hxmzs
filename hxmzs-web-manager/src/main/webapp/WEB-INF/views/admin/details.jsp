<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>管理员列表</title>

    <link href="${pageContext.servletContext.contextPath}/assets/css/icons/icomoon/styles.css" rel="stylesheet"
          type="text/css">
    <link href="${pageContext.servletContext.contextPath}/assets/css/minified/bootstrap.min.css" rel="stylesheet"
          type="text/css">
    <link href="${pageContext.servletContext.contextPath}/assets/css/minified/core.min.css" rel="stylesheet"
          type="text/css">
    <link href="${pageContext.servletContext.contextPath}/assets/css/minified/components.min.css" rel="stylesheet"
          type="text/css">
    <link href="${pageContext.servletContext.contextPath}/assets/css/minified/colors.min.css" rel="stylesheet"
          type="text/css">
    <!-- /global stylesheets -->

    <!-- Core JS files -->
    <script type="text/javascript"
            src="${pageContext.servletContext.contextPath}/assets/js/plugins/loaders/pace.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.servletContext.contextPath}/assets/js/core/libraries/jquery.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.servletContext.contextPath}/assets/js/core/libraries/bootstrap.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.servletContext.contextPath}/assets/js/plugins/loaders/blockui.min.js"></script>
    <!-- /core JS files -->

    <!-- Theme JS files -->
    <script type="text/javascript"
            src="${pageContext.servletContext.contextPath}/assets/js/plugins/ui/prism.min.js"></script>

    <script type="text/javascript" src="${pageContext.servletContext.contextPath}/assets/js/core/app.js"></script>
    <script type="text/javascript"
            src="${pageContext.servletContext.contextPath}/assets/js/pages/layout_sidebar_sticky.js"></script>
    <!-- /theme JS files -->

</head>

<body data-spy="scroll" data-target=".sidebar-fixed" class="sidebar-opposite-visible">

<!-- Main navbar -->
<div class="navbar navbar-inverse">
    <div class="navbar-header">
        <a class="navbar-brand" href="index.html"><img
                src="${pageContext.servletContext.contextPath}/assets/images/logo_light.png" alt=""></a>

        <ul class="nav navbar-nav pull-right visible-xs-block">
            <li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
            <li><a class="sidebar-mobile-main-toggle"><i class="icon-paragraph-justify3"></i></a></li>
            <li><a class="sidebar-mobile-opposite-toggle"><i class="icon-menu"></i></a></li>
        </ul>
    </div>

    <div class="navbar-collapse collapse" id="navbar-mobile">
        <ul class="nav navbar-nav">
            <li>
                <a class="sidebar-control sidebar-main-toggle hidden-xs">
                    <i class="icon-paragraph-justify3"></i>
                </a>
            </li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown dropdown-user">
                <a class="dropdown-toggle" data-toggle="dropdown">
                    <img src="${pageContext.servletContext.contextPath}/assets/images/placeholder.jpg" alt="">
                    <span>${pageContext.request.userPrincipal.name}</span>
                    <i class="caret"></i>
                </a>

                <ul class="dropdown-menu dropdown-menu-right">
                    <li><a href="#"><i class="icon-user-plus"></i> 个人资料</a></li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="icon-cog5"></i> 设置</a></li>
                    <li><a href="${pageContext.servletContext.contextPath}/logout"><i class="icon-switch2"></i> 退出</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>
<!-- /main navbar -->

<!-- Page container -->
<div class="page-container">

    <!-- Page content -->
    <div class="page-content">

        <!-- Main sidebar -->
        <div class="sidebar sidebar-main sidebar-default">
            <div class="sidebar-content">

                <!-- Main navigation -->
                <div class="sidebar-category sidebar-category-visible">
                    <div class="category-content no-padding">
                        <ul class="navigation navigation-main navigation-accordion">
                            <!-- Main -->
                            <li><a href="index.html"><i class="icon-home4"></i> <span>首页</span></a></li>
                            <li>
                                <a href="#"><i class="icon-stack2"></i> <span>用户管理</span></a>
                                <ul>
                                    <li><a href="layout_navbar_fixed.html">用户列表</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="icon-copy"></i> <span>Layouts</span></a>
                                <ul>
                                    <li><a href="../../layout_1/LTR/index.html" id="layout1">Layout 1</a></li>
                                    <li><a href="../../layout_2/LTR/index.html" id="layout2">Layout 2</a></li>
                                    <li><a href="index.html" id="layout3">Layout 3 <span class="label bg-warning-400">Current</span></a>
                                    </li>
                                    <li><a href="../../layout_4/LTR/index.html" id="layout4">Layout 4</a></li>
                                    <li class="disabled"><a href="../../layout_5/LTR/index.html" id="layout5">Layout 5
                                        <span class="label bg-slate-800">Coming soon</span></a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="icon-droplet2"></i> <span>Color system</span></a>
                                <ul>
                                    <li><a href="colors_primary.html">Primary palette</a></li>
                                    <li><a href="colors_danger.html">Danger palette</a></li>
                                    <li><a href="colors_success.html">Success palette</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="icon-stack"></i> <span>管理员管理</span></a>
                                <ul>
                                    <li><a href="starters/horizontal_nav.html">管理员列表</a></li>
                                    <li><a href="starters/1_col.html">角色管理</a></li>
                                    <li><a href="starters/2_col.html">权限管理</a></li>
                                </ul>
                            </li>
                            <li class="active">
                                <a href="changelog.html"><i class="icon-list-unordered"></i>
                                    <span>Changelog</span></a>
                            </li>
                            <!-- /main -->
                            <!-- /layout -->
                        </ul>
                    </div>
                </div>
                <!-- /main navigation -->
            </div>
        </div>
        <!-- /main sidebar -->

        <!-- Main content -->
        <div class="content-wrapper">
            <!-- Basic table -->
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h6 class="panel-title">Info panel</h6>
                    <div class="heading-elements">
                        <ul class="icons-list">
                            <li><a data-action="collapse"></a></li>
                            <li><a data-action="reload"></a></li>
                            <li><a data-action="close"></a></li>
                        </ul>
                    </div>
                    <a class="heading-elements-toggle"><i class="icon-menu"></i></a></div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <tbody>
                                    <tr>
                                        <td>用户名</td>
                                        <td>admin</td>
                                    </tr>
                                    <tr>
                                        <td>邮箱</td>
                                        <td>845885222@qq.com</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <tbody>
                                    <tr>
                                        <td><code>.navigation</code></td>
                                        <td>Default navigation class, must be used with any navigation type and color. Responsible for basic styling of item colors, borders, sizing and icons.</td>
                                    </tr>
                                    <tr>
                                        <td><code>.navigation-main</code></td>
                                        <td>Class for main navigation. Defines navigation in main sidebar: hides text in mini sidebar type and fires click event in parent item links. Only this navigation class works with <code>.navbar-xs</code> body class and mini sidebar, all other navigations are full sized.</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /basic table -->
        </div>
        <!-- /main content -->
    </div>
    <!-- /page content -->
</div>
<!-- /page container -->

</body>
</html>

