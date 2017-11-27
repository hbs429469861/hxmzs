<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/29
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Content area -->

    <!-- Helper classes -->
    <div id="contents">

        <div class="panel-body" >
            <div class="table-responsive">
                <table class="table table-bordered table-framed">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>username</th>
                        <th>createDate</th>
                        <th>updateDate</th>
                        <th>状态</th>
                        <th>查看</th>
                        <th>编辑</th>
                        <th>删除</th>
                    </tr>
                    </thead>
                    <tbody>

                     <c:forEach items="${adminList}" var ="c">
                            <tr>
                                <td>${c.id}</td>
                                <td>${c.username}</td>
                                <td>
                                    <fmt:formatDate value="${c.createdTime}"  pattern="yyyy-MM-dd HH:mm:ss"/>
                                </td>
                                <td> <fmt:formatDate value="${c.createdTime}"  pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                <td><span class="label label-danger">无</span></td>
                                <td><a href="#"><i class="icon-file-eye" id="showAdmin" data-id="${c.id}" onclick="showAdmin(this)" ></i></a></td>
                                <td><a href="#"><i class="icon-pencil7" id="editAdminUI" data-id="${c.id}" onclick="editAdminUI(this)" ></i></a></td>
                                <td><a href="#"><i class="icon-eraser2" id="deleteAdmin" data-id="${c.id}" onclick="deleteAdmin(this)" ></i></a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>


        <%--分页--%>
        <div class="pagination" style="margin-left: 30%;">

                <span >
                    <c:if test="${ page.currPageNo gt 1}">
                        <c:set var="pId" value="${ page.currPageNo - 1}" />
                        <a id="previousPage" pid="${ pId}">上一页</a>
                        </c:if>

                        <c:if test="${ page.currPageNo lt page.totalPageCount}">
                            <c:set var="pId" value="${ page.currPageNo+1}"/>
                            <a id="nextPage" pid="${ pId}" >下一页</a>
                    </c:if>
                        <input type="number"  value="" id="pid" name="pid"> <input type="button"  value="跳转" class=" btn btn-primary" id="pidss">总共有${page.totalPageCount}页
                </span>


        </div>

     </div>



    <%--footer--%>
    <jsp:include page="/WEB-INF/views/footer.jsp"/>


    <script type="text/javascript">
        $("#previousPage").click(function() {
            var pid = $("#previousPage").attr("pid");
            var pids= (${page.currPageNo})-1;
            $('.content').load("${pageContext.request.contextPath}/admin/add2AdminList?pId="+pids);
        });

        $("#nextPage").on('click',function() {
            var pid = $("#nextPage").attr("pid");

            $('.content').load("${pageContext.request.contextPath}/admin/add2AdminList?pId="+pid);
        });

        /*getPID*/
        $("#pidss").on('click', function() {

            var pid = $("#pid").val();
            if(pid>${page.totalPageCount}){
                alert("输入页码超出，请重新输入");
                return ;
            }

            $('.content').load("${pageContext.request.contextPath}/admin/add2AdminList?pId="+pid);;
        });


        /*查看*/
        function showAdmin(obj){
            var id=obj.getAttribute("data-id");
            console.log(id);
            $(".content").load("${pageContext.request.contextPath}/admin/show2AdminUI?id="+id);

        }

        /*编辑*/
        function editAdminUI(obj){
            var id=obj.getAttribute("data-id");
            console.log(id);
            $(".content").load("${pageContext.request.contextPath}/admin/edit2AdminUI?id="+id);

        }

        /*删除*/
        function deleteAdmin(obj){
            var id=obj.getAttribute("data-id");
            if(window.confirm('你确定要删除吗？')){
                if(true){
                    var id = obj.getAttribute("data-id");
                    var status = obj.getAttribute("data-status");
                    $.ajax({
                        url : "/admin/deleteById",
                        type : "post",
                        data : {
                            id:id
                        },
                        dataType : "json",
                        success : function(data) {
                            alert(data.msg);
                            $(".content").load("${pageContext.request.contextPath}/admin/add2AdminList");
                        },
                        error : function (data) {
                            alert(data.msg);
                        }
                    });
                }else{
                    $(".content").load("${pageContext.request.contextPath}/admin/add2AdminUI");
                    return false;
                }
            }






        }


        /*$("#save").click(function(){
            //alert(4444);
            var username=$("#username").val();
            var password=$("#password").val();

            $.ajax({
                url : "/admin/add2Admin",
                type : "post",
                data : {
                    username:username,
                    password:password
                },
                dataType : "json",
                success : function(data) {
                    alert(data.msg);
                    //window.location.href="/wxweb-manager/index.shtml";
                    //window.location.href="/admin/index";
                },
                error : function (data) {
                    alert(data.msg);
                }

            });

        });*/


    </script>


