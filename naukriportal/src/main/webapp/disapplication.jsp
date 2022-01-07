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
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lavanya","root","root");
	Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("SELECT * FROM lavanya.postjob;");
    while(rs.next())
    {
    	System.out.println("Title="+rs.getString(2)+"Applied By="+rs.getString(7));
    }
}
catch(Exception e)
{
	System.out.println(e);
}

%>
<form  action="restoseeker.jsp" >
Seeker username<input type="text" name="t1"><br>
<input type="submit" value="Seeker">
</form>
</body>
</html>s