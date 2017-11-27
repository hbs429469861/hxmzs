<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Global stylesheets -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/assets/assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/assets/assets/css/minified/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/assets/assets/css/minified/core.min.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/assets/assets/css/minified/components.min.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/assets/assets/css/minified/colors.min.css" rel="stylesheet" type="text/css">

	<!-- /global stylesheets -->

	<!-- Core JS files -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/assets/js/plugins/loaders/pace.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/jquery-1.7.2.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/assets/js/core/libraries/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/assets/js/core/libraries/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/assets/js/plugins/loaders/blockui.min.js"></script>
	<!-- /core JS files -->

	<!-- Theme JS files -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/assets/js/core/app.js"></script>
	<!-- /theme JS files -->

	<%--<link href="http://cdn.amazeui.org/amazeui/2.7.2/css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="http://cdn.amazeui.org/amazeui/2.7.2/css/amazeui.min.css" rel="stylesheet" type="text/css">--%>
	<script type="text/javascript" src="http://cdn.amazeui.org/amazeui/2.7.2/js/amazeui.js"></script>
	<script type="text/javascript" src="http://cdn.amazeui.org/amazeui/2.7.2/js/amazeui.min.js"></script>
	<script type="text/javascript" src="http://cdn.amazeui.org/amazeui/2.7.2/js/amazeui.ie8polyfill.js"></script>
	<script type="text/javascript" src="http://cdn.amazeui.org/amazeui/2.7.2/js/amazeui.ie8polyfill.min.js"></script>
	<script type="text/javascript" src="http://cdn.amazeui.org/amazeui/2.7.2/js/amazeui.widgets.helper.js"></script>
	<script type="text/javascript" src="http://cdn.amazeui.org/amazeui/2.7.2/js/amazeui.widgets.helper.min.js"></script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/ajaxfileupload.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/LocalResizeIMG.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/upload/mobileBUGFix.mini.js"></script>
	<%--   --%>
</head>

<body>


	<!-- /main navbar -->
	<jsp:include page="/WEB-INF/views/nav.jsp"/>

	<!-- Page container -->
	<div class="page-container login-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main content -->
			<div class="content-wrapper">

				<!-- Content area -->
				<div class="content">

					<!-- Error wrapper -->
					<div class="container-fluid text-center">
						<h1 class="error-title">500</h1>
						<h6 class="text-semibold content-group">Oops, an error has occurred. Internal server error!</h6>

						<div class="row">
							<div class="col-lg-4 col-lg-offset-4 col-sm-6 col-sm-offset-3">
								<form action="#" class="main-search">
									<div class="input-group content-group">
										<input type="text" class="form-control input-lg" placeholder="Search">

										<div class="input-group-btn">
											<button type="submit" class="btn bg-slate-600 btn-icon btn-lg"><i class="icon-search4"></i></button>
										</div>
									</div>

									<div class="row">
										<div class="col-sm-6">
											<a href="#" class="btn btn-primary btn-block content-group"><i class="icon-circle-left2 position-left"></i> Go to dashboard</a>
										</div>

										<div class="col-sm-6">
											<a href="#" class="btn btn-default btn-block content-group"><i class="icon-menu7 position-left"></i> Advanced search</a>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- /error wrapper -->


					<!-- Footer -->
					<jsp:include page="/WEB-INF/views/footer.jsp"/>
					<!-- /footer -->

				</div>
				<!-- /content area -->

			</div>
			<!-- /main content -->

		</div>
		<!-- /page content -->

	</div>
	<!-- /page container -->

</body>
</html>
