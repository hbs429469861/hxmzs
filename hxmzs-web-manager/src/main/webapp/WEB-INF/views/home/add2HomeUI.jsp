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

        <%--<div class="showcss">
            <img id="img" name="img" width="200" height="100"
                 style="display: none;" />
        </div>
        <input type="hidden" id="fileData" name="fileData"  />--%>
        <img name ="activityImg" src="" id="activityImg" style="display: none;"/>
        <input id="homeUrl" type="hidden" value=""/>

        <div class="panel-body" >
            <form class="form-horizontal" action="#">
                <fieldset class="content-group">
                    <legend class="text-bold">首页Banner添加</legend>

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
                                                    <input type="text" class="form-control" placeholder="Enter your homeTitle" id="homeTitle">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your homeIntroduce:</label>
                                                    <input type="text" class="form-control" placeholder="Enter your homeIntroduce" id="homeIntroduce">
                                                </div>

                                                <div class="form-group">
                                                    <label>Select your imagePosition:</label>
                                                   <select data-placeholder="Select your state" class="form-control" id="imagePosition" name="select">
                                                            <option value="1">顶部</option>
                                                            <option value="2">中上</option>
                                                            <option value="3">中下</option>
                                                            <option value="4">底部</option>

                                                    </select>
                                                </div>

                                                <div class="form-group">
                                                    <label>Attach screenshot:</label>
                                                    <input  id="file1" type="file"  name="file1" style="display: none">
                                                    <span class="help-block bg-warning" style=" width: 15%;height: 50px;"  onclick="return setPic();">
                                                        <i class="icon-googleplus5 bg-warning" style="padding-top: 20px;padding-left: 35%;margin-top:1px;"></i>
                                                    </span>
                                                    <span class="help-block">Accepted formats: gif, png, jpg. Max file size 512KB</span>
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
                                var imageUrlText = $("#homeUrl")
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

        var homeTitle=$("#homeTitle").val();
        console.log("homeTitle"+homeTitle);

        var homeIntroduce = $("#homeIntroduce").val();
        console.log("homeIntroduce"+homeIntroduce);

        var imagePosition=$("#imagePosition option:selected").val();
        console.log("imagePosition  "+imagePosition);



        var jsonConfig ={} ;

        jsonConfig["homeUrl"] = $('#homeUrl').val();
        alert($('#homeUrl').val());
        jsonConfig["homeTitle"] =homeTitle;
        jsonConfig["imagePosition"] = imagePosition;
        jsonConfig["homeIntroduce"] = homeIntroduce;

        var formdata = "config="+encodeURIComponent(JSON.stringify(jsonConfig),"utf-8");
        $.ajax({
            url : "/home/add2Home",
            type : "POST",
            data : formdata,
            dataType : "json",
            success : function(data) {
                alert(data.message);
                $(".content").load("${pageContext.request.contextPath}/home/add2HomeList");
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
