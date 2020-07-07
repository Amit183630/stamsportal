<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search User Page</title>
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
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/adminpanel?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
                           user="root" password="" var="db"/>
        <sql:query dataSource="${db}" var="users">
            SELECT * FROM USERS where name like '%${param.search}%';
        </sql:query>
       <table border='4' cellspacing='5px' cellpadding='10px' width='70%'>
                <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Password</th>
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
                            <form action="EditUser.jsp" method="post">
                                <input type="hidden" value="${user.id}" name="id">
                                <input type="submit" value="Delete User" style="background-color: lightcoral">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
    </body>
</html>
