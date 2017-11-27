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
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/LocalResizeIMG.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/mobileBUGFix.mini.js"></script>



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
                    <legend class="text-bold">service展示添加</legend>

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
                                                    <input type="text" class="form-control" placeholder="Enter your serviceTitle" id="serviceTitle">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your serviceClass:</label>
                                                    <input type="text" class="form-control" placeholder="Enter your serviceClass" id="serviceClass">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your serviceIntroduce:</label>
                                                    <input type="text" class="form-control" placeholder="Enter your serviceIntroduce" id="serviceIntroduce">
                                                </div>

                                                <%--<div class="form-group">
                                                    <label>Select your imagePosition:</label>
                                                   <select data-placeholder="Select your state" class="form-control" id="imagePosition" name="select">
                                                            <option value="1">顶部</option>
                                                            <option value="2">中上</option>
                                                            <option value="3">中下</option>
                                                            <option value="4">底部</option>
                                                    </select>
                                                </div>--%>


                                               <div class="text-right">
                                                   <a  class="btn btn-primary" id="save">Submit from<i class="icon-arrow-right14 position-right"></i></a>
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


    $("#save").click(function(){

        var serviceTitle=$("#serviceTitle").val();
        console.log("serviceTitle"+serviceTitle);

        var serviceClass = $("#serviceClass").val();
        console.log("serviceClass"+serviceClass);

         var serviceIntroduce = $("#serviceIntroduce").val();
        console.log("serviceIntroduce"+serviceIntroduce);

        $.ajax({
            url : "/service/add2Services",
            type : "POST",
            data: {
                serviceTitle: serviceTitle,
                serviceClass:serviceClass,
                serviceIntroduce:serviceIntroduce
            },
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

</body>
</html>
