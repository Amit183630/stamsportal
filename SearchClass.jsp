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
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/adminpanel?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
                           user="root" password="" var="db"/>
        <sql:query dataSource="${db}" var="classes">
            SELECT * FROM CLASSES WHERE CNAME like '%${param.search}%';
        </sql:query>
            <table border='4' cellspacing='5px' cellpadding='10px' width='70%' align="center">
                <caption><h3>Classes List</h3></caption>
                <tr>
                <th>ID</th>
                <th>Class Name</th>
                <th>Course</th>
                </tr>
                <c:forEach items="${classes.rows}" var="class">
                    <tr>
                        <td>${class.cid}</td>
                        <td>${class.cname}</td>
                        <td>${class.coursename}</td>
                        <td width='15%'>
                            <form action="EditClass.jsp" method="post">
                                <input type="hidden" value="${class.cid}" name="cid">
                                <input type="submit" value="Edit Class" style="background-color: lightgreen">
                            </form>
                        </td>
                        <td width='15%'>
                            <form action="DeleteClass.jsp" method="post">
                                <input type="hidden" value="${class.cid}" name="cid">
                                <input type="submit" value="Delete Class" style="background-color: lightcoral">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            
    </body>
</html>
