<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="logic.VideoReq"%>
<%@page import="java.io.PrintWriter"%>

<%@page import="java.io.File"%>
<%@page import="java.net.InetAddress"%>
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

		<title>My JSP 'index.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<script type="text/javascript">
var path, path1, r;
function video(i) {
	path = document.getElementById('myVideo' + i).src;
	path1 = document.getElementById('source_video').src;
	document.getElementById('source_video').src = path;
	document.getElementById('myVideo' + i).src = path1;
}
</script>
	</head>
	<style type="text/css">
#video_box {
	float: left;
	width: 440px;
	min-height: 370px;
}

#overlay0 {
	position: absolute;
	top: 350px;
	right: 800px;
	color: #FFF;
	text-align: center;
	font-size: 20px; <%--
	background-color: rgba(221, 221, 221, 0.3); --%>
	width: 140px;
	padding: 30px 0;
	padding-right: 100px;
	z-index: 2147483647;
}

#overlay1 {
	position: absolute;
	top: 350px;
	right: 950px;
	color: #FFF;
	text-align: center;
	font-size: 20px; <%--
	background-color: rgba(221, 221, 221, 0.3); --%>
	width: 140px;
	padding: 30px 0;
	padding-right: 100px;
	z-index: 2147483647;
}

#overlay2 {
	position: absolute;
	top: 350px;
	right: 770px;
	color: #FFF;
	text-align: center;
	font-size: 20px; <%--
	background-color: rgba(221, 221, 221, 0.3); --%>
	width: 140px;
	padding: 30px 0;
	padding-right: 100px;
	z-index: 2147483647;
}

#overlay3 {
	position: absolute;
	top: 350px;
	right: 630px;
	color: #FFF;
	text-align: center;
	font-size: 20px; <%--
	background-color: rgba(221, 221, 221, 0.3); --%>
	width: 140px;
	padding: 30px 0;
	padding-right: 100px;
	z-index: 2147483647;
}

#overlay4 {
	position: absolute;
	top: 350px;
	right: 500px;
	color: #FFF;
	text-align: center;
	font-size: 20px; <%--
	background-color: rgba(221, 221, 221, 0.3); --%>
	width: 140px;
	padding: 30px 0;
	padding-right: 100px;
	z-index: 2147483647;
}
</style>
	<body>

		<%
			String allChannelsList= request.getParameter("channels");
		    List channellList=new ArrayList<String>(Arrays.asList(allChannelsList.split("\\@")));
			System.out.println("path--------->" + channellList);
		%>
		<div id="video_box">
			<video id="source_video" class="video-active" width="900"
				height="500" src=<%=channellList.get(0)%> controls autoplay loop
				poster>
			</video>
			<%
				for (int i = 1; i < channellList.size(); i++) {
				System.out.println("channelsss------->" +channellList.get(i).toString());
			%>	
           <div id="overlay<%=i%>">
				<video id="myVideo<%=i%>" class="video-active"
					onclick="video('<%=i%>')" width="200" height="100"
					src="<%=channellList.get(i)%>" controls muted loop poster>
				</video>
			</div>
			<%
			} 
		   %>
		</div>
	</body>
</html>
