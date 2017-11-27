<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/1
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/style/images/favicon.png">
    <title>English</title>
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
                <div class="basic-wrapper"> <a class="btn responsive-menu pull-right" data-toggle="collapse" data-target=".navbar-collapse"><i class='icon-menu-1'></i></a>
                    <a class="navbar-brand" href="index.html"><img src="${pageContext.request.contextPath}/assets/style/images/logo1.png" alt="" data-src="${pageContext.request.contextPath}/assets/style/images/logo.png" data-ret="${pageContext.request.contextPath}/assets/style/images/logo@2x.png" class="retina" /></a> </div>
                <nav class="collapse navbar-collapse pull-right">
                    <ul class="nav navbar-nav">
                        <li><a href="#home">Home</a></li>
                        <li><a href="#services">Works</a></li>
                        <li><a href="#portfolio">News</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#pricing">Pricing</a></li>
                        <li><a href="#contact">Contact</a></li>

                    </ul>
                </nav>
            </div>
        </div>
        <!--/.nav-collapse -->
    </div>
    <!--/.navbar -->
    <div id="home" class="section">
        <div class="light-wrapper">
            <div class="fullscreenbanner-container revolution">
                <div class="fullscreenbanner">
                    <ul>
                       <%--slider-bg2--%>

                        <c:forEach items="${homeEntities}" var="c" varStatus="idx">
                            <c:if test="${idx.index+1==1}">
                                <li data-transition="fade"> <img  src="${pageContext.request.contextPath}/assets/style/images/art/slider-bg1.jpg" alt="" />
                                    <div class="caption large sfb" data-x="center" data-y="245" data-speed="900" data-start="800" data-easing="Sine.easeOut">${c.homeTitle}</div>
                                    <div class="caption small sfb" data-x="center" data-y="319" data-speed="900" data-start="1500" data-easing="Sine.easeOut">${c.homeIntroduce}</div>
                                    <div class="caption small sfb" data-x="center" data-y="362" data-speed="900" data-start="2200" data-easing="Sine.easeOut">
                                        <div class="smooth"><a href="#portfolio" class="btn btn-border">See Our Projects</a></div>
                                    </div>
                                </li>
                            </c:if>
                            <c:if test="${idx.index+1==2}">
                                <li data-transition="fade"> <img src="${pageContext.request.contextPath}/assets/style/images/art/slider-bg1.jpg" alt="" width="1600px" height="800px"/>
                                    <div class="caption large customin customout" data-x="center" data-y="255" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                         data-speed="600"
                                         data-start="700"
                                         data-easing="Back.easeOut"
                                         data-endspeed="300"
                                         data-endeasing="Power1.easeIn">${c.homeTitle}</div>
                                    <div class="caption small customin customout" data-x="center" data-y="329" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                         data-speed="600"
                                         data-start="1100"
                                         data-easing="Back.easeOut"
                                         data-endspeed="300"
                                         data-endeasing="Power1.easeIn">${c.homeIntroduce}</div>
                                </li>
                            </c:if>
                            <c:if test="${idx.index+1==3}">
                                <li data-transition="fade">  <img  src="${pageContext.request.contextPath}/assets/style/images/art/slider-bg3.jpg" alt="" />
                                    <div class="caption large lite sfb" data-x="center" data-y="245" data-speed="900" data-start="800" data-easing="Sine.easeOut">${c.homeTitle}</div>
                                    <div class="caption small lite sfb" data-x="center" data-y="319"  data-speed="900" data-start="1500" data-easing="Sine.easeOut">${c.homeIntroduce}</div>
                                    <div class="caption small sfb" data-x="center" data-y="362" data-speed="900" data-start="2200" data-easing="Sine.easeOut">
                                        <div class="smooth"><a href="#contact" class="btn btn-border-lite">Get in Touch</a></div>
                                    </div>
                                </li>
                            </c:if>

                          <%--  ${c.id} ${idx.index+1}--%>
                        </c:forEach>



                    </ul>
                    <div class="tp-bannertimer tp-bottom"></div>
                </div>
                <!-- /.fullscreenbanner -->
            </div>
            <!-- /.fullscreenbanner-container -->
        </div>
    </div>


    <div id="services" class="section anchor">
        <div class="light-wrapper">
            <div class="container inner">
                <h2 class="section-title text-center">How It Works</h2>
                <p class="lead main text-center">We're making useful things since 2008</p>
                <div class="row text-center services-1">

                    <c:forEach items="${servicesServices}" var="s">

                        <div class="col-sm-3">
                            <div class="col-wrapper">
                                <div class="icon-wrapper"> <i class="${s.serviceClass}"></i> </div>
                                <h3>${s.serviceTitle}</h3>
                                <p>${s.serviceIntroduce}</p>
                            </div>
                        </div>

                    </c:forEach>

                </div>
                <!-- /.services -->

            </div>
            <!-- /.container -->
        </div>
    </div>
    <!-- /#home -->

    <div class="parallax parallax1">
        <div class="container inner text-center">
            <h1 class="share-button">Click <span class="colored">&</span> Share the Love</h1>
            <div class="share-links">
                <ul>
                    <li><a class="btn share-facebook" href="#">Like</a></li>
                    <li><a class="btn share-twitter" href="#">Tweet</a></li>
                    <li><a class="btn share-pinterest" href="#">Pin it</a></li>
                </ul>
            </div>
        </div>
        <!-- /.container -->
    </div>
    <!-- /.parallax -->

    <div id="portfolio" class="section anchor">
        <div class="dark-wrapper">
            <div class="container inner">
                <h2 class="section-title text-center">Our News</h2>
                <p class="lead main text-center">Great design comes with understanding customer needs</p>
                <div class="grid-portfolio fix-portfolio">
                    <ul class="filter">
                        <li><a class="active" href="#" data-filter="*">All</a></li>
                        <li><a href="#" data-filter=".web">Web Design</a></li>
                        <li><a href="#" data-filter=".graphic">Graphic Design</a></li>
                        <li><a href="#" data-filter=".photo">Photography</a></li>
                        <li><a href="#" data-filter=".motion">Motion Design</a></li>
                    </ul>

                    <!-- /filter -->

                    <ul class="content-slider items">
                        <c:forEach items="${caseProjectEntities}" var="contacts">
                            <li class="item thumb ${contacts.caseType}">
                                <figure><a href="" data-contenturl="${pageContext.request.contextPath}/showDetail?caseId=${contacts.id}" data-callback="callPortfolioScripts();" data-contentcontainer=".pcw">
                                    <div class="text-overlay">
                                        <div class="info">${contacts.caseTitle}</div>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/assets/style/images/art/p1.jpg" alt="" /> </a></figure>
                            </li>
                        </c:forEach>
                    </ul>
                    <!-- /.items -->
                </div>
                <!-- /.portfolio -->
            </div>
        </div>
    </div>
    <!-- /#portfolio -->

    <div class="parallax parallax2 work-together">
        <div class="container inner text-center">
            <h1>We Create Unique <span class="colored">&</span> Gorgeous Things</h1>
            <div class="divide10"></div>
            <div class="smooth"><a href="#contact" class="btn btn-border-lite">Let's Work Together</a></div>
        </div>
        <!-- /.container -->
    </div>
    <!-- /.parallax -->

    <div id="about" class="section anchor">
        <div class="light-wrapper">
            <div class="container inner">
                <h2 class="section-title text-center">About the Company</h2>
                <p class="lead main text-center">A creative agency turning ideas into beautiful things</p>
                <div class="row">
                    <div class="col-sm-8">
                        <h2>Vision and idea</h2>
                        <p class="lead">"Vestibulum ligut praesent commodo cursus magna, consectetur et. Cum socis natoque penatibus et magnis dis tellus parturient pharetra montes."</p>
                        <p>
                            To promote the platform to promote fair education for the majority of students to provide professional, convenient, parity of foreign language training services, so that every working family can be authentic oral English teacher, please go home"
                        </p>
                        <p>
                            The English platform is committed to innovation and service, is willing to work with partners, to provide users with quality products and services for the healthy development of the online education industry to contribute their own strength
                        </p>
                    </div>
                    <div class="col-sm-4">
                        <figure><img src="${pageContext.request.contextPath}/assets/style/images/art/about.jpg" alt="" /></figure>
                    </div>
                </div>
                <div class="divide60"></div>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="section-title">
                            <h3>Our Skills</h3>
                        </div>
                        <p>Duis non lectus sit amet est imperdiet cursus elementum vitae eros. Etiam adipiscingmorbi vitae magna tellus, ac mattis urna phasellus rhoncus.</p>
                        <div class="divide10"></div>
                        <ul class="progress-list">
                            <li>
                                <p>listen <em>90%</em></p>
                                <div class="progress plain">
                                    <div class="bar" style="width: 90%;"></div>
                                </div>
                            </li>
                            <li>
                                <p>Speaking<em>80%</em></p>
                                <div class="progress plain">
                                    <div class="bar" style="width: 80%;"></div>
                                </div>
                            </li>
                            <li>
                                <p>read <em>85%</em></p>
                                <div class="progress plain">
                                    <div class="bar" style="width: 85%;"></div>
                                </div>
                            </li>
                            <li>
                                <p>write <em>75%</em></p>
                                <div class="progress plain">
                                    <div class="bar" style="width: 50%;"></div>
                                </div>
                            </li>
                        </ul>
                        <!-- /.progress-list -->
                    </div>
                    <div class="col-sm-4">
                        <div class="section-title">
                            <h3>Why Choose Us?</h3>
                        </div>
                        <div class="divide5"></div>
                        <div class="panel-group" id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"> <a data-toggle="collapse" class="panel-toggle active" data-parent="#accordion" href="#collapseOne"> 100% Responsive </a> </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in">
                                    <div class="panel-body">Learn English as a mother tongue</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"> <a data-toggle="collapse" class="panel-toggle" data-parent="#accordion" href="#collapseTwo"> Clean & Professional Design </a> </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">Repeated practice is to use a large number of language learning magic weapon</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"> <a data-toggle="collapse" class="panel-toggle" data-parent="#accordion" href="#collapseThree"> Collapsible Group Item #3 </a> </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Language learning persistence
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="section-title">
                            <h3>Our Featured Services</h3>
                        </div>
                        <div class="services-2">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="bm20">
                                        <div class="icon"> <i class="budicon-camera-1 icn"></i> </div>
                                        <!-- /.icon -->
                                        <div class="text">
                                            <h4>Photography</h4>
                                            <p>Nulla vitae libero, a pharetra augue. Integer posuere a ante venenatis condimentum. Donec id elit non.</p>
                                        </div>
                                        <!-- /.text -->
                                    </div>
                                    <!-- /.div -->
                                    <div class="bm20">
                                        <div class="icon"> <i class="budicon-video-1 icn"></i> </div>
                                        <!-- /.icon -->
                                        <div class="text">
                                            <h4>Motion Video</h4>
                                            <p>Nulla vitae libero, a pharetra augue. Integer posuere a ante venenatis condimentum. Donec id elit non.</p>
                                        </div>
                                        <!-- /.text -->
                                    </div>
                                    <!-- /.div -->
                                    <div class="bm20">
                                        <div class="icon"> <i class="budicon-radio icn"></i> </div>
                                        <!-- /.icon -->
                                        <div class="text">
                                            <h4>Sound Design</h4>
                                            <p>Nulla vitae libero, a pharetra augue. Integer posuere a ante venenatis condimentum. Donec id elit non.</p>
                                        </div>
                                        <!-- /.text -->
                                    </div>
                                    <!-- /.div -->
                                </div>
                                <!-- /.col-sm-12 -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.col-services -->
                    </div>
                </div>
                <hr />
                <h2>Meet Our Team</h2>
                <div class="row team text-center">
                    <c:forEach items="${ourTeamEntities}" var="o">
                        <div class="col-sm-4">
                            <figure>
                                <img src="${pageContext.request.contextPath}/assets/style/images/art/p3.jpg" alt="" />
                            </figure>
                            <h3>${o.teamTitle}</h3>
                            <span class="biz-title colored">${o.teamProfessional}</span>
                            <p>${o.teamContent}</p>
                            <ul class="social">
                                <li><a href="#"><i class="icon-s-twitter"></i></a></li>
                                <li><a href="#"><i class="icon-s-facebook"></i></a></li>
                                <li><a href="#"><i class="icon-s-pinterest"></i></a></li>
                                <li><a href="#"><i class="icon-s-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </c:forEach>

                </div>
            </div>
        </div>
    </div>
    <!-- /#about -->

    <div class="parallax parallax4 facts">
        <div class="container inner">
            <div class="row text-center services-3">
                <div class="col-sm-3">
                    <div class="col-wrapper">
                        <div class="icon-border bm10"> <i class="budicon-video-2"></i> </div>
                        <h4>7518</h4>
                        <p>Shots Taken</p>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="col-wrapper">
                        <div class="icon-border bm10"> <i class="budicon-coffee"></i> </div>
                        <h4>3472</h4>
                        <p>Cups of Coffee</p>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="col-wrapper">
                        <div class="icon-border bm10"> <i class="budicon-video"></i> </div>
                        <h4>2184</h4>
                        <p>Movies Watched</p>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="col-wrapper">
                        <div class="icon-border bm10"> <i class="budicon-award-1"></i> </div>
                        <h4>4523</h4>
                        <p>Awards Won</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.container -->
    </div>
    <!-- /.parallax -->

    <div id="pricing" class="section anchor">
        <div class="light-wrapper">
            <div class="container inner">
                <h2 class="section-title text-center">Our Prices</h2>
                <p class="lead main text-center">We offer great prices for your business</p>
                <div class="pricing row">

                    <c:forEach items="${serviceProjectEntities}" var="service">
                        <div class="col-sm-3">
                            <div class="plan">
                                <h3> <span class="featured f1"></span> ${service.projectTitle} </h3>
                                <h4><span class="amount"><span>$</span>${service.projectPrice}</span></h4>
                                <div class="features">
                                    <ul>
                                        <li>${service.projectNum}</li>
                                     <%--   <li>2GB Storage</li>--%>
                                        <li>${service.projectType}</li>
                                        <li>4 / month</li>
                                        <li>Enhanced Security</li>
                                    </ul>
                                    <div class="select">
                                        <div> <a href="#" class="btn inverse">Select Plan</a> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <!-- /.col-sm-3  -->
                </div>
                <!-- /.pricing  -->
            </div>
        </div>
    </div>
    <div class="parallax parallax3 customers">
        <div class="container inner text-center">
            <div class="testimonials owl-carousel thin">

                <c:forEach items="${mottoEntities}" var="mottos">
                    <div class="item">
                        <blockquote>
                            <p>${mottos.mottoDesc}<small>${mottos.mottoAuthor}</small></p>
                        </blockquote>
                    </div>
                </c:forEach>

            </div>
        </div>
        <!-- /.container -->
    </div>
    <!-- /.parallax -->
    <div id="contact" class="section anchor">
        <div class="dark-wrapper">
            <div class="container inner">
                <div class="thin text-center">
                    <h2 class="section-title text-center">Get in Touch</h2>
                    <p class="lead main text-center">Feel Free to Drop Us a Line to contact us</p>

                    <%--contactEntities--%>
                    <c:forEach items="${contactEntities}" var="contact">
                        <p>${contact.contactContent}<%--Cras mattis consectetur purus sit amet fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Nulla vitae elit libero, a pharetra augue. Aenean eu leo quam. Pellentesque ornare sem lacinia.--%></p>
                        <ul class="contact-info">
                            <li><i class="icon-location"></i>>${contact.contactAddress}</li>
                            <li><i class="icon-phone"></i>${contact.contactPhone}</li>
                            <li><i class="icon-mail"></i><a href="#">${contact.contactEmail}</a> </li>
                        </ul>
                    </c:forEach>



                    <div class="divide50"></div>
                    <div class="form-container">
                        <div class="response alert alert-success"></div>
                        <form class="forms" method="post">
                            <fieldset>
                                <ol class="row">
                                    <li class="form-row text-input-row name-field col-sm-6">
                                        <input type="text" id="mastername" name="name" class="text-input defaultText required" title="Name (Required)"/>
                                    </li>
                                    <li class="form-row text-input-row email-field col-sm-6">
                                        <input type="text" id="emails" name="email" class="text-input defaultText required email" title="Email (Required)"/>
                                    </li>
                                    <li class="form-row text-area-row col-sm-12">
                                        <textarea name="message" id="masterAddress" class="text-area required" title="Your message"></textarea>
                                    </li>
                                    <li class="form-row hidden-row">
                                        <input type="hidden" name="hidden" value="" />
                                    </li>
                                    <li class="nocomment">
                                        <label for="nocomment">Leave This Field Empty</label>
                                        <input id="nocomment" value="" name="nocomment" />
                                    </li>
                                    <li class="button-row">
                                        <a id="save" value="Send Message" name="submit" class="btn btn-submit bm0">Save Message</a>
                                    </li>
                                </ol>
                                <input type="hidden" name="v_error" id="v-error" value="Required" />
                                <input type="hidden" name="v_email" id="v-email" value="Enter a valid email" />
                            </fieldset>
                        </form>
                    </div>
                    <!-- /.form-container -->
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>


    </div>
    <!-- /#contact -->
    <footer class="footer">
        <div class="container inner">
            <p class="pull-left">© 2014 english. All rights reserved. Theme by <a href="http://elemisfreebies.com">Bisong</a>.</p>
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


<script type="text/javascript">
    $("#save").click(function() {
        var mastername = $("#mastername").val().trim();
        var masterAddress = $("#masterAddress").val().trim();
        var pattern = /\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}/;
        var emails = $("#emails").val();
        if(mastername==""){
            alert("用户名至少5个字符");
            return;
        }

        if(!pattern.test(emails)){
            alert("邮箱不合法");
            return;
        }

        if(masterAddress==""){
            alert("请输入地址");
            return;
        }
        $.ajax({
            url: "/saveMaster",
            type: "post",
            data: {
                mastername:mastername,
                masterAddress: masterAddress,
                emails: emails
            },
            dataType: "json",
            success: function (data) {
                alert(data.message);
                window.location.href="http://www.hbsong.cn";
            },
            error: function (data) {
                alert(data.message);
            }

        })
    })

</script>
</body>
</html>