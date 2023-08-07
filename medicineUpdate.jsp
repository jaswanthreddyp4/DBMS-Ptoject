
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <title>Medicine Update</title>
    <script>
        function gooto(){
	        window.location.href="AdminOptions.jsp";
        }
    </script>
    <style>
        *{
            margin:0%;
        }
        body{
            background-image: url('https://images.unsplash.com/photo-1587621144431-845c71bc9fe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=723&q=80');
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
        }
        h2{
            text-align: center;
        }
        h1{
            text-align: center;
        }
        header h1{
            margin:0%;
        }
        button{
            background-color:black;
            position: absolute;
            left: 2.12vw;
            border:  0.13vw solid black;
            border-radius:5px;
            cursor: pointer;
            text-decoration: underline;
            color: white;
            top: 70vh;
            height: 4.5vh;
            
        }
        button:hover{
            color: white;
            background-color:gray;
        }
        button:active{
            color: white;
            background-color: rgb(187, 174, 174);
        }
        .content {
            align-items: center;
            /* border: 0.32vw solid gray; */
            border-radius: 0.65vw;
            position: absolute;
            top: 20vh;
            left: 1vw;
            right: 32.55vw;
            justify-content: center;
            padding: 1%;
            overflow: auto;
            width: 30%;
        }
        .sub{
            left: 0.65vw;
            right: 0.65vw;
            width:  5vw;
            height: 4.5vh;
            border:  0.13vw solid black;
            border-radius:5px;
            color: white;
            background-color: black;
        }
        .sub:hover{
            color: white;
            background-color:gray;
        }
        .sub:active{
            color: white;
            background-color: rgb(187, 174, 174);
        }
        .in{
            left: 0.65vw;
            right: 0.65vw;
            width:  28.60vw;
            height: 3vh;
            border: 0.13vw solid black;
            border-radius:5px;
            
        }
        .box{
            position: relative;
            top: 5.8vh;
            left: 50vw;
            text-align: center;
            /* border: 2px solid black; */
            width: 30vw;
        }
        .box table{
            border: 1px solid black;
            border-collapse: collapse;
            text-align: center;
        }
        .box td{
            border: 1px solid black;
            border-collapse: collapse;
            text-align: center;
            font-size: 3vh;
            padding: 3vh;
        }
        .box th{
            border: 1px solid black;
            border-collapse: collapse;
            text-align: center;
            padding: 2vh;
            color: white;
            background-color: black;
            font-size: 2vh;
        }
        .box tr:nth-child(even){
            background-color: #686868;
            color: #001242;
        }
        .box tr:nth-child(odd){
            background-color: #c8c6c6;
            color: #001242;
        }
        .box tr:hover{
            background-color: #C6CCB2;
            color: #0F0326;
            padding: 2vh;
            cursor: pointer;
        }
        .medtab{
            margin-left: auto;
            margin-right: auto;
        }
    </style>
    </head>
    <body>
        <header>
            <h1>Medi-Vault</h1>
        </header>
       
        <br>
       
        <div class="content">
            <h1>Medicine Update</h1>
            <br>
            <form action="medicineUpdateResponse.jsp">
            <table align = "center">
                <tr><td>Medicine Name : </td></tr>
                <tr><td><input type="text" name=medicineName class="in" placeholder="Medicine Name"></td></tr>
                <tr><td><br></td></tr>
                <tr><td>Medicine Id : </td></tr>
                <tr><td><input type="text" name=medicineId class="in" placeholder="Med_ID"></td></tr>
                <tr><td><br></td></tr>
                <tr><td>Quantity Set To : </td></tr>
                <tr><td><input type="text" name=quantity class="in" placeholder="Quantity"></td></tr>
                <tr><td><br></td></tr>
                <tr><td align="center"><input type="submit" class="sub"></td></tr>
            </table>
            </form>
        </div><br><br>
        
        <div class="box">
        <h2>Medicine Stock Below Zero:</h2>
        <table class="medtab">
            <tr>
                <th>Medicine Name</th>
                <th>Medicine ID</th>
                <th>Quantity</th>
            </tr>
            <%
            Connection myConnection=null;
            Statement myStatement=null;
            ResultSet myResult=null;

            String dburl="jdbc:mysql://localhost:3306/demo?useSSL=false";
            String username="student";
            String password="student";

            myConnection=DriverManager.getConnection(dburl,username,password);
            myStatement=myConnection.createStatement();
            myResult=myStatement.executeQuery("select medicine_name, medicine_id, quantity from medicine WHERE CAST(quantity AS SIGNED) < 0");

            while(myResult.next()){
                %>
                <tr>
                    <td> <%= myResult.getString("medicine_name")%></td>
                    <td> <%=myResult.getString("medicine_id") %> </td>
                    <td><%= myResult.getString("quantity") %> </td>
                </tr>
                <%
            }
           %>
        </table>
    </div>

        <button onclick="gooto()">HOME</button>
</body>
</html>
