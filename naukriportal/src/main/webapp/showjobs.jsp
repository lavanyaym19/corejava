<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.sql.*" %>>
<body>
<!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
<center>
<h2>Jobs List</h2>
</center>
<%

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lavanya","root","root");
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("SELECT * FROM lavanya.postjob;");
	%>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
	<table class="table-primary">
  <thead>
    <tr>
      <th scope="col">Job id</th>
      <th scope="col">Job title</th>
      <th scope="col">description</th>
      <th scope="col">salary</th>
      <th scope="col">exp reg</th>
      <th scope="col">post available</th>
    </tr>
     </thead>
  <tbody>
	<table>
	<tr><td>Job id</td>    <td>Job title</td>    <td>Job des</td>    <td>Job salary</td>    <td>Job experience</td>   <td>post available</td>
	<%
   while(rs.next())
   {
	  %>
	  
	   <tr>
	    
      <th scope="row">1<% out.println(rs.getInt(1)); %></th>
       <td> <% out.println(rs.getString(2)); %>
	   <td> <% out.println(rs.getString(3)); %>
	   <td> <% out.println(rs.getString(4)); %>
	   <td> <% out.println(rs.getString(5)); %></td>
       <td> <% out.println(rs.getString(6)); %></td>
        <td><form method="post" action="applyjob.jsp"><input type="button" value="apply"></form>
       
	   <%
   }
}
catch(Exception e)
{
System.out.println(e);
}
%>
</body>
</html>