<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee-Page-Response</title>
</head>
<body>
<%
  Connection myConnection=null;
  PreparedStatement myStatement=null;
  ResultSet myResult=null;
  
  String dburl="jdbc:mysql://localhost:3306/demo?useSSL=false";
  String username="student";
  String password="student";
  
  try{
	  myConnection=DriverManager.getConnection(dburl,username,password);
	  String name=request.getParameter("employeeName");
	  String pwd=request.getParameter("employeePassword");
	  
	  myStatement=myConnection.prepareStatement("select employee_name from employee where employee_name=? and employee_id=?");
	  myStatement.setString(1,name);
	  myStatement.setString(2,pwd);
	  myResult=myStatement.executeQuery();
	  
	  if(myResult.next()){
		  response.sendRedirect("employeeEntry.jsp");
	  }
	  else{
		  response.sendRedirect("EmployePage.jsp");
	  }
	}catch(SQLException e){
	  out.println(e.getMessage());
  }

%>

</body>
</html>
