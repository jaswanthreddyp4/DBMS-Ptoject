<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medicine-Entry </title>
    <script>
            function dothis(){
            	window.location.href="AdminOptions.jsp";
            }
    </script>
    <style>
        *{
            margin:0%;
        }
        body{
            background-image: url('https://images.unsplash.com/photo-1587621144431-845c71bc9fe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1923&q=80');
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
            top: 10vh;
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
    <br>
    <button onclick="dothis()">HOME</button>
    <h2>WELCOME!</h2>
    <div class="content">
        <h1 align="center">MEDICINE ENTRY</h1>
        <br><br>
        <form action="medicineEntryResponse.jsp">
        <table align="center">
            <tr><td>Medicine ID :</td></tr>
            <tr><td><input type="text" name=medicineId class="in" placeholder="Med_ID" required></td></tr>
            <tr><td>Medicine Name : </td></tr>
            <tr><td><input type="text" name=medicineName class="in" placeholder="Med_Name" required></td></tr>
            <tr><td>Manufacturer : </td></tr>
            <tr><td><input type="text" name=manufacturer class="in" placeholder="Man_Name" required></td></tr>
            <tr><td>Mfg Date : </td></tr>
            <tr><td><input type="text" name=mfgDate class="in" placeholder="Mfg_Date"></td></tr>
            <tr><td>Exp Date : </td></tr>
            <tr><td><input type="text" name=expDate class="in" placeholder="Date of Expiry"></td></tr>
            <tr><td>Box Name : </td></tr>
            <tr><td><input type="text" name=boxName class="in" placeholder="Box_Name"></td></tr>
            <tr><td>Quantity : </td></tr>
            <tr><td><input type="text" name=quantity class="in" placeholder="Quantity"></td></tr>
           <tr><td><br></td></tr>
            <tr><td align="center"><input type="submit" name=Submit class="sub"></td></tr>
        </table>
        </form>
    </div>
</body>
</html>
