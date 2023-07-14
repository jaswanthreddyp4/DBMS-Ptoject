<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Data View</title>
</head>
<script>
function takemeBack(){
	window.location.href="AdminOptions.jsp"
}
</script>
<body>
<%
Connection myConnection=null;
Statement myStatement=null;
ResultSet myResult=null;

String dburl="jdbc:mysql://localhost:3306/demo?useSSL=false";
String username="student";
String password="student";

myConnection=DriverManager.getConnection(dburl,username,password);
myStatement=myConnection.createStatement();
myResult=myStatement.executeQuery("select * from employee");

while(myResult.next()){
	out.print("<h2>"+myResult.getString("employee_name")+" , "+myResult.getString("employee_id")+"</h2>");
}
%>
<button onclick="takemeBack()">OK!</button>


</body>
</html>
