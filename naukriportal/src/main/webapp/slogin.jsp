<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.sql.*" %>
<body>
<% 
String un=request.getParameter("t1");
String pass=request.getParameter("t2");
session.setAttribute("sname",un);


try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lavanya","root","root");
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("SELECT * FROM lavanya.seeker;");
	String lavanya="";
	while(rs.next()){
		if(un.equals(rs.getString(1)) && pass.equals(rs.getString(4)))
		{
			lavanya="yes";
			break;
		}
		}
	if(lavanya.equals("yes")){
		response.sendRedirect("showjobs.jsp");
	}
	else{
		response.sendRedirect("login.html");
	}
}
catch(Exception e){
System.out.println(e);	
}
	%>
</body>
</html>