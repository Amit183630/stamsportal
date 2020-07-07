<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users Control</title>
        <link href="bootstrap-4.3.1-dist/css/bootstrap.css" rel="stylesheet">
        <style>
            body{
                font-family: sans-serif;
            }
        </style>
        
    </head>
    <body>
        <% 
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        %>
        <div>
        <h2 style="text-decoration: underline;text-align: center">Users Control</h2>
        <ul style="list-style: none;">
            <li><form action="AddUser.jsp"><button type="submit">Add User</button> </form></li>
        </ul>
        <div align="right">
        <form action="SearchUser.jsp" method="post">
            <input type="text" name="search" placeholder="Enter User Name" required="Please Enter User">
            <input type="submit" value="Search User">
            </div>
        </form><br>
        
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/adminpanel?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
                           user="root" password="" var="db"/>
        <sql:query dataSource="${db}" var="users">
            SELECT * FROM USERS;
        </sql:query>
            <table border='4' cellspacing='5px' cellpadding='10px' width='70%' align="center">
                <caption><h3>Users Detail</h3></caption>
                <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Password</th>
                <th>Edit</th>
                <th>Delete</th>
                </tr>
                <c:forEach items="${users.rows}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.password}</td>
                        <td width='15%'>
                            <form action="EditUser.jsp" method="post">
                                <input type="hidden" value="${user.id}" name="id">
                                <input type="submit" value="Edit User" style="background-color: lightgreen">
                            </form>
                        </td>
                        <td width='15%'>
                            <form action="DeleteUser.jsp" method="post">
                                <input type="hidden" value="${user.id}" name="id">
                                <input type="submit" value="Delete User" style="background-color: lightcoral">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            
    </body>
</html>
