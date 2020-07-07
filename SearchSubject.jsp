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
        <sql:query dataSource="${db}" var="subjects">
            SELECT SubId,SubName,SubCode FROM SUBJECTS where SubName like '%${param.search}%';
        </sql:query>
       <table border='4' cellspacing='5px' cellpadding='10px' width='70%'>
                <tr>
                <th>SubID</th>
                <th>Subject Name</th>
                <th>Subject Code</th>
                </tr>
                <c:forEach items="${subjects.rows}" var="subject">
                    <tr>
                        <td>${subject.SubId}</td>
                        <td>${subject.SubName}</td>
                        <td>${subject.SubCode}</td>
                        <td width='15%'>
                            <form action="EditUser.jsp" method="post">
                                <input type="hidden" value="${subject.SubId}" name="id">
                                <input type="submit" value="Edit Subject" style="background-color: lightgreen">
                            </form>
                        </td>
                        <td width='15%'>
                            <form action="EditUser.jsp" method="post">
                                <input type="hidden" value="${subject.SubId}" name="id">
                                <input type="submit" value="Delete Subject" style="background-color: lightcoral">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
    </body>
</html>
