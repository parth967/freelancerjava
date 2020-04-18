<%-- 
    Document   : Developer_Registration
    Created on : Mar 8, 2018, 2:14:13 PM
    Author     : parth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Developer Registration</title>
    </head>
    <style>
        body{
            background-color: whitesmoke;
        }
        #heading{
            text-align: center;
            font-family: sans-serif;
            font-size: 100px;
            background-color: blueviolet;
            color: white;
            border: 5px ridge;
            border-bottom-color:blueviolet;
            border-bottom-style: none;
        }
        .form{
            text-align: center;
            position: absolute;
            top:30%;
            left:30%;
            border:10px aqua ridge;
            background-color: activecaption;
            width:500px;
            height:600px;
            padding-left: 35px;
        }
        #tablei{
            text-align:center;
            color:black;
            align:center;
        }
        #button1{
            background-color: blue;
            color: white;
            height: 50px;
            border-radius: 5px;
            width: 150px;
        }
        #myform{
            text-align: center;
            align:center;
        }
        .menu{
            border: 5px ridge;
            border-top-style: none;
            height: 50px;
           margin: 0px;
           padding-top: 7px;
           border-top-color: blueviolet;
           background-color: blueviolet;
        }
        #navbutton{
            color: white;
            text-decoration: none;
            font-size: 28px;
            text-align: center;
            border: 0.1px solid;
            border-color:blueviolet; 
            padding: 5px;
            margin: 10px;
        }
        #navbutton:hover{
            background: white;
            color: black;
        }
        </style>
    <body>
        <header id="heading">Developer Registration
         
        </header>
        <nav>
            <div class="menu">
            <a href="index.html" id="navbutton">Home</a>
            <a href="#" id="navbutton">Developer</a>
            <a href="Company_Registration.jsp" id="navbutton">Company</a>
            <a href="login.html" id="navbutton">Login</a>
            <a href="about.html" id="navbutton">About Us</a>
            </div>
        </nav>      
        

        <div class="form">
        <table cellpadding="10" id="tablei" cellspacing="10">
        <form id="myform" action="devprocess.jsp" method="POST">
        <tr><th>Username:</th><td>         <input type="text" name="name" required></td></tr>
        
        <tr><th>Skills:</th><td>       <input type="text" name="skills"  required></td></tr>

        <tr><th>Experience:</th><td> <input type="text" name="exp"  required></td></tr>

        <tr><th>Mobile No:</th><td>    <input type="text" name="mno"  required></td></tr>

       <tr> <th>Email id:</th>     <td><input type="text" name="email"  required></td></tr>

        <tr><th>Base Price:</th> <td> <input type="text" name="base_price" required></td></tr>
        <tr><th>Project Name:</th><td> <input type="text" name="project" required></td></tr>

       <tr><th>Total Income:</th> <td><input type="text" name="income" required></td></tr>
        <tr><th>Choose Password:</th> <td><input type="password" name="password" required></td></tr>
       <center><tr><td colspan="2"> <input type="submit" value="Submit" id="button1"></td></tr></center>
        </form>        
        </div>
    </body>
</html>
