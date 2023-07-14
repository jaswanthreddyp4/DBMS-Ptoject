<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin-options</title>
<script>
  function medicineEntry(){
	  window.location.href="medicineEntry.jsp";
  }
  function employeeEntry(){
	  window.location.href="employeeEnter.jsp";
  }
  function medicineUpdate(){
	  window.location.href="medicineUpdate.jsp";
  }
  function medicineView(){
	  window.location.href="medicineView.jsp";
  }
  function employeeView(){
	  window.location.href="employeeView.jsp";
  }
  function adminView(){
	  window.location.href="adminView.jsp";
  }
 


</script>
</head>
<body>
<h1>select options</h1>


<table align="center">
<tr>
  <td><button onclick="medicineEntry()">Medicine-Entry</button></td>
  <td><button onclick="employeeEntry()">Employee-Entry</button></td>
</tr>
<tr>
  <td><button onclick="medicineUpdate()">Medicine-Update</button></td>
   <td><button onclick="medicineView()">Medicine-Data-view</button></td>
</tr>
<tr>
  <td><button onclick="employeeView()">Employee-Data-View</button></td>
   <td><button onclick="adminView()">Admin-Data-view</button></td>
</tr>

</table>
</body>
</html>
