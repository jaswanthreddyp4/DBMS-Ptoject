<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Medicine-Entry </title>
<script>
        function dothis(){
        	window.location.href="AdminOptions.jsp";
        }

</script>
</head>
<body>
<h2>WELCOME! 😁</h2>
<h1>MEDICINE ENTRY</h1>
<form action="medicineEntryResponse.jsp">
<table align="center">
<tr>
<td>Medicine ID : </td>
<td><input type="text" name=medicineId></td>
</tr><tr>
<td>Medicine Name : </td>
<td><input type="text" name=medicineName></td>
</tr>
<tr>
<td>Manufacturer : </td>
<td><input type="text" name=manufacturer></td>
</tr>
<tr>
<td>Mfg Date : </td>
<td><input type="text" name=mfgDate></td>
</tr>
<tr>
<td>Exp Date : </td>
<td><input type="text" name=expDate></td>
</tr>
<tr>
<td>Box Name : </td>
<td><input type="text" name=boxName></td>
</tr>
<tr>
<td>Quantity : </td>
<td><input type="text" name=quantity></td>
</tr>
<tr><td><input type="submit" name=Submit></td>

</tr>
</table>
</form>
<button onclick="dothis()">Admin-Options</button>
<footer>
<p><%= new java.util.Date() %></p>
</footer>
</body>
</html>
