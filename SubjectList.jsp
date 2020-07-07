<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users Control</title>
        <style>
            body{
                font-family: sans-serif;
            }
            table{
                text-align: center;
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
            <li><a href="AddSubject.jsp">Add a Subject</a> </li>
        </ul>
        <div align="right">
        <form action="SearchSubject.jsp" method="post">
            <input type="text" name="search" placeholder="Enter Subject Name" required="Please Enter Subject">
            <input type="submit" value="Search Subject">
            </div>
        </form><br>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/adminpanel?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
                           user="root" password="" var="db"/>
        <sql:query dataSource="${db}" var="subjects">
            SELECT SubId,SubName,SubCode FROM SUBJECTS WHERE Cname='${param.course}';
        </sql:query>
            <table border='4' cellspacing='5px' cellpadding='10px' width='70%' align="center">
                <caption><h3>Subject List</h3></caption>
                <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Subject Code</th>
                <th> Edit</th>
                <th>Delete</th>
                </tr>
                <c:forEach items="${subjects.rows}" var="subject">
                    <tr>
                        <td>${subject.SubId}</td>
                        <td>${subject.SubName}</td>
                        <td>${subject.SubCode}</td>
                        <td width='15%'>
                            <form action="EditSubject.jsp" method="post">
                                <input type="hidden" value="${subject.SubId}" name="SubId">
                                <input type="submit" value="Edit Subject" style="background-color: lightgreen">
                            </form>
                        </td>
                        <td width='15%'>
                            <form action="DeleteSubject.jsp" method="post">
                                <input type="hidden" value="${subject.SubId}" name="SubId">
                                <input type="submit" value="Delete Subject" style="background-color: lightcoral">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            
    </body>
</html>
