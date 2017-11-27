<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Content area -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/jquery-1.7.2.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/ajaxfileupload.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/LocalResizeIMG.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/mobileBUGFix.mini.js"></script>

<!-- Core JS files -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/assets/js/core/libraries/jquery.min.js"></script>
<!-- /core JS files -->


<div id="contentss">
    <!-- Helper classes -->
    <div class="panel panel-flat">
        <div class="panel-heading">
            <h5 class="panel-title">
               查看
            </h5>

        </div>

        <div class="showcss">
            <img id="img" name="img" width="200" height="100"
                 style="display: none;" />
        </div>

        <input id="teamImgUrl" type="hidden" value="${ourTeam.teamImgUrl}"/>
        <div class="panel-body" >
            <form class="form-horizontal" action="#">
                <fieldset class="content-group">
                    <legend class="text-bold">首页Banner修改</legend>
                    <!-- Centered forms -->
                    <div class="row">
                        <div class="col-md-12">
                            <form action="#">
                                <div class="panel panel-flat">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <h5 class="panel-title">Centered form</h5>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <div class="form-group">
                                                    <label>Enter your teamTitle:</label>
                                                    <input type="text" readonly="readonly" value="${ourTeam.teamTitle}" class="form-control" placeholder="Enter your teamTitle" id="teamTitle">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your teamProfessional:</label>
                                                    <input type="text" readonly="readonly" value="${ourTeam.teamProfessional}" class="form-control" placeholder="Enter your teamProfessional" id="teamProfessional">
                                                </div>


                                                <div class="form-group">
                                                    <label>Select your status:</label>
                                                    <select data-placeholder="Select your state" class="form-control" id="state" name="select" disabled="disabled">
                                                        <option value="0"<c:if test="${ourTeam.status=='0'}">selected="selected"</c:if>>启用</option>
                                                        <option value="1"<c:if test="${ourTeam.status=='1'}">selected="selected"</c:if>>关闭</option>

                                                    </select>
                                                </div>

                                                <p><img src="http://imgtu.5011.net/uploads/content/20170309/6425471489051060.jpg"></p>

                                                <div class="form-group">
                                                    <label>Enter your status:</label>
                                                    <c:if test="${ourTeam.status=='1'}">
                                                        <span class="label bg-blue">正常</span>
                                                    </c:if>
                                                    <c:if test="${ourTeam.status=='0'}">
                                                        <span class="label label-danger">已删除</span>
                                                    </c:if>

                                                </div>

                                                <div class="form-group">
                                                    <label>Your teamContent:</label><br/>
                                                    ${ourTeam.teamContent}
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

