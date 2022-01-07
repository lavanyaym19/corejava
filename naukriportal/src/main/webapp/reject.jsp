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
String uname=session.getAttribute("select").toString();


	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lavanya","root","root");
		Statement stmt=con.createStatement();
        String sql=" UPDATE `lavanya`.`seeker` SET  `jobresponse` = 'reject' WHERE (`username` = '"+uname+"')";

		int i=0;
		i=stmt.executeUpdate(sql);
		if(i!=0)
		{
			response.sendRedirect("disapplication.jsp");
		}
	}
	
	catch(Exception e){
		System.out.println(e);
	}

%>
</body>
</html>