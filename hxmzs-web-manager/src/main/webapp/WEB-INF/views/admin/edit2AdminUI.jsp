<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Content area -->

<div id="contentss">
    <!-- Helper classes -->
    <div class="panel panel-flat">
        <div class="panel-heading">
            <h5 class="panel-title">
               修改
            </h5>

        </div>

        <div class="panel-body" >
            <form class="form-horizontal" action="#">
                <input type="hidden" value="${admin.id}" id="adminId">
                <fieldset class="content-group">
                    <legend class="text-bold">管理员修改</legend>

                    <div class="form-group">
                        <label class="control-label col-lg-2">username</label>
                        <div class="col-lg-10">
                            <input type="text" value="${admin.username}" class="form-control am-form-field" id="username"  maxlength="20" placeholder="输入登录名"  required/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2">Password</label>
                        <div class="col-lg-10">
                            <input type="password" value="${admin.password}" class="form-control am-form-field" id="password" maxlength="18" placeholder="输入密码"  required/>
                        </div>
                    </div>

                </fieldset>

                <div class="text-right">
                    <a  class="btn btn-primary" id="update">Submit <i class="icon-arrow-right14 position-right"></i></a>
                </div>
            </form>
        </div>

    </div>


    <%--footer--%>
    <jsp:include page="/WEB-INF/views/footer.jsp"/>

    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        $("#update").click(function() {
            var username = $("#username").val().trim();
            var password = $("#password").val().trim();
            var id = $("#adminId").val().trim();

            if(username.length<5){
                alert("用户名至少5个字符");
                return;
            }
            if(password.length<5){
                alert("密码至少5个字符");
                return;
            }
            $.ajax({
                url: "/admin/updataByAdminId",
                type: "post",
                data: {
                    id:id,
                    username: username,
                    password: password
                },
                dataType: "json",
                success: function (data) {
                    alert(data.msg);
                    $(".content").load("${pageContext.request.contextPath}/admin/add2AdminList");
                },
                error: function (data) {
                    alert(data.msg);
                }

            })
        })








    </script>

</div>