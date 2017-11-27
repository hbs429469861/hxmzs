<%--
  Created by IntelliJ IDEA.
  User: Masteristrator
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
                        <th>masterName</th>
                        <th>masterEmail</th>
                        <th>createDate</th>
                        <th>updateDate</th>
                        <th>状态</th>
                        <th>查看</th>
                        <th>删除</th>
                    </tr>
                    </thead>
                    <tbody>

                     <c:forEach items="${masterEntityList}" var ="c">
                            <tr>
                                <td>${c.id}</td>
                                <td>${c.masterName}</td>
                                <td>${c.masterEmail}</td>
                                <td>
                                    <fmt:formatDate value="${c.createDate}"  pattern="yyyy-MM-dd HH:mm:ss"/>
                                </td>
                                <td> <fmt:formatDate value="${c.updateDate}"  pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                <td>
                                    <c:if test="${c.status=='1'}">
                                        <span class="label bg-blue">启用</span>
                                    </c:if>
                                    <c:if test="${c.status=='0'}">
                                        <span class="label label-danger">已删除</span>
                                    </c:if>
                                </td>
                                <td><a href="#"><i class="icon-file-eye" id="showMaster" data-id="${c.id}" onclick="showMaster(this)" ></i></a></td>
                                <td><a href="#"><i class="icon-eraser2" data-status="${c.status}" id="deleteMaster" data-id="${c.id}" onclick="deleteMaster(this)" ></i></a></td>
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
            $('.content').load("${pageContext.request.contextPath}/master/add2MasterList?pId="+pids);
        });

        $("#nextPage").on('click',function() {
            var pid = $("#nextPage").attr("pid");

            $('.content').load("${pageContext.request.contextPath}/master/add2MasterList?pId="+pid);
        });

        /*getPID*/
        $("#pidss").on('click', function() {

            var pid = $("#pid").val();
            if(pid>${page.totalPageCount}){
                alert("输入页码超出，请重新输入");
                return ;
            }

            $('.content').load("${pageContext.request.contextPath}/master/add2MasterList?pId="+pid);;
        });


        /*查看*/
        function showMaster(obj){
            var id=obj.getAttribute("data-id");
            console.log(id);
            $(".content").load("${pageContext.request.contextPath}/master/show2MasterUI?id="+id);

        }

        /*删除*/
        function deleteMaster(obj){
            var id=obj.getAttribute("data-id");
            var status = obj.getAttribute("data-status");
            alert(status);
            if(window.confirm('你确定要删除吗？')){
                if(true){
                    var id = obj.getAttribute("data-id");
                    var status = obj.getAttribute("data-status");
                    $.ajax({
                        url : "/master/deleteById",
                        type : "post",
                        data : {
                            id:id,
                            status:status
                        },
                        dataType : "json",
                        success : function(data) {
                            alert(data.msg);
                            $(".content").load("${pageContext.request.contextPath}/master/add2MasterList");
                        },
                        error : function (data) {
                            alert(data.msg);
                        }
                    });
                }else{
                    $(".content").load("${pageContext.request.contextPath}/master/add2MasterUI");
                    return false;
                }
            }

        }



    </script>


