<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Content area -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/jquery-1.7.2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/ajaxfileupload.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/LocalResizeIMG.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/mobileBUGFix.mini.js"></script>


<div id="contentss">
    <!-- Helper classes -->
    <div class="panel panel-flat">
        <div class="panel-heading">
            <h5 class="panel-title">
               look
            </h5>

        </div>

        <div class="showcss">
            <img id="img" name="img" width="200" height="100"
                 style="display: none;" />
        </div>
        <input type="hidden" id="fileData" name="fileData"  />
        <input id="homeUrl" type="hidden" value="${home.homeUrl}"/>
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
                                                    <label>Enter your homeTitle:</label>
                                                    <input type="text" value="${home.homeTitle}" class="form-control" placeholder="Enter your homeTitle" id="homeTitle" readonly="readonly">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your homeIntroduce:</label>
                                                    <input type="text" value="${home.homeIntroduce}" class="form-control" placeholder="Enter your homeIntroduce" id="homeIntroduce" readonly="readonly">
                                                </div>

                                                <div class="form-group">
                                                    <label>Select your imagePosition:</label>
                                                    <select data-placeholder="Select your imagePosition" class="select" id="imagePosition" disabled="disabled">
                                                        <option></option>
                                                        <optgroup label="Alaskan/Hawaiian Time Zone">
                                                            <option value="1" <c:if test="${home.imagePosition=='1'}">selected="selected"</c:if>>顶部</option>
                                                            <option value="2" <c:if test="${home.imagePosition=='2'}">selected="selected"</c:if>>中上</option>
                                                            <option value="3" <c:if test="${home.imagePosition=='3'}">selected="selected"</c:if>>中下</option>
                                                            <option value="4" <c:if test="${home.imagePosition=='4'}">selected="selected"</c:if>>底部</option>
                                                        </optgroup>

                                                    </select>
                                                </div>


                                                <div class="form-group">
                                                    <label>Enter your status:</label>
                                                    <c:if test="${home.status=='1'}">
                                                        <span class="label bg-blue">正常</span>
                                                    </c:if>
                                                    <c:if test="${home.status=='0'}">
                                                        <span class="label label-danger">已删除</span>
                                                    </c:if>

                                                </div>

                                                <div class="form-group">
                                                    <label>Attach screenshot:</label>
                                                    <div width="50px" height="50px">
                                                                        <img s>
                                                    </div>


                                                    <span class="help-block">Accepted formats: gif, png, jpg. Max file size 2Mb</span>
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

