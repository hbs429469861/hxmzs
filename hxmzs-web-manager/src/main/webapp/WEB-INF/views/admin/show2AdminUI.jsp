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
                    <legend class="text-bold">管理员查看</legend>

                    <div class="form-group">
                        <label class="control-label col-lg-2">username</label>
                        <div class="col-lg-10">
                            <input type="text" value="${admin.username}" class="form-control am-form-field" id="username"  maxlength="20" placeholder="输入登录名" readonly="readonly" required/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-2">Password</label>
                        <div class="col-lg-10">
                            <input type="password" value="${admin.password}" class="form-control am-form-field" id="password" maxlength="18" placeholder="输入密码" readonly="readonly" required/>
                        </div>
                    </div>


<%--
                    <div class="form-group">
                        <label class="control-label col-lg-2">Textarea</label>
                        <div class="col-lg-10">
                            <textarea rows="5" cols="5" class="form-control" placeholder="Default textarea"></textarea>
                        </div>
                    </div>--%>
                </fieldset>


            </form>
        </div>

    </div>


    <%--footer--%>
    <jsp:include page="/WEB-INF/views/footer.jsp"/>

</div>