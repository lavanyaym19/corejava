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
String suname=request.getParameter("t1");

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lavanya","root","root");
	Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("SELECT * FROM seeker where username='"+suname+"'");
    session.setAttribute("select",suname);
    while(rs.next())
    {
    	out.println(rs.getString(5)+"    "+rs.getString(6)+"    "+rs.getString(7));
    }
}
catch(Exception e){
	System.out.println(e);
}

%>
<form action="select.jsp" method="post">
<input type="submit" value="select"></form>

<form action="reject.jsp" method="post">
<input type="submit" value="reject"></form>
</body>
</html>