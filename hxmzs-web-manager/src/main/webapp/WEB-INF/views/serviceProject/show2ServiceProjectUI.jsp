<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/9/22
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/jquery-1.7.2.js"></script>



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
                    <legend class="text-bold">查看</legend>

                    <!-- Centered forms -->
                    <div class="row">
                        <div class="col-md-12">
                            <form action="#">
                                <div class="panel panel-flat">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <h5 class="panel-title">serviceProject form</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <div class="form-group">
                                                    <label>Enter your projectTitle:</label>
                                                    <input value="${serviceProject.projectTitle}" readonly="readonly" type="text" class="form-control" placeholder="Enter your projectTitle" id="projectTitle">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your projectType:</label>
                                                    <input type="text"  readonly="readonly"  value="${serviceProject.projectType}" class="form-control" placeholder="Enter your projectType" id="projectType">
                                                </div>

                                                <div class="form-group">
                                                     <label>Your projectPrice:</label>
                                                    <input type="text" readonly="readonly"  value="${serviceProject.projectPrice}"  class="form-control" placeholder="Enter your projectPrice" id="projectPrice">
                                                </div>
                                                <div class="form-group">
                                                     <label>Your projectNum:</label>
                                                    <input type="number" readonly="readonly" value="${serviceProject.projectNum}"  class="form-control" placeholder="Enter your projectNum" id="projectNum">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your status:</label>
                                                    <c:if test="${serviceProject.status=='1'}">
                                                        <span class="label bg-blue">正常</span>
                                                    </c:if>
                                                    <c:if test="${serviceProject.status=='0'}">
                                                        <span class="label label-danger">已删除</span>
                                                    </c:if>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>


                    </div>
                    <!-- /form centered -->

                </fieldset>


            </form>
        </div>

    </div>
</div>


<%--footer--%>
<jsp:include page="/WEB-INF/views/footer.jsp"/>

</body>
</html>
