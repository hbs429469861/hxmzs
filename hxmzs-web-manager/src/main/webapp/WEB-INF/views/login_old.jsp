<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>Login Page - Ace Admin</title>

    <meta name="description" content="User login page"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/bootstrap.css"/>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/font-awesome.css"/>

    <!-- text fonts -->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/ace-fonts.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/ace.css"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/ace-part2.css"/>
    <![endif]-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/ace-rtl.css"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/ace-ie.css"/>
    <![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
    <script src="${pageContext.servletContext.contextPath}/assets/js/html5shiv.js"></script>
    <script src="${pageContext.servletContext.contextPath}/assets/js/respond.js"></script>
    <![endif]-->
</head>

<body class="login-layout blur-login">
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container">
                    <div class="center">
                        <h1>
                            <i class="ace-icon fa fa-leaf green"></i>
                            <span class="red">Ace</span>
                            <span class="white" id="id-text2">Application</span>
                        </h1>
                        <h4 class="blue" id="id-company-text">&copy; Company Name</h4>
                    </div>
                    <div class="space-6"></div>
                    <div class="position-relative">
                        <div id="login-box" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header blue lighter bigger">
                                        <i class="ace-icon fa fa-coffee green"></i>
                                        Please Enter Your Information
                                    </h4>
                                    <div class="space-6"></div>
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="ace-icon fa fa-user"></i> 账户</span>
                                                <input class="form-control" name="date-range-picker"
                                                       id="id-date-range-picker-1" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="ace-icon fa fa-lock"></i> 密码</span>
                                                <input class="form-control" name="date-range-picker"
                                                       id="password" type="password">
                                            </div>
                                        </div>
                                        <div class="space"></div>
                                        <div class="clearfix">
                                            <button type="button"
                                                    class="width-35 pull-right btn btn-sm btn-primary">
                                                <i class="ace-icon fa fa-key"></i>
                                                <span class="bigger-110">登录</span>
                                            </button>
                                        </div>
                                    </form>
                                </div><!-- /.widget-main -->
                            </div><!-- /.widget-body -->
                        </div><!-- /.login-box -->
                    </div>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.main-content -->
    </div><!-- /.main-container -->

    <!-- basic scripts -->

    <!--[if !IE]> -->
    <script type="text/javascript">
        window.jQuery || document.write("<script src='${pageContext.servletContext.contextPath}/assets/js/jquery.js'>" + "<" + "/script>");
    </script>

    <!-- <![endif]-->

    <!--[if IE]>
    <script type="text/javascript">
        window.jQuery || document.write("<script src='${pageContext.servletContext.contextPath}/assets/js/jquery1x.js'>" + "<" + "/script>");
    </script>
    <![endif]-->
    <script type="text/javascript">
        if ('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.servletContext.contextPath}/assets/js/jquery.mobile.custom.js'>" + "<" + "/script>");
    </script>

    <!-- inline scripts related to this page -->
    <script type="text/javascript">

    </script>
</body>
</html>


