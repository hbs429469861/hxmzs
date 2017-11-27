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
                修改
            </h5>

        </div>

        <div class="showcss">
            <img id="img" name="img" width="200" height="100"
                 style="display: none;" />
        </div>

        <input type="hidden" value="${services.id}" id="servicesId">
        <input type="hidden" id="fileData" name="fileData"  />
        <div class="panel-body" >
            <form class="form-horizontal" action="#">
                <fieldset class="content-group">
                    <legend class="text-bold">Service修改</legend>
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
                                                    <label>Enter your serviceTitle:</label>
                                                    <input type="text" value="${services.serviceTitle}" class="form-control" placeholder="Enter your serviceTitle" id="serviceTitle">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your serviceClass:</label>
                                                    <input type="text" value="${services.serviceClass}" class="form-control"  placeholder="Enter your serviceClass" id="serviceClass">
                                                </div>


                                                <div class="form-group">
                                                    <label>Select your status:</label>
                                                    <select data-placeholder="Select your state" class="form-control" id="status" name="select">
                                                        <option value="0"<c:if test="${services.status=='0'}">selected="selected"</c:if>>关闭</option>
                                                        <option value="1"<c:if test="${services.status=='1'}">selected="selected"</c:if>>启用</option>

                                                    </select>
                                                </div>




                                                <div class="form-group">
                                                    <label>Enter your serviceIntroduce:</label>
                                                    <input type="text" value="${services.serviceIntroduce}" class="form-control" placeholder="Enter your serviceIntroduce" id="serviceIntroduce">
                                                </div>




                                                <div class="text-right">
                                                    <a href="#" class="btn btn-primary" id="save">Submit from <i class="icon-arrow-right14 position-right"  ></i></a>
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


<script type="text/javascript">


    $("#pic").click(function(){

        var file1  = document.getElementById('file');
        file1.click();
    })

    $("#save").click(function(){
        var id=$("#servicesId").val();

        var serviceTitle=$("#serviceTitle").val();
        console.log("serviceTitle"+serviceTitle);

        var serviceClass = $("#serviceClass").val();
        console.log("serviceClass"+serviceClass);

        var serviceIntroduce = $("#serviceIntroduce").val();
        console.log("serviceIntroduce"+serviceIntroduce);

        if(serviceIntroduce==""){
            alert("请输入内容");
            return;
        }


        var status = $("#status option:selected").val();
        console.log("status  "+status);


        $.ajax({
            url : "/service/updateByServicesId",
            type : "POST",
            data: {
                id:id,
                serviceTitle: serviceTitle,
                serviceClass:serviceClass,
                serviceIntroduce:serviceIntroduce,
                status:status
            },
            dataType: "json",
            success : function(data) {
                alert(data.msg);
                $(".content").load("${pageContext.request.contextPath}/service/add2ServicesList");
            },
            error : function (data) {
                alert(data.msg);
            },
            timeout : 20000
        });
    })
</script>