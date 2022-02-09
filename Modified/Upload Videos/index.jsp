<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.io.File"%>
<%@page import="logic.ReadProperty"%>
<%@page import="java.net.InetAddress"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>Index page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<meta charset="utf-8">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, maximum-scale=1">
		<!--[if lt IE 9]> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->

		<meta name="description" content="">
		<meta name="author" content="WebThemez">

		<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
		<!--[if lte IE 8]>
		<script type="text/javascript" src="http://explorercanvas.googlecode.com/svn/trunk/excanvas.js"></script>
	<![endif]-->
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/isotope.css"
			media="screen" />
		<link rel="stylesheet" href="js/fancybox/jquery.fancybox.css"
			type="text/css" media="screen" />
		<link href="css/animate.css" rel="stylesheet" media="screen">
		<!-- Owl Carousel Assets -->
		<link href="js/owl-carousel/owl.carousel.css" rel="stylesheet">
		<link rel="stylesheet" href="css/styles.css" />
		<!-- Font Awesome -->
		<link href="font/css/font-awesome.min.css" rel="stylesheet">
		
	</head>

	<body>
		<header class="header">
		<div class="container">
			<nav class="navbar navbar-inverse" role="navigation">
			<div class="navbar-header">
				<button type="button" id="nav-toggle" class="navbar-toggle"
					data-toggle="collapse" data-target="#main-nav">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				
			</div>
			<!--/.navbar-header-->
			<div id="main-nav" class="collapse navbar-collapse">
				
			</div>
			<!--/.navbar-collapse-->
			</nav>
		</div>
		<!--/.container-->
		</header>
		<!--/.header-->
		<div id="#top"></div>
		<section id="home">
		<div class="banner-container">
			<img src="images/nik.jpg" alt="banner" />
			<div class="container banner-content">
				<div class="hero-text animated fadeInDownBig">
					<h1 class="responsive-headline" style="font-size: 40px;">
						<p style="font-size:40px">
                                                <b>EFFICIENT ROUTING OF VIDEO REQUEST
						<br />
						USING BUILT-IN CONTENT CACHE</b></p>
					</h1>
				</div>
			</div>
		</div>
		<div class="container hero-text2">
		</div>
<form action="Validate.jsp" method="post">

				<br>
				<table align="center"
					style="position: relative; left: 570px; top: 50px;">
					<h1>
						<center>
							<span style="color: green; font-size: 30px;">ADMIN LOGIN</span>
						</center>
					</h1>
					<tr>
						<td></td>
						<td>
							USERNAME:
						</td>
						<td>
							<input type="text" name="uname" />
						</td>
					</tr>
					<tr>
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>

					<tr>
						<td></td>
						<td>
							PASSWORD:
						</td>
						<td>
							<input type="password" name="password" />
						</td>
					</tr>
					<tr>
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<input type="submit" value="Login" class="button" />
						
						
						
						
					</tr>
					<br><br><br>
				</table>
			</form>
		</section>
				<!-- / .row -->
		</section>
		<a href="#top" class="topHome"><i class="fa fa-chevron-up fa-2x"></i>
		</a>
		<!--[if lte IE 8]><script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script><![endif]-->
		<script src="js/modernizr-latest.js">
</script>
		<script src="js/jquery-1.8.2.min.js" type="text/javascript">
</script>
		<script src="js/bootstrap.min.js" type="text/javascript">
</script>
		<script src="js/jquery.isotope.min.js" type="text/javascript">
</script>
		<script src="js/fancybox/jquery.fancybox.pack.js"
			type="text/javascript">
</script>
		<script src="js/jquery.nav.js" type="text/javascript">
</script>
		<script src="js/jquery.fittext.js">
</script>
		<script src="js/waypoints.js">
</script>
		<script src="js/custom.js" type="text/javascript">
</script>
		<script src="js/owl-carousel/owl.carousel.js">
</script>
	</body>
</html>
