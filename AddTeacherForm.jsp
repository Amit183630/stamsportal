<%-- 
    Document   : Addteacher
    Created on : 14 Feb, 2020, 1:53:05 PM
    Author     : neera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="InsertTeacher.jsp" method="post">
             Name: <input type="text" name="tname"><br><br>
             DOB: <input type="date" name="tdob"><br><br>
             Joining Date: <input type="date" name="tjdate"><br><br>
             Address: <input type="text" name="taddress"><br><br>
             Mobile no: <input type="text" name="tmobileno"><br><br>
             Email: <input type="email" name="temail"><br><br>
             Password: <input type="password" name="tpwd"><br><br>
             <input type="reset" value="Reset Fields">
             <input type="submit" value="Add teacher">
         </form>
    </body>
</html>
