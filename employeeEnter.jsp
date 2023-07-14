<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert-Employee</title>
</head>
<script>
       function gooto(){
    	   window.location.href="AdminOptions.jsp";
       }
</script>
<body>
<h2>Welcome!😁</h2>
<h3>Employee Entry</h3>
<form action=employeeEnterResponse.jsp>
<table align="center">
<tr><td>Employee Name:</td><td><input type="text" name=employeeName></td></tr>
<tr><td>Employee Password:</td><td><input type="password" name=employeePassword></td></tr>
<tr>
<td>
<input type="submit">
</td>

</tr>
</table>
</form>
<button onclick="gooto()">OPTIONS</button>

<footer><%=new java.util.Date() %></footer>
</body> 
</html>
