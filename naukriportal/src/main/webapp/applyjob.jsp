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
String x=request.getParameter("t2");
session.setAttribute("valueforadmin",x);
session.setAttribute("un",un);

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lavanya","root","root");
	
	Statement stmt=con.createStatement();
	int i=0;
	
	String uname=session.getAttribute("valueforadmin").toString();

	String jid=session.getAttribute("un").toString();
	int ji=Integer.parseInt(jid);
	System.out.println(uname+"   "+jid);
	
	String sql="UPDATE `lavanya`.`postjob` SET `applyby` = '"+uname+"' WHERE (`jobid` = '"+jid+"')";



	i=stmt.executeUpdate(sql);
	
	if(i==0)
	{
		response.sendRedirect("applyjob.html");
	}
	else{
		response.sendRedirect("displayapplyjob.jsp");
	}
}
catch(Exception e){
System.out.println(e);	
}
	%>


</body>
</html>