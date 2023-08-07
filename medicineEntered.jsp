<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Medicine Entered</title>
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
	        out.println("<br><br>");
	        out.print("<h2>"+"Quantity of " + name + " left: " + (qtyLeft - qtyAsked)+"</h2>");
	    } else {
	        out.println("<h2>No medicine found.</h2>");
	    }
	}catch(SQLException e){
	System.out.println(e.getMessage());
}
%>
<br/>
<button onclick=action()>BACK</button>
</body>
</html>
