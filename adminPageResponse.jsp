  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin-response-page</title>
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
    	   String name=request.getParameter("adminName");
    	   String id=request.getParameter("adminPassword");
    	   
    	   myStatement=myConnection.prepareStatement("select admin_name,admin_id from admin where admin_name=? and admin_id=? ");
    	   myStatement.setString(1,name);
    	   myStatement.setString(2,id);
    	   myResult=myStatement.executeQuery();
    	   if(myResult.next()){
    		   response.sendRedirect("AdminOptions.jsp");
    	   }
    	   else{
    		   response.sendRedirect("AdminPage.jsp");
    	   }
    	   
    	   
       }catch(SQLException e){
    	  out.println(e.getMessage());
       }
%>

</body>
</html>
