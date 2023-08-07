<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Medicine-Entry-Response</title>
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
       function action(){
    	   window.location.href="medicineEntry.jsp";
       }
</script>
</head>
<body>
<%
     String name=request.getParameter("medicineName");
     String id=request.getParameter("medicineId");
     String manufacturer=request.getParameter("manufacturer");
     String mfgDate=request.getParameter("mfgDate");
     String expDate=request.getParameter("expDate");
     String boxName=request.getParameter("boxName");
     String quantity=request.getParameter("quantity");
     
     out.print("<h2>"+"Medicine : "+name+" of id : "+id+" manufactured by "+manufacturer+" is to be placed in box :"+boxName+"</h2>");
     out.println("<br><br>");
     Connection myConnection=null;
     PreparedStatement myStatement=null;
     ResultSet myResult=null;
     
     String dburl="jdbc:mysql://localhost:3306/demo?useSSL=false";
     String username="student";
     String password="student";
     
     myConnection=DriverManager.getConnection(dburl,username,password);
    
     
    myStatement=myConnection.prepareStatement("insert into medicine"+"(medicine_id,medicine_name,manufacturer,mfg_date,exp_date,box_name,quantity)"+"values"+"(?,?,?,?,?,?,?)");
    myStatement.setString(1,id);
    myStatement.setString(2,name);
    myStatement.setString(3,manufacturer);
    myStatement.setString(4,mfgDate);
    myStatement.setString(5,expDate);
    myStatement.setString(6,boxName);
    myStatement.setString(7,quantity);
    
    int rowsAffected = myStatement.executeUpdate();

    if (rowsAffected > 0) {
        out.println("<h2>Medicine successfully entered into the database.</h2>");
    } else {
        out.println("<h2>Failed to insert medicine into the database.</h2>");
    }

%>
<button onclick="action()">ok!</button>
</body>
</html>
