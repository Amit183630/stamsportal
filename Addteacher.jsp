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
         <form action="Addteacher.jsp" method="post">
            Teacher id: <input type="text" name="Tid"><br><br>
            teacher Name: <input type="text" name="Tname"><br><br>
            Teacher DOB: <input type="text" name="TDob"><br><br>
            Teacher joining Date: <input type="text" name="Tjoiningdate"><br><br>
             Teacher Address: <input type="text" name="Taddress"><br><br>
             Teacher Mobile no: <input type="text" name="Tmobileno"><br><br>
              Teacher Email: <input type="text" name="Temail"><br><br>
               Teacher Password: <input type="text" name="Tpassword"><br><br>
               <input type="submit">
         </form>
    </body>
</html>
