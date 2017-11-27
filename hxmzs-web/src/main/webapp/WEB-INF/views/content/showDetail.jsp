<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/9
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/style/images/favicon.png">
    <title>Frost</title>
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/assets/style/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/style/css/settings.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/style/css/owl.carousel.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/style/js/google-code-prettify/prettify.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/style/js/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${pageContext.request.contextPath}/assets/style/js/fancybox/helpers/jquery.fancybox-thumbs.css?v=1.0.2" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/assets/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/style/css/color/blue.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Josefin+Sans:400,600,700,400italic,600italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800' rel='stylesheet' type='text/css'>
    <link href="${pageContext.request.contextPath}/assets/style/type/fontello.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/style/type/budicons.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/assets/style/js/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="body-wrapper">
    <div class="navbar default">
        <div class="navbar-header">
            <div class="container">
                <div class="basic-wrapper"> <a class="btn responsive-menu pull-right" data-toggle="collapse" data-target=".navbar-collapse"><i class='icon-menu-1'></i></a> <a class="navbar-brand" href="index.html"><img src="style/images/logo.png" alt="" data-src="style/images/logo.png" data-ret="style/images/logo@2x.png" class="retina" /></a> </div>
                <nav class="collapse navbar-collapse pull-right">
                    <ul class="nav navbar-nav">
                        <li><a href="./#home">Home</a></li>
                        <li><a href="./#services">Services</a></li>
                        <li><a href="./#portfolio">Portfolio</a></li>
                        <li><a href="./#about">About</a></li>
                        <li><a href="./#pricing">Pricing</a></li>
                        <li><a href="./#contact">Contact</a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle js-activated">Features</a>
                            <ul class="dropdown-menu">
                               <%-- <li class="dropdown-submenu"><a href="#">Blog</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="blog.html">Medium Image Layout</a></li>
                                        <li><a href="blog2.html">Grid Blog</a></li>
                                        <li><a href="blog3.html">Grid Blog with Sidebar</a></li>
                                        <li><a href="blog4.html">Classic Blog</a></li>
                                        <li><a href="blog-post.html">Blog Post</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown-submenu"><a href="#">Portfolio Posts</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="portfolio-post.html">Post with Wide Slider</a></li>
                                        <li><a href="portfolio-post2.html">Post with Half Slider</a></li>
                                        <li><a href="portfolio-post3.html">Post with Carousel Gallery</a></li>
                                        <li><a href="portfolio-post4.html">Post with Multiple Images</a></li>
                                        <li><a href="portfolio-post5.html">Post with Half Images</a></li>
                                        <li><a href="portfolio-post6.html">Post with Fullscreen Slider</a></li>
                                        <li><a href="portfolio-post7.html">Post with Fullwidth Video</a></li>
                                        <li><a href="portfolio-post8.html">Post with Half Video</a></li>
                                    </ul>
                                </li>
                                <li><a href="elements.html">Elements</a></li>
                                <li><a href="headings.html">Headings</a></li>
                                <li><a href="footer.html">Footer with Widgets</a></li>
                                <li><a href="pricing.html">Pricing Table</a></li>
                                <li><a href="fontello.html">Font Icons - Fontello</a></li>--%>
                                <li><a href="budicon.html">Font Icons - Budicon</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!--/.nav-collapse -->
    </div>
    <!--/.navbar -->
    <div class="offset"></div>
    <div class="pcw">
        <div class="owl-carousel portfolio-slider custom-controls">
            <div class="item"><img src="http://admin.hbsong.cn/lbkactive/${caseProjectEntity.caseImgUrl}" style="width:1920px;height:450px !important;"  alt="" /></div>
        </div>
        <div class="divide30"></div>
        <div class="container inner tp0">
            <h1 class="post-title">${caseProjectEntity.caseTitle}</h1>
            <div class="row">
                <div class="col-sm-8">
                    <p>${caseProjectEntity.caseDesc}</p>
                    <p>${caseProjectEntity.caseContent}</p>
                    <a href="#" class="btn">See Project</a> </div>
                <!-- /.col-sm-8 -->
                <div class="col-sm-4 lp30">
                    <ul class="item-details">
                        <li>
                            <h4>Date</h4>
                            ${caseProjectEntity.caseDate}
                        </li>
                        <li>
                            <h4>Categories</h4>
                            ${caseProjectEntity.caseSource}
                        </li>
                        <li>
                            <h4>Client</h4>
                            ${caseProjectEntity.caseClass}
                        </li>
                    </ul>
                </div>
                <!-- /.col-sm-4 -->
            </div>
            <!-- /.row -->

        </div>
        <div class="dark-wrapper">
            <div class="container inner text-center">
                <h1 class="share-button">Click <span class="colored">&</span> Share the Love</h1>
                <div class="share-links">
                    <ul>
                        <li><a class="btn share-facebook" href="#">Like</a></li>
                        <li><a class="btn share-twitter" href="#">Tweet</a></li>
                        <li><a class="btn share-pinterest" href="#">Pin it</a></li>
                    </ul>
                </div>
                <!-- /.share-links -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /.dark-wrapper -->
    </div>
    <!-- /.pcw -->
    <footer class="footer">
        <div class="container inner">
            <p class="pull-left">© 2014 english. All rights reserved. Theme by <a href="#">Bisong</a>.</p>
            <ul class="social pull-right">
                <li><a href="#"><i class="icon-s-rss"></i></a></li>
                <li><a href="#"><i class="icon-s-twitter"></i></a></li>
                <li><a href="#"><i class="icon-s-facebook"></i></a></li>
                <li><a href="#"><i class="icon-s-dribbble"></i></a></li>
                <li><a href="#"><i class="icon-s-pinterest"></i></a></li>
                <li><a href="#"><i class="icon-s-instagram"></i></a></li>
                <li><a href="#"><i class="icon-s-vimeo"></i></a></li>
            </ul>
        </div>
        <!-- .container -->
    </footer>
    <!-- /footer -->
</div>
<!-- .body-wrapper -->
<script src="${pageContext.request.contextPath}/assets/style/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/twitter-bootstrap-hover-dropdown.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/jquery.themepunch.plugins.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/jquery.themepunch.revolution.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/jquery.easytabs.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/jquery.isotope.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/jquery.fitvids.js"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/jquery.fancybox.pack.js"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/fancybox/helpers/jquery.fancybox-thumbs.js?v=1.0.2"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/fancybox/helpers/jquery.fancybox-media.js?v=1.0.0"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/jquery.slickforms.js"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/instafeed.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/retina.js"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/google-code-prettify/prettify.js"></script>
<script src="${pageContext.request.contextPath}/assets/style/js/scripts.js"></script>
</body>
</html>