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
        <sql:query dataSource="${db}" var="students">
              SELECT * FROM STUDENTS where sname like '%${param.search}%'
        </sql:query>
              <table border='4' cellspacing='2px' cellpadding='5px' width='100%' style="text-align:center" >
                <caption><h2>Student List</h2></caption>
                <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Registration No</th>
                <th>Email</th>
                <th>School</th>
                <th>Course</th>
                <th>D.O.B</th>
                <th>Year</th>
                <th>Semester</th>
                <th>Branch</th>
                <th>Class</th>
                <th>Edit</th>
                <th>Delete</th>
                
                </tr>
                <c:forEach items="${students.rows}" var="student">
                    <tr>
                        <td>${student.id}</td>
                        <td>${student.sname}</td>
                        <td>${student.sregno}</td>
                        <td>${student.semail}</td>
                        <td>${student.school}</td>
                        <td>${student.scourse}</td>
                        <td>${student.sdob}</td>
                        <td>${student.syear}</td>
                        <td>${student.semester}</td>
                        <td>${student.sbranch}</td>
                        <td>${student.sclass}</td>
                        <td width='5%'>
                            <form action="EditStudent.jsp" method="post">
                                <input type="hidden" value="${student.id}" name="id">
                                <input type="submit" value="Edit" style="background-color: lightgreen">
                            </form>
                        </td>
                        <td width='5%'>
                            <form action="DeleteStudent.jsp" method="post">
                                <input type="hidden" value="${student.id}" name="id">
                                <input type="submit" value="Delete Student" style="background-color: lightcoral">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
    </body>
</html>
