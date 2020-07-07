<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                font-family: sans-serif;
            }
        </style>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>
    <body>
         <% 
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        %>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/adminpanel?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
                           user="root" password="" var="db"/>
        <sql:query dataSource="${db}" var="users">
            SELECT * FROM USERS where id='${param.id}';
        </sql:query>
            
        <c:forEach items="${users.rows}" var="user">
            <form action="UpdateUser.jsp" method="post">
                <input type="hidden" name="id" value="${user.id}">
            <div class="form-group">
                <label for="uname">User Name:</label>
                <input type="text" name="uname" class="form-control" value="${user.name}" ><br>
            </div>
            <div class="form-group">
                <label>Password:</label>
                <input type="password" name="pwd" class="form-control" value="${user.password}"><br>
                <button type="submit" class=" btn btn-success">Add User</button>
            </div>
        </form>
        </c:forEach>
    </body>
</html>
