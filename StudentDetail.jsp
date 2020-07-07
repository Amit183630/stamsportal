<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
            body{
                font-family: sans-serif;
                font-size: 15px;
            }
        </style> 
    <body>
        <H2 style="text-align: center">Student Details</H2>
        <div align="right">
        <form action="SearchStudent.jsp" method="post">
                    <input type="text" name="search" placeholder="Enter Student Name" required="">
                    <input type="submit" value="Seach Student">
                </form>
        </div>
          <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/adminpanel?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
                           user="root" password="" var="db"/>
          <sql:query dataSource="${db}" var="students">
             SELECT * FROM STUDENTS
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
                <th>DOB</th>
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
