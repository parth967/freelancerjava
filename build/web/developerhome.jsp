<%-- 
    Document   : developerhome
    Created on : Mar 29, 2018, 4:28:25 PM
    Author     : parth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Developerhome</title>
    </head>
    <style>
        body{
            background-color: whitesmoke;
        }
    #loginform{
        position: absolute;
        top:30%;
        left:30%;
    border: 10px activeborder ridge;
    background-color: blue;
    color: white;
    width: 500px;
    height: 300px;
    border-radius: 10px;
   text-align: center; 
    }
        #heading{
            text-align: center;
            font-family: sans-serif;
            font-size: 100px;
            background-color: graytext;
            color: white;
            border: 5px ridge;
            border-bottom-color:graytext;
            border-bottom-style: none;
        }
        #button1{
            background-color: buttonface;
            color: black;
            height: 50px;
            border-radius: 5px;
            width: 150px;
        }
        .menu{
            border: 5px ridge;
            border-top-style: none;
            height: 50px;
           margin: 0px;
           padding-top: 7px;
           border-top-color: graytext;
           background-color: graytext;
        }
        #navbutton{
            color: white;
            text-decoration: none;
            font-size: 28px;
            text-align: center;
            border: 0.1px solid;
            border-color:graytext; 
            padding: 5px;
            margin: 10px;
        }
        #navbutton:hover{
            background: white;
            color: black;
        }
        #usernameside{
            color:white;
            text-align: right;
            padding-left: 400px;
            font-size: 25px;
            font-family: monospace;
        }
    </style>
    <body>
        
        <header id="heading">Freelancer
         
        </header>
        <nav>
            <div class="menu">
            <a href="#" id="navbutton">Home</a>
            <a href="project_det.jsp" id="navbutton">Project Details</a>
            <a href="profile.jsp" id="navbutton">Profile</a>
            <a href="logout.jsp" id="navbutton">Logout</a>
            <a id="usernameside">Welcome:<%=session.getAttribute("name")%></a>
            </div>
        </nav>      
        
    
       
    </body>
</html>
