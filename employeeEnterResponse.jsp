<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee-Enter_response</title>
<style>

   *{
            margin: 0px;
            text-align: center;
        }
        body{
            background-image: url('https://images.unsplash.com/photo-1587621144431-845c71bc9fe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=723&q=80');
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
        }
        h2{
            position: relative;
            top: 40vh;
        }
        button{
            background-color:black;
            position: relative;
            top: 45vh;
            border:  0.13vw solid black;
            border-radius:5px;
            cursor: pointer;
            color: white;
            height: 4.5vh;
            width:5.5vw;
        }
        button:hover{
            color: white;
            background-color:gray;
        }
        button:active{
            color: white;
            background-color: rgb(187, 174, 174);
        }

</style>
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
   
   out.print("<h2>"+"Employee "+name+"'s login credentials has sucessfully entered into databse"+"</h2>");

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
	   out.print("<h2>Employee's data successfully entered into the database👍.</h2>");
	  }
   else{
	   out.println("<h2>Failed to insert employee's data into the database👎.</h2>");
   }
%>
<button onclick="gooto()">BACK</button>
</body>
</html>
