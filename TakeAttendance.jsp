<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table{
            text-align: center;
            }
            div{
                display: inline;
            }
            button{
                padding-top: 8px;
            }
        </style>
    </head>
    <body>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/adminpanel?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
                           user="root" password="" var="db"/>
        <sql:query dataSource="${db}" var="students">
            Select * from students where sclass='${param.tclass}'
        </sql:query>
            <div align="center">
            <form action="" method="post">
                <table cellspacing="5px" cellpadding="8px">
                    <th width="20%">Student Name</th>
                    <th width="10%">Present</th>
                    <th width="10%">Absent</th>
                <c:forEach items="${students.rows}" var="student">
                    <tr>
                        <td>${student.sname}</td>
                        <td>
                            Present<input type="radio" name="status" value="P"></td><td>Absent<input type="radio" name="status" value="A">
                        </td>
                    </tr>
                </c:forEach>
                </table>
                <button type="submit">Submit Attendance</button>
              </form>
            </div>
    </body>
</html>
