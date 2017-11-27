<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/5
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
    <jsp:include page="/WEB-INF/views/heade.jsp"/>
    <!-- Theme JS files -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/assets/js/plugins/forms/styling/uniform.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/assets/js/pages/login.js"></script>
    <!-- /theme JS files -->
<body class="bg-slate-800">

<!-- Page container -->
<div class="page-container login-container">

    <!-- Page content -->
    <div class="page-content">

        <!-- Main content -->
        <div class="content-wrapper">

            <!-- Content area -->
            <div class="content">

                <!-- Advanced login -->
                    <div class="panel panel-body login-form">
                        <div class="text-center">
                            <div class="icon-object border-warning-400 text-warning-400"><i class="icon-people"></i></div>
                            <h5 class="content-group-lg">Login to your account <small class="display-block">Enter your credentials</small></h5>
                        </div>

                        <div class="form-group has-feedback has-feedback-left">
                            <input type="text" class="form-control" placeholder="username" id="username">
                            <div class="form-control-feedback">
                                <i class="icon-user text-muted"></i>
                            </div>
                        </div>

                        <div class="form-group has-feedback has-feedback-left">
                            <input type="password" class="form-control" placeholder="password" id="pwd">
                            <div class="form-control-feedback">
                                <i class="icon-lock2 text-muted"></i>
                            </div>
                        </div>

                        <div class="form-group login-options">
                            <div class="row">
                               <div class="col-sm-6">
                                   <%-- <label class="checkbox-inline">
                                        <input type="checkbox" class="styled" checked="checked">
                                        Remember
                                    </label>--%>
                                </div>

                                <div class="col-sm-6 text-right">
                                    <a href="login_password_recover.html">Forgot password?</a>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <a  id="login" class="btn bg-blue btn-block">Login <i class="icon-circle-right2 position-right"></i></a>
                        </div>

                        <div class="content-divider text-muted form-group"><span>or sign in with</span></div>
                        <ul class="list-inline form-group list-inline-condensed text-center">
                            <li><a href="#" class="btn border-indigo text-indigo btn-flat btn-icon btn-rounded"><i class="icon-facebook"></i></a></li>
                            <li><a href="#" class="btn border-pink-300 text-pink-300 btn-flat btn-icon btn-rounded"><i class="icon-dribbble3"></i></a></li>
                            <li><a href="#" class="btn border-slate-600 text-slate-600 btn-flat btn-icon btn-rounded"><i class="icon-github"></i></a></li>
                            <li><a href="#" class="btn border-info text-info btn-flat btn-icon btn-rounded"><i class="icon-twitter"></i></a></li>
                        </ul>

                        <div class="content-divider text-muted form-group"><span>Don't have an account?</span></div>
                        <a href="login_registration.html" class="btn bg-slate btn-block content-group">Register</a>
                        <span class="help-block text-center no-margin">By continuing, you're confirming that you've read our <a href="#">Terms &amp; Conditions</a> and <a href="#">Cookie Policy</a></span>
                    </div>
                <!-- /advanced login -->


                <!-- Footer -->
                <jsp:include page="/WEB-INF/views/footer.jsp"/>
                <!-- /footer -->

            </div>
            <!-- /content area -->

        </div>
        <!-- /main content -->

    </div>
    <!-- /page content -->

</div>
<!-- /page container -->
<script type="text/javascript">
    $("#login").click(function(){
        var username =  $("#username").val();
        var  password = $("#pwd").val();
        if (username == "") {
            alert("用户名不能为空");
            return ;
        }
        if (password == "") {
            alert("密码不能为空");
            return ;
        }


        $.ajax({
            url : "login",
            type : "post",
            data : "adminname=" + username + "&adminpwd=" + password,
            dataType : "json",
            success : function(data) {
                alert(data.msg);
                window.location.href="${pageContext.request.contextPath}/index";
            },
            error : function (data) {
                alert(data.msg);
            }
        });

    })




</script>
</body>

</html>

