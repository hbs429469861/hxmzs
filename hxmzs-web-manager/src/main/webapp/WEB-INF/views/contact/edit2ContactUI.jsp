<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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



<div id="contentss">
    <!-- Helper classes -->
    <div class="panel panel-flat">
        <div class="panel-heading">
            <h5 class="panel-title">
                hello
            </h5>

        </div>

        <div class="panel-body" >
            <form class="form-horizontal" >
                <fieldset class="content-group">
                    <legend class="text-bold">联系信息修改</legend>
                    <!-- Centered forms -->
                    <div class="row">
                        <div class="col-md-12">
                            <form>
                                <div class="panel panel-flat">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <h5 class="panel-title">contact form</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <input type="hidden" id="contactId" value="${contact.id}">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">
                                                <div class="form-group">
                                                    <label>Enter your contactTitle:</label>
                                                    <input type="text"  value="${contact.contactTitle}" class="form-control" placeholder="Enter your contactTitle" id="contactTitle">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your contactDesc:</label>
                                                    <input type="text"   value="${contact.contactDesc}" class="form-control" placeholder="Enter your contactDesc" id="contactDesc">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your contactAddress:</label>
                                                    <input type="text"  value="${contact.contactTitle}"  class="form-control" placeholder="Enter your contactAddress" id="contactAddress">
                                                </div>

                                                <div class="form-group">
                                                    <label>Enter your contactPhone:</label>
                                                    <input type="text"   value="${contact.contactPhone}" class="form-control" placeholder="Enter your contactPhone" id="contactPhone">
                                                </div>
                                                <div class="form-group">
                                                    <label>Enter your contactEmail:</label>
                                                    <input type="text"   value="${contact.contactEmail}" class="form-control" placeholder="Enter your contactEmail" id="contactEmail">
                                                </div>
                                                <div class="form-group">
                                                     <label>Your message:</label>
                                                     <textarea rows="5" cols="5" class="form-control" placeholder="Enter your message here" id="contactContent">${contact.contactContent}</textarea>
                                                </div>

                                                <div class="form-group">
                                                    <label>Select your status:</label>
                                                    <select data-placeholder="Select your state" class="form-control" id="status" name="select">
                                                        <option value="0"<c:if test="${ourTeam.status=='0'}">selected="selected"</c:if>>关闭</option>
                                                        <option value="1"<c:if test="${ourTeam.status=='1'}">selected="selected"</c:if>>启用</option>

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
        var element = $("#contactContent");
        var temp =  element.text().replace(/\n/g,'<br/>');
        element.html(temp);
    });
</script>

<script type="text/javascript">


    $("#save").click(function(){

        var id=$("#contactId").val();
        console.log("contactId  "+contactId);


        var contactTitle=$("#contactTitle").val();
        console.log("contactTitle  "+contactTitle);

        var contactDesc = $("#contactDesc").val();
        console.log("contactDesc  "+contactDesc);

        var contactContent = $("#contactContent").val();
        console.log("contactContent  "+contactContent);

        var contactAddress = $("#contactAddress").val();
        console.log("contactAddress  "+contactAddress);

        var pattern = /\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}/;
        var contactEmail = $("#contactEmail").val();

        var status = $("#status option:selected").val();
        console.log("status  "+status);


        alert(pattern.test(contactEmail));
        if(!pattern.test(contactEmail)){
            alert("邮箱不合法");
            return;
        }
        var contactPhone = $("#contactPhone").val();
        console.log("contactPhone  "+contactPhone);

        var phone = /[0-9-()（）]{7,18}/;

        if(!phone.test(contactPhone)){
            alert("电话不合法");
            return;
        }


        $.ajax({
            url: "/contact/updateByContactId",
            type: "post",
            data: {
                id:id,
                contactTitle: contactTitle,
                contactDesc:contactDesc,
                contactContent: contactContent,
                contactAddress:contactAddress,
                contactEmail:contactEmail,
                status:status,
                contactPhone:contactPhone
            },
            dataType: "json",
            success: function (data) {
                alert(data.msg);
                $(".content").load("${pageContext.request.contextPath}/contact/add2ContactList");
            },
            error: function (data) {
                alert(data.msg);
            }

        })



    })
</script>

</body>
</html>
