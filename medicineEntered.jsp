<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Medicine Entered</title>
<script>
     function action(){
    	 window.location.href="employeeEntry.jsp";
     }


</script>
</head>
<body>
<%
Connection myConnection=null;
PreparedStatement myStatement,updateStatement=null;
ResultSet myResult=null;

String dburl="jdbc:mysql://localhost:3306/demo?useSSL=false";
String username="student";
String password="student";

try{
	myConnection=DriverManager.getConnection(dburl,username,password);
	String name=request.getParameter("medicine_name");
	String id=request.getParameter("medicine_id");
	String quantityAsked=request.getParameter("medicine_quantity");
	int qtyAsked=Integer.parseInt(quantityAsked);
	
	myStatement=myConnection.prepareStatement("select quantity,box_name,mfg_date,exp_date from medicine where medicine_name=? and medicine_id=?");
	myStatement.setString(1,name);
	myStatement.setString(2,id);
	myResult=myStatement.executeQuery();
	
	
	
	 if (myResult.next()) {
	        String boxName = myResult.getString("box_name");
	        String expDate = myResult.getString("exp_date");
	        String quantityLeft = myResult.getString("quantity");
	        int qtyLeft = Integer.parseInt(quantityLeft);
	        updateStatement=myConnection.prepareStatement("update medicine set quantity=? where medicine_name=? and medicine_id=?");
	        updateStatement.setString(1,String.valueOf(qtyLeft-qtyAsked));
	        updateStatement.setString(2,name);
	        updateStatement.setString(3,id);
	        updateStatement.executeUpdate();
	        

	        out.print("<h2>"+"medicine : "+name+" with ID : "+id+" is present in box : "+boxName+" expiring on : "+expDate+"</h2>");
	        out.print("<h2>"+"Quantity of " + name + " left: " + (qtyLeft - qtyAsked)+"</h2>");
	    } else {
	        out.println("<h2>No medicine found.</h2>");
	    }
	}catch(SQLException e){
	System.out.println(e.getMessage());
}


%>
<br/>
<button onclick=action()>OK!</button>
</body>
</html>
