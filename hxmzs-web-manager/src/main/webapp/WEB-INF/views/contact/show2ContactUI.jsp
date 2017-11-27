<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/9/22
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/jquery-1.7.2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/ajaxfileupload.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/jquery-2.1.1.min.js"></script>



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
                    <legend class="text-bold">联系查看</legend>

                    <!-- Centered forms -->
                    <div class="row">
                        <div class="col-md-12">
                            <form action="#">
                                <div class="panel panel-flat">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <h5 class="panel-title">contact form</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <div class="form-group">
                                                    <label>Enter your contactTitle:</label>
                                                    <input type="text" readonly="readonly" value="${contact.contactTitle}" class="form-control" placeholder="Enter your contactTitle" id="contactTitle">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your contactDesc:</label>
                                                    <input type="text" readonly="readonly" value="${contact.contactDesc}" class="form-control" placeholder="Enter your contactDesc" id="contactDesc">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your contactAddress:</label>
                                                    <input type="text"  readonly="readonly" value="${contact.contactAddress}" class="form-control" placeholder="Enter your contactAddress" id="contactAddress">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your contectPhone:</label>
                                                    <input type="text" readonly="readonly" value="${contact.contactPhone}" class="form-control" placeholder="Enter your contactPhone" id="contactPhone">
                                                </div>
                                                <div class="form-group">
                                                    <label>Enter your contactEmail:</label>
                                                    <input type="text"  readonly="readonly" value="${contact.contactEmail}" class="form-control" placeholder="Enter your contactEmail" id="contactEmail">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your status:</label>
                                                    <c:if test="${contact.status=='1'}">
                                                        <span class="label bg-blue">正常</span>
                                                    </c:if>
                                                    <c:if test="${contact.status=='0'}">
                                                        <span class="label label-danger">已删除</span>
                                                    </c:if>

                                                </div>

                                                <div class="form-group">
                                                     <label>Your message:</label>
                                                      <p>${contact.contactContent}</p>
                                                </div>

                                               <%-- <div class="text-right">
                                                    <a  class="btn btn-primary" id="save">Submit from<i class="icon-arrow-right14 position-right"></i></a>
                                                </div>--%>
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
