<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Medicine-Entry-Response</title>
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
     
     out.print("<h3>"+"Medicine : "+name+" of id : "+id+" manufactured by "+manufacturer+" is to be placed in box :"+boxName+"</h3>");
     
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
        out.println("<h3>Medicine successfully entered into the database.</h3>");
    } else {
        out.println("<h3>Failed to insert medicine into the database.</h3>");
    }

%>
<button onclick="action()">ok!</button>
</body>
</html>
