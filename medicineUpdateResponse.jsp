<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Medicine Update Response</title>
</head>
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
        }</style>
<script>
function gooto(){
	window.location.href="medicineUpdate.jsp";
}
</script>
<body>
<%
     String name=request.getParameter("medicineName");
     String id=request.getParameter("medicineId");
     String qty=request.getParameter("quantity");

     Connection myConnection=null;
     PreparedStatement myStatement,updateStatement=null;
     ResultSet myResult=null;

     String dburl="jdbc:mysql://localhost:3306/demo?useSSL=false";
     String username="student";
     String pasword="student";

     myConnection=DriverManager.getConnection(dburl,username,pasword);
     myStatement=myConnection.prepareStatement("select * from medicine order by medicine_name");
     myResult=myStatement.executeQuery();
     
     
     updateStatement=myConnection.prepareStatement("update medicine set quantity=? where medicine_name=? and medicine_id=?");
     updateStatement.setString(1,qty);
     updateStatement.setString(2,name);
     updateStatement.setString(3,id);
             int noOfRowsUpdated=updateStatement.executeUpdate();
    		 if(noOfRowsUpdated>0){
    			 out.println("<h2>medicine updated!</h2>");
    		 }
%>
<button onclick="gooto()">BACK</button>

</body>
</html>
