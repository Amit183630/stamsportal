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
            }
        </style> 
    </head>
    <body>
        <h2 style="text-align: center;text-decoration: underline;">Students</h2>
       
        <form action="AddStudentForm.jsp">  <button  type="submit">Add Student</button> </form><br>
        <form action="StudentDetail.jsp"> <button  type="submit">Manage Students Details</button></form><br>
        <form action="StudentAttendance.jsp"> <button type="submit">Manage Students Attendance</button></form><br>
        
    </body>
</html>
