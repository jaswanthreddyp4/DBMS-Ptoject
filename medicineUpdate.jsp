<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Medicine Update</title>
<script>
function gooto(){
	window.location.href="AdminOptions.jsp";
}
</script>
</head>
<body>
<h1>Medicine Update</h1>

<form action="medicineUpdateResponse.jsp">
<table align = "center">
<tr>
<td>Medicine Name : </td>
<td><input type="text" name=medicineName></td>
</tr>
<tr>
<td>Medicine Id : </td>
<td><input type="text" name=medicineId></td>
</tr>
<tr>
<td>Quantity Set To : </td>
<td><input type="text" name=quantity></td>
</tr>
<tr><td><input type="submit"></td></tr>
</table>
</form>

<%
Connection myConnection=null;
Statement myStatement=null;
ResultSet myResult=null;

String dburl="jdbc:mysql://localhost:3306/demo?useSSL=false";
String username="student";
String password="student";

myConnection=DriverManager.getConnection(dburl,username,password);
myStatement=myConnection.createStatement();
myResult=myStatement.executeQuery("select medicine_name,medicine_id,quantity from medicine WHERE CAST(quantity AS SIGNED) < 0");

while(myResult.next()){
	out.print("<h2>"+myResult.getString("medicine_name")+" , "+myResult.getString("medicine_id")+" , "+myResult.getString("quantity")+"</h2>");
}
%>
<button onclick="gooto()">Admin Options</button>
</body>
</html>
