<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <title>EmployeePage</title>
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
        .content h1{
            padding-left:2px;
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
            top: 65vh;
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
            width: 50%;
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
        .rese{
        position:relative;
        left:25vh;
            height: 4.5vh;
            width:5vw;
            border:  0.13vw solid black;
            border-radius:5px;
            color: white;
            background-color: black;
        }
        .rese:active{
            color: white;
            background-color: rgb(187, 174, 174);
        }
        .rese:hover{
            color: white;
            background-color:gray;
        }
        .content .rese{
            justify-content: center;
        }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <header>
            <h1 class="head">Medi-Vault</h1>
        </header>
    
        <div class="content">
        <form action=employeePageResponse.jsp>
            
            <table>
            <tr><td><h1>EMPLOYEE-LOGIN</h1></td></tr>
                <tr><td><br></td></tr>
            <tr><td style="font-size: 4vh;">Enter Name:</td></tr>
            <tr><td><input type="text" name=employeeName placeholder="Name" class="in" required align="center"></td></tr>
            <tr><td><br></td></tr>
            <tr><td style="font-size: 4vh;">Enter Password:</td></tr>
            <tr><td><input type="password" name=employeePassword placeholder="Password" class="in" required align="center"></td></tr>
            <tr><td><br></td></tr>
            <tr>
            <td >
                <input type="submit" class="sub">       <input type="reset" class="rese">
            </td>
             <td >
                   
                </td>
            </tr>
            </table>
        </form>
    </div>
</body>
</html>
