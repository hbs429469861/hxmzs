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

        <div class="showcss">
            <img id="img" name="img" width="200" height="100"
                 style="display: none;" />
        </div>
        <input type="hidden" id="fileData" name="fileData"  />
        <input id="caseImgUrl" type="hidden" value=""/>
        <div class="panel-body" >
            <form class="form-horizontal" action="#">
                <fieldset class="content-group">
                    <legend class="text-bold">CaseProject添加</legend>

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
                                                    <label>Enter your caseTitle:</label>
                                                    <input type="text" readonly="readonly" value="${caseProject.caseTitle}" class="form-control" placeholder="Enter your caseTitle" id="caseTitle">
                                                </div>

                                             <%--   <div class="form-group">
                                                    <label>Enter your caseType:</label>
                                                    <input type="text" class="form-control" placeholder="Enter your caseType" id="caseType">
                                                </div>--%>

                                                <div class="form-group">
                                                    <label>Select your caseType:</label>
                                                    <select data-placeholder="Select your state" class="form-control" id="caseType" name="select" disabled ="disabled">
                                                        <option value="web">web</option>
                                                        <option value="photo">photo</option>

                                                    </select>
                                                </div>


                                                <div class="form-group">
                                                    <label>Enter your caseDate:</label>
                                                    <input type="date"value="${caseProject.caseDate}" readonly="readonly" class="form-control" placeholder="Enter your caseDate" id="caseDate">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your caseDesc:</label>
                                                    <input type="text" readonly="readonly" value="${caseProject.caseDesc}" class="form-control" placeholder="Enter your teamProfessional" id="teamProfessional">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your caseClass:</label>
                                                    <input type="date" value="${caseProject.caseClass}" class="form-control" placeholder="Enter your caseClass" id="caseClass">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your caseSource:</label>
                                                    <input type="text" value="${caseProject.caseSource}"  class="form-control" placeholder="Enter your caseSource" id="caseSource">
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
                                                <div class="form-group">
                                                    <label>Your caseContent:</label>
                                                    ${caseProject.caseContent}
                                                </div>

                                                <p><img src="http://imgtu.5011.net/uploads/content/20170309/6425471489051060.jpg"></p>



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

        var caseTitle=$("#caseTitle").val();
        console.log("caseTitle"+caseTitle);

        var caseType = $("#caseType").val();
        console.log("caseType"+caseType);

        var caseContent = $("#caseContent").val();
        console.log("caseContent"+caseContent);

         var caseDate = $("#caseDate").val();
        console.log("caseDate"+caseDate);

        var teamImgUrl =  $('#teamImgUrl').val();
        console.log("teamImgUrl"+teamImgUrl);


        var caseDesc =  $('#caseDesc').val();
        console.log("caseDesc"+caseDesc);


        var caseClass =  $('#caseClass').val();
        console.log("caseClass"+caseClass);
        var caseSource =  $('#caseSource').val();
        console.log("caseSource"+caseSource);

        /*var imagePosition=$("#imagePosition option:selected").val();
        console.log("imagePosition  "+imagePosition);*/
        /*var jsonConfig ={} ;

        jsonConfig["teamImgUrl"] = $('#teamImgUrl').val();
        jsonConfig["caseProjectTitle"] =caseProjectTitle;
        jsonConfig["imagePosition"] = imagePosition;
        jsonConfig["caseProjectIntroduce"] = caseProjectIntroduce;*/

        //var formdata = "config="+encodeURIComponent(JSON.stringify(jsonConfig),"utf-8");
        $.ajax({
            url : "/caseProject/add2CaseProject",
            type : "POST",
            data: {
                caseType: caseType,
                caseTitle:caseTitle,
                caseContent: caseContent,
                caseDate: caseDate,
                caseDesc:caseDesc,
                caseClass: caseClass,
                caseSource: caseSource,
                caseImgUrl:caseImgUrl
            },
            success : function(data) {
                alert(data.message);
                $(".content").load("${pageContext.request.contextPath}/caseProject/add2CaseProjectList");
            },
            error : function (data) {
                alert(data.message);
            },
            timeout : 20000
        });
    })
</script>

</body>
</html>
