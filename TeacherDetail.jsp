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
                font-size: 15px;
            }
        </style> 
    </head>
    
    <body>
        <h2 style="text-align: center">Teachers Detail</h2>
        <div align="right">
        <form action="SearchTeacher.jsp">
            <input type="text" name="search">
            <input type="submit" value="Search Teacher">
        </form>
        </div>
    <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/adminpanel?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
                           user="root" password="" var="db"/>
          <sql:query dataSource="${db}" var="teachers">
             SELECT * FROM Teachers
          </sql:query>
            <table border='4' cellspacing='2px' cellpadding='5px' width='100%' style="text-align:center" >
                <caption><h2>Teachers List</h2></caption>
                <tr>
                <th>ID</th>
                <th>TNAME</th>
                <th>DOB</th>
                <th>JOINING DATE</th>
                <th>ADDRESS</th>
                <th>MOBILE NO</th>
                <th>EMAIL</th>
                <th>PASSWORD</th>
                <th>TEACHING SUBJECT</th>
                <th>TEACHING CLASSES</th>
                <th>ATTENDANCE</th>
                <th>Edit</th>
                <th>Delete</th>
                
                </tr>
                <c:forEach items="${teachers.rows}" var="teacher">
                    <tr>
                        <td>${teacher.tid}</td>
                        <td>${teacher.tname}</td>
                        <td>${teacher.tdob}</td>
                        <td>${teacher.tjdate}</td>
                        <td>${teacher.taddress}</td>
                        <td>${teacher.tmobileno}</td>
                        <td>${teacher.temail}</td>
                        <td>${teacher.tpwd}</td>
                        <td>${teacher.tsubject}</td>
                        <td>${teacher.tclass}</td>
                        <td>
                            <form action="Attendance.jsp" method="post">
                                <input type="hidden" value="${teacher.tid}" name="tid">
                                <input type="hidden" value="${teacher.tsubject}" name="tsubject">
                                <input type="hidden" value="${teacher.tclass}" name="tclass">
                                <input type="submit" value="Take Attendance" style="background-color: window">
                            </form>
                        </td>
                        <td width='5%'>
                            <form action="EditTeacher.jsp" method="post">
                                <input type="hidden" value="${teacher.tid}" name="tid">
                                <input type="submit" value="Edit" style="background-color: lightgreen">
                            </form>
                        </td>
                        <td width='5%'>
                            <form action="DeleteTeacher.jsp" method="post">
                                <input type="hidden" value="${teacher.tid}" name="tid">
                                <input type="submit" value="Delete Teacher" style="background-color: lightcoral">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        
    </body>
</html>
