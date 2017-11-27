<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="/WEB-INF/views/heade.jsp"/>

<body class="navbar-top">

<jsp:include page="/WEB-INF/views/nav.jsp"/>


<!-- Page container -->
<div class="page-container">

    <!-- Page content -->
    <div class="page-content">

        <!-- Main sidebar -->
        <div class="sidebar sidebar-main">
            <div class="sidebar-content">

                <!-- User menu -->
                    <div class="sidebar-user">
                    <div class="category-content">
                        <div class="media">
                            <a href="#" class="media-left"><img src="${pageContext.request.contextPath}/assets/assets/images/placeholder.jpg" class="img-circle img-sm" alt=""></a>
                            <div class="media-body">
                                <span class="media-heading text-semibold">${user.username}</span>
                                <div class="text-size-mini text-muted">
                                    <i class="icon-pin text-size-small"></i> &nbsp;China
                                </div>
                            </div>

                            <div class="media-right media-middle">
                                <ul class="icons-list">
                                    <li>
                                        <a href="#"><i class="icon-cog3"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /user menu -->


                <!-- Main navigation -->
                <jsp:include page="/WEB-INF/views/menu.jsp" />
                <!-- /main navigation -->

            </div>
        </div>
        <!-- /main sidebar -->


        <!-- Main content -->
        <div class="content-wrapper">

            <!-- Page header -->
            <jsp:include page="/WEB-INF/views/header.jsp"/>
            <!-- /page header -->


            <!-- Content area -->
            <div class="content">



                <%--footer--%>
                <jsp:include page="/WEB-INF/views/footer.jsp"/>
            </div>
            <!-- /content area -->

        </div>
        <!-- /main content -->

    </div>
    <!-- /page content -->

</div>
<!-- /page container -->

<script type="text/javascript">

    $("#add2AadminUI").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2AadminUI");
        $(".content").load("${pageContext.request.contextPath}/admin/add2AdminUI");
    })

    /*add2AadminList*/
    $("#add2AdminList").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2AdminList");
        $(".content").load("${pageContext.request.contextPath}/admin/add2AdminList");
    })

    $("#add2HomeUI").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2HomeUI");
        $(".content").load("${pageContext.request.contextPath}/home/add2HomeUI");
    })

    /*add2HomeList*/
    $("#add2HomeList").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2HomeList");
        $(".content").load("${pageContext.request.contextPath}/home/add2HomeList");
    })


    /*add2Article*/
    $("#add2ContactUI").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2ContactUI");
        $(".content").load("${pageContext.request.contextPath}/contact/add2ContactUI");
    })

    /*add2ArticleLists*/
    $("#add2ContactLists").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2ContactLists");
        $(".content").load("${pageContext.request.contextPath}/contact/add2ContactList");
    })

    /*add2Motto*/
    $("#add2MottoUI").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2MottoUI");
        $(".content").load("${pageContext.request.contextPath}/motto/add2MottoUI");
    })

    $("#add2MottoLists").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2MottoList");
        $(".content").load("${pageContext.request.contextPath}/motto/add2MottoList");
    })


    /*iconSetting*/
    $("#iconSetting").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2MottoList");
       /* $(".content").load("${pageContext.request.contextPath}/service/iconSetting");*/
        window.location.href="${pageContext.request.contextPath}/service/iconSetting";
    })

    $("#add2OurTeamUI").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2OurTeamUI");
        $(".content").load("${pageContext.request.contextPath}/ourTeam/add2OurTeamUI");
    })


    $("#add2OurTeamList").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2OurTeamList");
        $(".content").load("${pageContext.request.contextPath}/ourTeam/add2OurTeamList");
    })

    /*add2CaseProjectUI*/
    $("#add2CaseProjectUI").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2CaseProjectUI");
        $(".content").load("${pageContext.request.contextPath}/caseProject/add2CaseProjectUI");
    })

    /*add2CaseProjectList*/
    $("#add2CaseProjectList").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2CaseProjectList");
        $(".content").load("${pageContext.request.contextPath}/caseProject/add2CaseProjectList");
    })

    /*add2ServicesUI*/
    $("#add2ServicesUI").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2ServicesUI");
        $(".content").load("${pageContext.request.contextPath}/service/add2ServicesUI");
    })

    /*add2ServicesList*/
    $("#add2ServicesList").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2ServicesList");
        $(".content").load("${pageContext.request.contextPath}/service/add2ServicesList");
    })

    /*add2ServiceProjectUI add2ServiceProjectList */
    $("#add2ServiceProjectUI").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2ServiceProjectUI");
        $(".content").load("${pageContext.request.contextPath}/serviceProject/add2ServiceProjectUI");
    })

    /*add2ServiceProjectList*/
    $("#add2ServiceProjectList").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2ServiceProjectList");
        $(".content").load("${pageContext.request.contextPath}/serviceProject/add2ServiceProjectList");
    })

    /*add2LogsList*/
    $("#add2LogsList").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2LogsList");
        $(".content").load("${pageContext.request.contextPath}/logs/add2LogsList");
    })

    /*add2MasterList*/
    $("#add2MasterList").click(function(){
        $(this).addClass("'class", "active"); //设置p元素的class为 "high"
        console.log("add2MasterList");
        $(".content").load("${pageContext.request.contextPath}/master/add2MasterList");
    })


</script>





</body>
</html>
