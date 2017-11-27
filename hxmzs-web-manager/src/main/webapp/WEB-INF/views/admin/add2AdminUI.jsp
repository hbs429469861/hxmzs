<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Content area -->

<div id="contentss">
    <!-- Helper classes -->
    <div class="panel panel-flat">
        <div class="panel-heading">
            <h5 class="panel-title">
                hello
            </h5>

        </div>

        <div class="panel-body" >
            <form class="form-horizontal" action="#">
                <fieldset class="content-group">
                    <legend class="text-bold">管理员添加</legend>

                    <div class="form-group">
                        <label class="control-label col-lg-2">username</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control am-form-field" id="username"  maxlength="20" placeholder="输入登录名"  required/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2">Password</label>
                        <div class="col-lg-10">
                            <input type="password" class="form-control am-form-field" id="password" maxlength="18" placeholder="输入密码"  required/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Select your adminType:</label>
                        <select data-placeholder="Select your state" class="form-control" id="adminType" name="select">
                            <option value="1">超级管理员</option>
                            <option value="2">普通管理员</option>

                        </select>
                    </div>
<%--
                    <div class="form-group">
                        <label class="control-label col-lg-2">Textarea</label>
                        <div class="col-lg-10">
                            <textarea rows="5" cols="5" class="form-control" placeholder="Default textarea"></textarea>
                        </div>
                    </div>--%>
                </fieldset>

                <div class="text-right">
                    <a  class="btn btn-primary" id="save">Submit <i class="icon-arrow-right14 position-right"></i></a>
                </div>
            </form>
        </div>

    </div>


    <%--footer--%>
    <jsp:include page="/WEB-INF/views/footer.jsp"/>

    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        $("#save").click(function() {
            var username = $("#username").val().trim();
            var password = $("#password").val().trim();

            if(username.length<5){
                alert("用户名至少5个字符");
                return;
            }
            if(password.length<5){
                alert("密码至少5个字符");
                return;
            }
            var adminType = $("#adminType option:selected").val();
            console.log("adminType  "+adminType);
            if(adminType==""){
                alert("请选择管理员类型");
                return;
            }

            $.ajax({
                url: "/admin/add2Admin",
                type: "post",
                data: {
                    adminTypes:adminType,
                    username: username,
                    pwd: password
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