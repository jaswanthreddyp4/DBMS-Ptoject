<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Med Search</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        button{
            background-color:black;
            position: absolute;
            left: 2.12vw;
            border:  0.13vw solid black;
            border-radius:5px;
            cursor: pointer;
            text-decoration: underline;
            color: white;
            top: 80vh;
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
            width:  10vw;
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
    </style>
</head>
<body>
    <h1 align="center">Welcome!</h1>
    <div class="content">
        <h1>Medicine Entry</h1>
        <form action=medicineEntered.jsp>
            <table>
                <tr><td><br></td></tr>
                <tr>
                    <td style="font-size: 20px;">Medicine-Name : </td>
                </tr>
                <tr>
                    <td><input type="text" name=medicine_name placeholder="Medicine Name" class="in" align="center"></td>
                </tr>
                <tr><td><br></td></tr>
                <tr>
                    <td style="font-size: 20px;">Medicine_ID : </td>
                </tr>
                <tr> 
                    <td><input type="text" name=medicine_id placeholder="Medicine Id" class="in" align="center"></td>
                </tr>
                <tr><td><br></td></tr>
                <tr>
                    <td style="font-size: 20px;">Medicine_Qty : </td>
                </tr>
                <tr>
                    <td><input type="text" name=medicine_quantity placeholder="Quantity" class="in" align="center"></td>
                </tr>
                <tr><td><br></td></tr>
                <tr><td><input type="submit" class="sub" align="center"></td></tr>
            </table>
        </form>
    </div>
</body>
</html>
