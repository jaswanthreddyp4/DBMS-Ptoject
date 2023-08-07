<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        th{
            text-align: center;
            padding: 3vh;
            color: white;
            background-color: black;
            font-size: 3vh;
        }
        td{
            font-size: 3vh;
            text-align: center;
            padding: 3vh;
            border-bottom: 0.25vh solid black;
        }
        tr:nth-child(even){
            background-color: #686868;
            color: #001242;
        }
        tr:hover{
            background-color: #C6CCB2;
            color: #0F0326;
            padding: 0.5%;
            cursor: pointer;
        }
        .tri{
            margin-left: auto;
            margin-right: auto;
        }
        button{
            background: none;
            border: none;
            font-size: 3vh;
           background-color:black;
           color:white;
           border-radius:5px;
        }
        button:hover{
            background-color: gray;
            color: white;
            cursor: pointer;
           
        }
        h1{
            text-align: center;
        }
    </style>
<meta charset="UTF-8">
<title>Medicine Data</title>
</head>
<script>
function takeBack(){
	window.location.href="AdminOptions.jsp";
}
</script>
<body>
<h1>Medicine-Data</h1>
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
	out.println("<table class=tri>");
	out.println("<tr><th>Medicine Name</th><th>Medicine ID</th><th>Manufacturer</th><th>Mfg Date</th><th>Exp Date</th><th>Box Name</th><th>Quantity</th></tr>");

	while (myResult.next()) {
	    String medicineName = myResult.getString("medicine_name");
	    String medicineId = myResult.getString("medicine_id");
	    String manufacturer=myResult.getString("manufacturer");
	    String mfgDate = myResult.getString("mfg_date");
	    String expDate = myResult.getString("exp_date");
	    String boxName = myResult.getString("box_name");
	    String quantity = myResult.getString("quantity");
	    out.println("<tr><td>" + medicineName + "</td><td>" + medicineId + "</td>"+ "<td>" + manufacturer + "</td>"+ "<td>" + mfgDate+ "</td>"+ "<td>" + expDate+ "</td>"+ "<td>" +  boxName+ "</td>"+ "<td>" +quantity + "</td></tr>");
	}
}
%>
<button onclick="takeBack()">BACK</button>

</body>
</html>
