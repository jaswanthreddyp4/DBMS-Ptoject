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
<button onclick="gooto()">OK!</button>

</body>
</html>
