<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Content area -->

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/ajaxfileupload.js"></script>

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

        <input id="teamImgUrl" type="hidden" value="${ourTeam.teamImgUrl}"/>
        <div class="panel-body" >
            <form class="form-horizontal" action="#">
                <fieldset class="content-group">
                    <legend class="text-bold">Team修改</legend>
                    <input type="hidden" value="${ourTeam.id}" id="ourTeamId">
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
                                                    <input type="text" value="${ourTeam.teamTitle}" class="form-control" placeholder="Enter your teamTitle" id="teamTitle">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your teamProfessional:</label>
                                                    <input type="text" value="${ourTeam.teamProfessional}" class="form-control" placeholder="Enter your teamProfessional" id="teamProfessional">
                                                </div>


                                                <div class="form-group">
                                                    <label>Select your status:</label>
                                                    <select data-placeholder="Select your state" class="form-control" id="status" name="select">
                                                        <option value="0"<c:if test="${ourTeam.status=='0'}">selected="selected"</c:if>>关闭</option>
                                                        <option value="1"<c:if test="${ourTeam.status=='1'}">selected="selected"</c:if>>启用</option>

                                                    </select>
                                                </div>



                                                <div class="form-group">
                                                    <label>Attach screenshot:</label>

                                                    <input  id="file1" type="file"  name="file1" style="display: none">
                                                     <span class="help-block bg-warning" style=" width: 15%;height: 50px;"  onclick="return setPic();">
                                                        <i class="icon-googleplus5 bg-warning" style="padding-top: 20px;padding-left: 35%;margin-top:1px;"></i>
                                                    </span>

                                                    <span class="help-block">Accepted formats: gif, png, jpg. Max file size 2Mb</span>
                                                </div>

                                                <div class="form-group">
                                                    <label>Your teamContent:</label>
                                                    <textarea rows="5" cols="5" class="form-control" placeholder="Enter your message here" id="teamContent">${ourTeam.teamContent}</textarea>
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
            alert("头像尺寸为"+fileSize+"kb,只允许上传最大尺寸为512KB，请重新上传!");
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
                                var imageUrlText = $("#teamImgUrl")
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
        var id=$("#ourTeamId").val();

        var teamTitle=$("#teamTitle").val();
        console.log("teamTitle"+teamTitle);

        var teamProfessional = $("#teamProfessional").val();
        console.log("teamProfessional"+teamProfessional);

        var teamContent = $("#teamContent").val();
        console.log("teamContent"+teamContent);

        if(teamContent==""){
            alert("请输入内容");
            return;
        }

        var teamImgUrl =  $('#teamImgUrl').val();
        console.log("teamImgUrl"+teamImgUrl);

        var status = $("#status option:selected").val();
        console.log("status  "+status);


        $.ajax({
            url : "/ourTeam/updateByOurTeamId",
            type : "POST",
            data: {
                id:id,
                teamTitle: teamTitle,
                teamProfessional:teamProfessional,
                teamContent: teamContent,
                teamImgUrl:teamImgUrl,
                status:status
            },
            dataType: "json",
            success : function(data) {
                alert(data.msg);
                $(".content").load("${pageContext.request.contextPath}/ourTeam/add2OurTeamList");
            },
            error : function (data) {
                alert(data.msg);
            },
            timeout : 20000
        });
    })
</script>