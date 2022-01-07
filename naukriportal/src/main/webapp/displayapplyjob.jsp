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
	String uname=session.getAttribute("valueforadmin").toString();
    String jid=session.getAttribute("un").toString();
    System.out.println(uname+"for" +jid);
    String sql="  UPDATE `lavanya`.`postjob` SET `applyby` = 'com' WHERE (`jobid` = '8')";
   int i=0;
   i=stmt.executeUpdate(sql);
   if(i==0)
   {
	   System.out.println("fail");
   }
   else
   {
	   System.out.println("success");
   }

}
catch(Exception e){
	
}
%>
</body>
</html>