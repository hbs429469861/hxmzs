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
                    <legend class="text-bold">服务工程添加</legend>

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
                                                    <input type="text" class="form-control" placeholder="Enter your projectTitle" id="projectTitle">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your projectType:</label>
                                                    <input type="text" class="form-control" placeholder="Enter your projectType" id="projectType">
                                                </div>

                                                <div class="form-group">
                                                     <label>Your projectPrice:</label>
                                                    <input type="number" class="form-control" placeholder="Enter your projectPrice" id="projectPrice">
                                                </div>

                                                <div class="form-group">
                                                     <label>Your projectNum:</label>
                                                    <input type="number" class="form-control" placeholder="Enter your projectNum" id="projectNum">
                                                </div>

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
    $("#save").click(function() {
        var projectTitle = $("#projectTitle").val();
        var projectType = $("#projectType").val();
        var projectNum = $("#projectNum").val();
        var projectPrice = $("#projectPrice").val();


        if(projectTitle.length<5){
            alert("标题至少5个字符");
            return;
        }
        if(projectTitle.length>12){
            alert("标题不能大于12个字符");
            return;
        }
        if(projectType==""){
            alert("请输入作者");
            return;
        }
        if(projectNum==""){
            alert("请重新填写");
            return;
        }
        if(projectPrice==""){
            alert("请重新填写价格");
            return;
        }

        $.ajax({
            url: "/serviceProject/add2ServiceProject",
            type: "post",
            data: {
                projectTitle: projectTitle,
                projectType:projectType,
                projectNum: projectNum,
                projectPrice:projectPrice
            },
            dataType: "json",
            success: function (data) {
                alert(data.msg);
                $(".content").load("${pageContext.request.contextPath}/serviceProject/add2ServiceProjectList");
            },
            error: function (data) {
                alert(data.msg);
            }

        })
    })

</script>
</body>
</html>
