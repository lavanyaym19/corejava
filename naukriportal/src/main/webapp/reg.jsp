<%@page import=" java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String un=request.getParameter("t1");
String pass=request.getParameter("t2");
String name=request.getParameter("t");
System.out.println(un+""+pass);
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/web","root","root");
	Statement stmt=con.createStatement();
	int i=0;
	String que="INSERT INTO `web`.`userdetails` (`username`, `password`, `name`) VALUES ('"+un+"', '"+pass+"', '"+name+"')";
	i=stmt.executeUpdate(que);
	//response.sendRedirect("login.html");


if(i==0)
{
	response.sendRedirect("register.html");
}
else
 {
	response.sendRedirect("login.html");
 }
}

catch(Exception e)
{
	System.out.println(e);
	//response.sendRedirect("register.html");

	
}


%>

</body>
</html>