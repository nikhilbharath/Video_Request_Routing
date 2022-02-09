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

		<title>Admin page</title>

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
                <style type="text/css">

          #services{
         background: #00008B;
            }
           #work{
         background: #00008B;
            }
</style> 
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
				<ul class="nav navbar-nav" id="mainNav">
					<li class="active" id="firstLink">
						<a href="#home" class="scroll-link">Home</a>
					</li>
					<li>
						<a href="#services" class="scroll-link">Categories</a>
					</li>
					<li>
						<a href="#addcategories" class="scroll-link">Add categories</a>
					</li>
					<li>
						<a href="#work" class="scroll-link">Channel List</a>
					</li>
                                        <li>
                                                <a href="#">Logout</a>
                                         </li>
				</ul>
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
				<div class="hero-text animated fadeInDownBig" style="color:#FFFFFF">
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
		</section>
		<div>
			<h2 style="position: relative; left:200px; top:5px; color: #A0522D">
				 Categories 
			</h2>
		</div>
		<section id="services">

		<div class="container">
			<div class="row">
				<%
				Vector<String> vec = new Vector<String>();
				File fi = new File("");
				String temp = fi.getAbsolutePath() + "/webapps/SAVEP2p/Admin/";
				File root_Dir=new File(temp);
				if(!root_Dir.exists())
					root_Dir.mkdirs();
				File dirr = new File(temp);
				String[] filess = dirr.list();
				if (filess.length == 0) {
				} else {
					for (String aFile : filess) {
						System.out.println(aFile);
						vec.add(aFile);
					}
				}
				if(vec!=null)
				for (int i = 0; i < vec.size(); i++) {
					String nam = vec.get(i).toString();
					%>
				<!-- item -->
				<div class="col-md-3 text-center">
				 <i class="circle"><img src="images/ss.png" alt="" /> </i>
					
					<h3><%=nam%></h3>
				</div>
				<%
					}
				%>
				<!-- end: -->
			</div>
		</div>
		<!--/.container-->
		</section>

		<section id="addcategories">

		<div class="container">
			<div class="heading text-left">
				<!-- Heading -->
				<h2 style="color: #A0522D">
					Adding New Categories
				</h2>
				<br>
				<br />
				<form method="GET" action="CreateCategories">
					<font><strong>New
							Categorie:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong> </font>
					<input type="text" id="name" name="addchannelname" />
					<%--					<input type="submit" name="new" class="btn" value="AddCategory">--%>
					<button name="submit" type="submit" id="submit"
						onclick="alert('Categories created Successfully');">
						Add Category
					</button>
				</form>
			</div>
			<div class="heading text-center">
				<h2
					style="position: relative; left: -465px; top: -10px; color: #A0522D;">
					Video Upload
				</h2>
				<%
					String catlist = "";
				%>
				<form style="color: #00ff00" action="UploadVideo" method="Post"
					enctype="multipart/form-data">
					<table style="position: relative; left: 10px; top: -50px;">
						<tr>
							<td>
								<br>
								<br>
								<br>
								<br>
								<input type="file" name="file" size="50" />
							</td>
						</tr>
						<tr>
							<td>
								<br>
								<br>
								<strong><%="The Categories List -->"%></strong>

								<select name="view" style="font-family: Times New Roman;">
									<jsp:scriptlet>pageContext.setAttribute("windows", vec);</jsp:scriptlet>
									<c:forEach var="window" items="${pageScope.windows}"
										varStatus="loopCounter">
										<option>
											<c:out value=" ${window}" />
										</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<td>
								<br>
								<br>
								<button name="submit" type="submit"
									onclick="alert('Video Uploaded  Successfully');">
									Upload Video
								</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		</section>
		<section id="work">
		<div class="container">
			<div class="heading">
				<h2>
					Videos List
				</h2>
			</div>

			<section id="call" class="page-section colored">
			<div class="row">
				<%
					Vector<String> vec1 = new Vector<String>();
					Vector<String> channelslistvec = new Vector<String>();
					Vector<String> list = new Vector<String>();
					String chanlist = "";
					String channel = "";
					String chan = "";
					String alfile = "";
					File fil = new File("");
					String tempp = fil.getAbsolutePath() + "/webapps/SAVEP2p/Admin/";
					File dir = new File(tempp);
					String[] files = dir.list();
					if (files.length != 0) {
						for (String aFile : files) {
							//System.out.println(aFile);
							vec1.add(aFile);
						}
						for (int i = 0; i < vec1.size(); i++) {
							File fill = new File("");
							String temp1 = fill.getAbsolutePath()
									+ "/webapps/SAVEP2p/Admin/" + vec1.get(i);
							String catergoryname = vec1.get(i);
							File dir1 = new File(temp1);
							String[] files2 = dir1.list();
							if (files2.length != 0) {
								for (String aFile1 : files2) {
									channelslistvec.add(aFile1);
								}
								for (String allfile : channelslistvec) {
				%>
				<div class="col-md-3 text-center">
					<i class="circle"> <img src="images/download.png" alt="" /> </i>
					<h4><%=catergoryname + " -  " + allfile%></h4>
				</div>
				<%
					}
								channelslistvec.clear();
							}
						}
					}
				%>
			</div>
		</div>
		</section>
		
		<a href="#top" class="topHome">Back Home
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
