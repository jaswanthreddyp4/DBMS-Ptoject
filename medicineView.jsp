<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Medicine Data</title>
</head>
<script>
function takeBack(){
	window.location.href="AdminOptions.jsp";
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
myResult=myStatement.executeQuery("select * from medicine");

while(myResult.next()){
	out.print("<h2>"+myResult.getString("medicine_name")+" , "+myResult.getString("medicine_id")+" , "+myResult.getString("manufacturer")+" , "+myResult.getString("mfg_date")+" , "+myResult.getString("exp_date")+" , "+myResult.getString("box_name")+" , "+myResult.getString("quantity")+"</h2>");
}
%>
<button onclick="takeBack()">OK!</button>

</body>
</html>
