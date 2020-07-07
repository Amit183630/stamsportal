<%-- 
    Document   : AddClass
    Created on : Feb 22, 2020, 10:08:33 AM
    Author     : CL-07-13
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="InsertClass.jsp" method="post">
            <div>
                <label> Class Name:</label><input type="text" name="cname"><br>
                <label>  Select Course:</label><select name="coursename">
            
                <option>Select Any Value</option>
                <option value="BCA">BCA</option>
            </select><br>
            </div>
            <input type="submit" value="Add Class">
        </form>
    </body>
</html>
