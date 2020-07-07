<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                font-family: sans-serif;
                font-size: 25px;
                background-color:aqua;
            }
            #Controls{
               border: 3px solid dimgrey;
               background-color: powderblue;
               text-align: center;
            }
            button{
                font-size: 20px;
                padding: 10px;
                background-color: background;
                color: gold;
            }
            .head{
             background-color: mintcream;   
            }
        </style>  
        <script src="Controls.js">
        </script>
       
    </head>
    <body>
        <% 
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        %>
        <div class="head">
        <h2 style="text-align: center;font-family: georgia">Admin Panel</h2>
    <center>
            <button onclick="getUsersControl()" >Users Control</button>
            <button onclick="getStudentsControl()" >Students Control</button>
            <button onclick="getTeachersControl()" >Teachers Control</button>
            <button onclick="getSubjectControl()">Subject Control</button>
            <button onclick="getClassesControl()">Class Control</button>
    </center>
        </div>
            <div id="Controls" >
                <div id="SubjectList"></div>
            </div>
    </body>
</html>
