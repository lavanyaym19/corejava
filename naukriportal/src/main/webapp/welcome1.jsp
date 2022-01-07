<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>post job here</h2>
</center>

</center>
<form method="get" action="jobseeker.jsp">
job id<input type="text" name="t1"><br>
job title<input type="text" name="t2"><br>
User description<input type="text" name="t3"><br>
salary<input type="text" name="t4"><br>
exp required<input type="text" name="t5"><br>
post job<input type="text" name="t6"><br>

<input type="submit">   
</form>
<form method="post"  action="disapplication.jsp" >

<input type="submit" value="Applied By">
</form>

</body>
</html>