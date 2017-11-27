<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/9/22
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/jquery-1.7.2.js"></script>



<div id="contentss">
    <!-- Helper classes -->
    <div class="panel panel-flat">
        <div class="panel-heading">
            <h5 class="panel-title">
                hello
            </h5>

        </div>
        <input type="hidden" id="mottoId" value="${motto.id}">

        <div class="panel-body" >
            <form class="form-horizontal" action="#">
                <fieldset class="content-group">
                    <legend class="text-bold">格言修改</legend>

                    <!-- Centered forms -->
                    <div class="row">
                        <div class="col-md-12">
                            <form action="#">
                                <div class="panel panel-flat">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <h5 class="panel-title">motto form</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <div class="form-group">
                                                    <label>Enter your mottoTitle:</label>
                                                    <input value="${motto.mottoTitle}" type="text" class="form-control" placeholder="Enter your mottoTitle" id="mottoTitle">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your mottoAuthor:</label>
                                                    <input type="text" value="${motto.mottoAuthor}" class="form-control" placeholder="Enter your mottoAuthor" id="mottoAuthor">
                                                </div>

                                                <div class="form-group">
                                                     <label>Your mottoDesc:</label>
                                                    <input type="text" value="${motto.mottoDesc}"  class="form-control" placeholder="Enter your mottoDesc" id="mottoDesc">
                                                </div>

                                                <div class="form-group">
                                                    <label>Select your status:</label>
                                                    <select data-placeholder="Select your state" class="form-control" id="status" name="select">
                                                        <option value="0"<c:if test="${motto.status=='0'}">selected="selected"</c:if>>关闭</option>
                                                        <option value="1"<c:if test="${motto.status=='1'}">selected="selected"</c:if>>启用</option>

                                                    </select>
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

<script>

    $(function(){
        var element = $("#motttoDesc");
        var temp =  element.text().replace(/\n/g,'<br/>');
        element.html(temp);
    });
</script>

<script type="text/javascript">
    $("#save").click(function() {
        var id = $("#mottoId").val();
        var mottoTitle = $("#mottoTitle").val();
        var mottoAuthor = $("#mottoAuthor").val();
        var mottoDesc = $("#mottoDesc").val();
        var status = $("#status option:selected").val();
        console.log("status  "+status);

        if(mottoTitle.length<15){
            alert("标题至少15个字符");
            return;
        }
        if(mottoAuthor==""){
            alert("请输入作者");
            return;
        }
        /*motttoDesc*/
        if(mottoDesc.length<15){
            alert("描述至少15个字符");
            return;
        }

        $.ajax({
            url: "/motto/updateByMottoId",
            type: "post",
            data: {
                id:id,
                mottoTitle: mottoTitle,
                mottoAuthor:mottoAuthor,
                mottoDesc: mottoDesc,
                status:status
            },
            dataType: "json",
            success: function (data) {
                alert(data.msg);
                $(".content").load("${pageContext.request.contextPath}/motto/add2MottoList");
            },
            error: function (data) {
                alert(data.msg);
            }

        })
    })

</script>
</body>
</html>
