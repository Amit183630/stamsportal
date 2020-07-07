<%-- 
    Document   : Teachers
    Created on : 17 Feb, 2020, 5:01:48 PM
    Author     : ajay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2 style="text-align: center">Teachers Control</h2>
        <form action="AddTeacherForm.jsp"> <button type="submit" >Add a Teacher</button></form><br>
        <form action="TeacherDetail.jsp"> <button type="submit" >Manage Teachers Detail</button></form><br>
        <form action="AssignTeacher.jsp"> <button type="submit" >Assign Classes to Teachers</button></form>
    </body>
</html>
