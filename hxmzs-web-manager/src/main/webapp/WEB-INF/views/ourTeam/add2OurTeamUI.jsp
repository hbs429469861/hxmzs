<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2016/9/22
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/ajaxfileupload.js"></script>



<div id="contentss">
    <!-- Helper classes -->
    <div class="panel panel-flat">
        <div class="panel-heading">
            <h5 class="panel-title">
                hello
            </h5>

        </div>


        <input id="teamImgUrl" type="hidden" value=""/>
        <div class="panel-body" >
            <form class="form-horizontal" action="#">
                <fieldset class="content-group">
                    <legend class="text-bold">OurTeam添加</legend>

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
                                                    <input type="text" class="form-control" placeholder="Enter your teamTitle" id="teamTitle">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your teamProfessional:</label>
                                                    <input type="text" class="form-control" placeholder="Enter your teamProfessional" id="teamProfessional">
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
                                                    <label>Your teamContent:</label>
                                                    <textarea rows="5" cols="5" class="form-control" placeholder="Enter your message here" id="teamContent"></textarea>
                                                </div>


                                                <div class="form-group">
                                                    <input  id="file1" type="file"  name="file1" style="display: none">
                                                     <span class="help-block bg-warning" style=" width: 15%;height: 50px;"  onclick="return setPic();">
                                                        <i class="icon-googleplus5 bg-warning" style="padding-top: 20px;padding-left: 35%;margin-top:1px;"></i>
                                                    </span>
                                                    <span class="help-block">Accepted formats: gif, png, jpg. Max file size 2Mb</span>
                                                </div>

                                               <%-- <div class="form-group">
                                                    <label>Your message:</label>
                                                    <textarea rows="5" cols="5" class="form-control" placeholder="Enter your message here"></textarea>
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

    /*保留换行*/
    var element = $("#teamContent");
    var temp =  element.text().replace(/\n/g,'<br/>');
    element.html(temp);

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

        var teamTitle=$("#teamTitle").val();
        console.log("teamTitle"+teamTitle);

        var teamProfessional = $("#teamProfessional").val();
        console.log("teamProfessional"+teamProfessional);

         var teamContent = $("#teamContent").val();
        console.log("teamContent"+teamContent);

        var teamImgUrl =  $('#teamImgUrl').val();
        console.log("teamImgUrl"+teamImgUrl);

        /*var imagePosition=$("#imagePosition option:selected").val();
        console.log("imagePosition  "+imagePosition);*/
        /*var jsonConfig ={} ;

        jsonConfig["teamImgUrl"] = $('#teamImgUrl').val();
        jsonConfig["ourTeamTitle"] =ourTeamTitle;
        jsonConfig["imagePosition"] = imagePosition;
        jsonConfig["ourTeamIntroduce"] = ourTeamIntroduce;*/

        //var formdata = "config="+encodeURIComponent(JSON.stringify(jsonConfig),"utf-8");
        $.ajax({
            url : "/ourTeam/add2OurTeam",
            type : "POST",
            data: {
                teamTitle: teamTitle,
                teamProfessional:teamProfessional,
                teamContent: teamContent,
                teamImgUrl:teamImgUrl
            },
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

</body>
</html>
