<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert-Employee</title>
    <style>
         body {
         background-image: url('https://images.unsplash.com/photo-1587621182276-4f624ecdeb09?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80');
        background-repeat: no-repeat;
        background-size: cover;
        z-index: -1;
        } 
    
        *{
            margin:0%;
        }
        h2{
            text-align: center;
        }
        h1{
            text-align: center;
        }
        header h1{
            padding: 2.35%;
            margin:0%;
            font-size: 4.0vw;
        }
        button{
            top:80vh;
            border-radius:5px;
            position: absolute;
            left: 4.30vw;
            border:none;
            cursor: pointer;
            text-decoration: underline;
            background-color:black;
            color:white;
            border:0.13vw solid black;
            height:25px;
            width:80px;
        }
        button:hover{
            color: white;
            background-color:gray;
        }
        button:active{
        	color:white;
        	background-color:rgb(187,174,174);
        }
        .content {
          
            padding-top:100px; 
            padding-left:100px;
            top: 26.80vh;
            left: 32.55vw;
            right: 32.55vw;
            justify-content: center;
            padding: 2.35%;
            margin: 1.175%;
            overflow: auto;
            width: 30%;
        }
        .sub{
            left: 0.65vw;
            right: 0.65vw;
            width:  8vw;
            height: 4.02vh;
            border:  0.13vw solid black;
            border-radius:5px;
            color:white;
            background-color:black;
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
            width:  28.97vw;
            height: 4.02vh;
            border: 0.13vw solid black;
            border-radius:5px;
        }
        footer{
        position:relative;
           padding-left:600px;
            display: block;
            clear: both;
            top: 7.32vh;
        }
    </style>
</head>
    <script>
           function gooto(){
    	       window.location.href="AdminOptions.jsp";
        }
    </script>
    <body>
        <header>
            <h1 class="head">Medi-Vault</h1>
        </header>
       
        <br>
        <button onclick="gooto()">HOME</button>
        <br>
        
        <div class="content">
            <h1>Employee Entry</h1>
            <form action=employeeEnterResponse.jsp>
            <table align="center">
                <tr><td><br></td></tr>
                <tr><td style="font-size: 20px;">Employee Name:</td></tr>
                <tr><td><input type="text" name=employeeName placeholder="New Employee Name" class="in"></td></tr>
                <tr><td><br></td></tr>
                <tr><td style="font-size: 20px;">Employee Password:</td></tr>
                <tr><td><input type="password" name=employeePassword placeholder="New Employee Password" class="in"></td></tr>
                <tr><td><br></td></tr>
                <tr>
                    <td align="center">
                        <input type="submit" class="sub">
                    </td>
                </tr>
            </table>
            </form>
        </div>
 </body> 
</html>
