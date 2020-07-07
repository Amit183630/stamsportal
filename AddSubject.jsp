<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add User Page</title>
        <style>
            body{
                font-family: sans-serif;
            }
        </style>
        <Script src="UsersControls.js">
            </script>
         <script src="SubjectControl.js">
        </script>
    </head>
    <body>
        <% 
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        %>
        <form action="InsertSubject.jsp" method="post">
            <label>   Subject Name:<input type="text" name="SubName" ><br>
            Subject Code:<input type="text" name="SubCode"><br>
            Course:<input type="text" name="Cname"><br>
            <button type="submit">Add Subject</button>
        </form>
    </body>
</html>
