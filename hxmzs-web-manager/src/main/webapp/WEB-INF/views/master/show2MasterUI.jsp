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
                <fieldset class="content-group">
                    <legend class="text-bold">用户查看</legend>

                    <div class="form-group">
                        <label class="control-label col-lg-2">masterName</label>
                        <div class="col-lg-10">
                            <input type="text" value="${master.masterName}" class="form-control am-form-field" id="masterName"  maxlength="20"readonly="readonly" required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-2">masterEmail</label>
                        <div class="col-lg-10">
                            <input type="text" value="${master.masterEmail}" class="form-control am-form-field" id="masterEmail"  maxlength="20"readonly="readonly" required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-2">masterAddress</label>
                        <div class="col-lg-10">
                            <p class="control-label col-lg-2">${master.masterAddress}</p>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Enter your status:</label>
                        <c:if test="${master.status=='1'}">
                            <span class="label bg-blue">正常</span>
                        </c:if>
                        <c:if test="${master.status=='0'}">
                            <span class="label label-danger">已删除</span>
                        </c:if>

                    </div>


                </fieldset>
            </form>
        </div>

    </div>


    <%--footer--%>
    <jsp:include page="/WEB-INF/views/footer.jsp"/>

</div>