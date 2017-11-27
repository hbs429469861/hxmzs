<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/9/22
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/ajaxfileupload.js"></script>
<script>

    $(document).ready(function () {
        /*保留换行*/
        var element = $("#caseContent");
        var temp =  element.text().replace(/\n/g,'<br/>');
        element.html(temp);
    })
</script>

<div id="contentss">
    <!-- Helper classes -->
    <div class="panel panel-flat">
        <div class="panel-heading">
            <h5 class="panel-title">
                hello
            </h5>

        </div>


        <img name ="activityImg" src="" id="activityImg" style="display: none;"/>
        <input id="caseImgUrl" type="hidden" value="${caseProject.caseImgUrl}"/>

        <div class="panel-body" >
            <form class="form-horizontal">
                <fieldset class="content-group">
                    <legend class="text-bold">CaseProject修改</legend>

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

                                    <input type="hidden" value="${caseProject.id}" id="caseProjectId">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <div class="form-group">
                                                    <label>Enter your caseTitle:</label>
                                                    <input type="text" value="${caseProject.caseTitle}" class="form-control" placeholder="Enter your caseTitle" id="caseTitle">
                                                </div>



                                                <div class="form-group">
                                                    <label>Select your caseType:</label>
                                                    <select data-placeholder="Select your state" class="form-control" id="caseType" name="select">
                                                        <option value="web" <c:if test="${caseProject.caseType=='web'}">selected="selected"</c:if>>web</option>
                                                        <option value="photo" <c:if test="${caseProject.caseType=='photo'}">selected="selected"</c:if>>photo</option>

                                                    </select>
                                                </div>


                                                <div class="form-group">
                                                    <label>Select your status:</label>
                                                    <select data-placeholder="Select your state" class="form-control" id="status" name="select">
                                                        <option value="1"<c:if test="${caseProject.status=='1'}">selected="selected"</c:if>>启用</option>
                                                        <option value="0"<c:if test="${caseProject.status=='0'}">selected="selected"</c:if>>关闭</option>

                                                    </select>
                                                </div>



                                                <div class="form-group">
                                                    <label>Enter your caseDate:</label>
                                                    <input type="date" value="${caseProject.caseDate}" class="form-control" placeholder="Enter your caseDate" id="caseDate">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your caseDesc:</label>
                                                    <input type="text" value="${caseProject.caseDesc}" class="form-control" placeholder="Enter your teamProfessional" id="caseDesc">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your caseClass:</label>
                                                    <input type="text"  value="${caseProject.caseClass}" class="form-control" placeholder="Enter your caseClass" id="caseClass">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your caseSource:</label>
                                                    <input type="text" value="${caseProject.caseSource}" class="form-control" placeholder="Enter your caseSource" id="caseSource">
                                                </div>


                                                <div class="form-group">
                                                    <label>Your caseContent:</label>
                                                    <textarea rows="5" cols="5" class="form-control" placeholder="Enter your message here" id="caseContent">${caseProject.caseContent}</textarea>
                                                </div>


                                                <div class="form-group">
                                                    <input  id="file1" type="file"  name="file1" style="display: none">
                                                    <span class="help-block bg-warning" style=" width: 15%;height: 50px;"  onclick="return setPic();">
                                                        <i class="icon-googleplus5 bg-warning" style="padding-top: 20px;padding-left: 35%;margin-top:1px;"></i>
                                                    </span>
                                                    <span class="help-block">Accepted formats: gif, png, jpg. Max file size 2Mb</span>
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


    function setPic() {
        var file1  = document.getElementById('file1');
        file1.click();
    }


    $("#file1").change(function(e){
        var file1  = document.getElementById('file1');
        var content = file1.files[0];
        ajaxImageUpload();
    });

    function getPhotoSize(obj){
        var fileSize = 0;
        var isIE = /msie/i.test(navigator.userAgent) && !window.opera;
        if (isIE && !obj.files) {
            var filePath = obj.value;
            var fileSystem = new ActiveXObject("Scripting.FileSystemObject");
            var file = fileSystem.GetFile (filePath);
            fileSize = file.Size;
        }else {
            fileSize = obj.files[0].size;
        }
        fileSize=Math.round(fileSize/1024*100)/100; //单位为KB

        if(fileSize>512){
            alert("只允许上传最大尺寸为512KB，请重新上传!");
            return false;
        }else{
            return true;
        }
    }


    function ajaxImageUpload() {
        var fileObj  = document.getElementById('file1');
        var flag=getPhotoSize(fileObj);
        if(flag==false){
            //alert(flag);
        }else{
            $.ajaxFileUpload
            (
                    {
                        url: '/uploadImage', //用于文件上传的服务器端请求地址
                        secureuri: false, //是否需要安全协议，一般设置为false
                        fileElementId: 'file1', //文件上传域的ID
                        dataType: 'json', //返回值类型 一般设置为json
                        success: function (data, status)  //服务器成功响应处理函数
                        {
                            data=eval("("+$(data).text()+")");
                            //data = JSON.parse(data);
                            // alert(data);
                            if (data.result == "0") {
                                var obj = $("#activityImg");
                                obj.attr("src", data.url);
                                var imageUrlText = $("#caseImgUrl")
                                imageUrlText.attr("value",data.path);
                            } else if(data.result == "-2"){
                                //无权访问
                                window.location.href = '/index';
                            }else {
                                alert(data.message+"上传失败");
                            }
                        },
                        error: function (data, status, e)//服务器响应失败处理函数
                        {
                            data=eval("("+$(data).text()+")");
                            alert("data:"+data+" status:"+status);
                            alert(e+"上传错误");
                        }
                    }
            )}
        return false;
    }

    $("#save").click(function(){
        var id=$("#caseProjectId").val();
        var caseTitle=$("#caseTitle").val();
        console.log("caseTitle"+caseTitle);

        var caseType = $("#caseType").val();
        console.log("caseType"+caseType);

        var caseContent = $("#caseContent").val();
        console.log("caseContent"+caseContent);

        if(caseContent==""){
            alert("内容不能为空");
            return;
        }

         var caseDate = $("#caseDate").val();
        console.log("caseDate"+caseDate);

        var caseImgUrl =  $('#caseImgUrl').val();
        console.log("caseImgUrl"+caseImgUrl);


        var caseDesc =  $('#caseDesc').val();
        console.log("caseDesc"+caseDesc);


        var caseClass =  $('#caseClass').val();
        console.log("caseClass"+caseClass);
        var caseSource =  $('#caseSource').val();
        console.log("caseSource"+caseSource);


        var status = $("#status option:selected").val();
        console.log("status  "+status);


        $.ajax({
            url : "/caseProject/updateByCaseProjectId",
            type : "POST",
            data: {
                id: id,
                caseType: caseType,
                caseTitle:caseTitle,
                caseContent: caseContent,
                caseDate: caseDate,
                caseDesc:caseDesc,
                caseClass: caseClass,
                caseSource: caseSource,
                caseImgUrl:caseImgUrl,
                status:status
            },
            success : function(data) {
                alert(data.msg);
                $(".content").load("${pageContext.request.contextPath}/caseProject/add2CaseProjectList");
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
