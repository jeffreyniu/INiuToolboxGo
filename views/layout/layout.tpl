<!DOCTYPE html>
<!--
Template Name: Admin Lab Dashboard build with Bootstrap v2.3.1
Template Version: 1.2
Author: Mosaddek Hossain
Website: http://thevectorlab.net/
-->

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
	<meta charset="utf-8" />
	<title>i工具箱</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<link href="/static/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="/static/assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
	<link href="/static/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
	<link href="/static/css/style.css" rel="stylesheet" />
	<link href="/static/css/style_responsive.css" rel="stylesheet" />
	<link href="/static/css/style_default.css" rel="stylesheet" id="style_color" />

	<link href="/static/assets/fancybox/source/jquery.fancybox.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="/static/assets/uniform/css/uniform.default.css" />
	<link href="/static/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />

	<link rel="stylesheet" href="/static/assets/jslider/bin/jquery.slider.min.css" type="text/css">
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->

<body class="fixed-top">
	<!-- BEGIN HEADER -->
	<div id="header" class="navbar navbar-inverse navbar-fixed-top">
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="navbar-inner">
			<div class="container-fluid">
				<!-- BEGIN LOGO -->
				<a class="brand" href="/">
					<div style="width:110px;height:50px;position:relative;float:left;top:5px;">
						<img src="/static/img/logo/logo3.png" />
					</div>
				</a>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a class="btn btn-navbar collapsed" id="main_menu_trigger" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="arrow"></span>
				</a>
				<!-- END RESPONSIVE MENU TOGGLER -->
				<div id="top_menu" class="nav notify-row">
					<ul class="nav top-menu">
						<!-- BEGIN SETTINGS -->
						<li class="dropdown">
							<a class="dropdown-toggle element" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Settings">
								<i class="icon-cog"></i>
							</a>
						</li>
						<!-- END SETTINGS -->
						<!-- BEGIN SUPPORT -->
						<li class="dropdown mtop5" id="header_qrcode_bar">
							<a class="dropdown-toggle element" data-placement="bottom" data-toggle="dropdown" href="#" data-original-title="扫码领红包">
								<i class="icon-qrcode"></i>
								<span class="badge badge-important">红包</span>
							</a>
							<ul class="dropdown-menu extended notification">
								<li>
									<img src="/static/img/qrcode/redpackage.jpg" />
								</li>
							</ul>
						</li>
						<li class="dropdown mtop5">
							<a class="dropdown-toggle element" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Help">
								<i class="icon-headphones"></i>
							</a>
						</li>
						<!-- END SUPPORT -->
					</ul>
				</div>
				<div class="top-nav ">
					<ul class="nav pull-right top-menu">
						<!-- BEGIN USER LOGIN DROPDOWN -->
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="/static/img/avatar1_small.jpg" alt="">
								<span class="username">Mosaddek Hossain</span>
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">
										<i class="icon-user"></i> My Profile</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="login.html">
										<i class="icon-key"></i> Log Out</a>
								</li>
							</ul>
						</li>
						<!-- END USER LOGIN DROPDOWN -->
					</ul>
					<!-- END TOP NAVIGATION MENU -->
				</div>
			</div>
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>
	<!-- END HEADER -->
	<!-- BEGIN CONTAINER -->
	<div id="container" class="row-fluid">
		<!-- BEGIN SIDEBAR -->
		<div id="sidebar" class="nav-collapse collapse">
			<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
			<div class="sidebar-toggler hidden-phone"></div>
			<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

			<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
			<div class="navbar-inverse">
				<form class="navbar-search visible-phone">
					<input type="text" class="search-query" placeholder="Search" />
				</form>
			</div>
			<!-- END RESPONSIVE QUICK SEARCH FORM -->
			<!-- BEGIN SIDEBAR MENU -->
			<ul class="sidebar-menu">
				<li class="has-sub active">
					<a href="javascript:;" class="">
						<span class="icon-box">
							<i class="icon-dashboard"></i>
						</span> Dashboard
						<span class="arrow"></span>
					</a>
					<ul class="sub">
						<li class="active">
							<a class="" href="/">Dashboard</a>
						</li>
					</ul>
				</li>
				<li class="has-sub">
					<a href="javascript:;" class="">
						<span class="icon-box">
							<i class="icon-file-alt"></i>
						</span> Contents
						<span class="arrow"></span>
					</a>
					<ul class="sub">
						<li>
							<a class="" href="/contents/blog">Blog</a>
						</li>
					</ul>
				</li>
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN THEME CUSTOMIZER-->
		<div id="theme-change" class="hidden-phone">
			<i class="icon-cogs"></i>
			<span class="settings">
				<span class="text">Theme:</span>
				<span class="colors">
					<span class="color-default" data-style="default"></span>
					<span class="color-gray" data-style="gray"></span>
					<span class="color-purple" data-style="purple"></span>
					<span class="color-navy-blue" data-style="navy-blue"></span>
				</span>
			</span>
		</div>
		<!-- END THEME CUSTOMIZER-->
		<!-- BEGIN PAGE -->
		<div id="main-content">
			{{.LayoutContent}}
		</div>
		<!-- END PAGE -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div id="footer">
		&copy;2017-2020 版权所有 / 联系站长：
		<a class="email" href="mailto:iniutoolbox@aliyun.com">iniutoolbox@aliyun.com</a>		
		<br> 备案/许可证编号：
		<a href="http://www.miitbeian.gov.cn">沪ICP备17026684号</a>
		<div class="span pull-right">
			<span class="go-top">
				<i class="icon-arrow-up"></i>
			</span>
		</div>
	</div>
	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS -->
	<!-- Load javascripts at bottom, this will reduce page load time -->
	<script src="/static/js/reload.min.js"></script>
	<script src="/static/js/jquery-1.8.3.min.js"></script>
	<script src="/static/assets/jquery-slimscroll/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="/static/assets/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="/static/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
	<script src="/static/assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="/static/js/jquery.blockui.js"></script>
	<script src="/static/js/jquery.cookie.js"></script>
	<script src="/static/js/jquery.pulsate.min.js"></script>
	<!-- ie8 fixes -->
	<!--[if lt IE 9]>
	<script src="/static/js/excanvas.js"></script>
	<script src="/static/js/respond.js"></script>
	<![endif]-->
	
	<script src="/static/assets/jslider/bin/jquery.slider.min.js"></script>
	
	<script src="/static/assets/jquery-knob/js/jquery.knob.js"></script>
	<script src="/static/assets/flot/jquery.flot.js"></script>
	<script src="/static/assets/flot/jquery.flot.resize.js"></script>

	<script src="/static/assets/flot/jquery.flot.pie.js"></script>
	<script src="/static/assets/flot/jquery.flot.stack.js"></script>
	<script src="/static/assets/flot/jquery.flot.crosshair.js"></script>

	<script src="/static/js/jquery.peity.min.js"></script>
	<script type="text/javascript" src="/static/assets/uniform/jquery.uniform.min.js"></script>
	<script src="/static/js/scripts.js"></script>
	<script>
		jQuery(document).ready(function () {
			// initiate layout and plugins
			App.setResizingPage(false);
			App.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>