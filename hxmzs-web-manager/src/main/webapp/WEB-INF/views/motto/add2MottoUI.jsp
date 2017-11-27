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
                    <legend class="text-bold">格言添加</legend>

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
                                                    <input type="text" class="form-control" placeholder="Enter your homeTitle" id="mottoTitle">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your mottoAuthor:</label>
                                                    <input type="text" class="form-control" placeholder="Enter your homeIntroduce" id="mottoAuthor">
                                                </div>

                                                <div class="form-group">
                                                     <label>Your mottoDesc:</label>
                                                    <input type="text" class="form-control" placeholder="Enter your homeIntroduce" id="mottoDesc">
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

        var mottoTitle = $("#mottoTitle").val();
        var mottoAuthor = $("#mottoAuthor").val();
        var mottoDesc = $("#mottoDesc").val();


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
            url: "/motto/add2Motto",
            type: "post",
            data: {
                mottoTitle: mottoTitle,
                mottoAuthor:mottoAuthor,
                mottoDesc: mottoDesc
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
