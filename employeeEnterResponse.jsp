<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee-Enter_response</title>
<script>
        function gooto(){
        	window.location.href="employeeEnter.jsp";
        }

</script>
</head>
<body>
<%

   String name=request.getParameter("employeeName");
   String password=request.getParameter("employeePassword");
   
   out.print("<h3>"+"Employee "+name+"'s login credentials has sucessfully entered into databse"+"</h3>");

   Connection myConnection=null;
   PreparedStatement myStatement=null;
   ResultSet myResult=null;
   
   String dburl="jdbc:mysql://localhost:3306/demo?useSSL=false";
   String username="student";
   String pasword="student";
   
   myConnection=DriverManager.getConnection(dburl,username,pasword);
   
   myStatement=myConnection.prepareStatement("insert into employee"+"(employee_id,employee_name)"+"values"+"(?,?)");
   myStatement.setString(1,password);
   myStatement.setString(2,name);
   int noOfRowsEffected=myStatement.executeUpdate();
   
   if(noOfRowsEffected>0){
	   out.print("<h3>Employee's data successfully entered into the database👍.</h3>");
	  }
   else{
	   out.println("<h3>Failed to insert employee's data into the database👎.</h3>");
   }
   

%>
<button onclick="gooto()">OK!</button>
</body>
</html>
