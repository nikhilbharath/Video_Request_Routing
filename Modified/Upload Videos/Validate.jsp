<%@page language="java" import="java.sql.*,javax.sql.*"%>
<html>
<body>
<%
String usernamee=request.getParameter("uname");
String passwordd=request.getParameter("password");

try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Admin","root","mysql");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from login where username='"+usernamee+"' and password = '"+passwordd+"' ");
int count=0;
while(rs.next()){
count++;
}
if(count>0)
{
response.sendRedirect("Admin.jsp");
}
else
{%>
<form action="index.jsp" method="post">
<h1>You've Entered Invalid Details :(<h1>
<input type="submit" value="Go back" class="button" />
</form>
<%
}
}
catch(SQLException sql)
{
sql.printStackTrace();
}
%>
</body>
</html>