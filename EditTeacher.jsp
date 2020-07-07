
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/adminpanel?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
                           user="root" password="" var="db"/>
        <sql:query dataSource="${db}" var="teachers">
            Select * from teachers where tid='${param.tid}'
        </sql:query>
        <sql:query dataSource="${db}" var="classes">
            select cname from classes
        </sql:query>
            <sql:query dataSource="${db}" var="subjects">
            select SubName from Subjects
        </sql:query>
        <c:forEach items="${teachers.rows}" var="teacher">
            <form action="UpdateTeacher.jsp" method="post">
                <input type="hidden" value="${teacher.tid}" name="tid">
                Name: <input type="text" name="tname" value="${teacher.tname}"><br><br>
                DOB: <input type="date" name="tdob" value="${teacher.tdob}"><br><br>
             Joining Date: <input type="date" name="tjdate" value="${teacher.tjdate}"><br><br>
             Address: <input type="text" name="taddress" value="${teacher.taddress}"><br><br>
             Mobile no: <input type="text" name="tmobileno" value="${teacher.tmobileno}"><br><br>
             Email: <input type="email" name="temail" value="${teacher.temail}"><br><br>
             Password: <input type="password" name="tpwd" value="${teacher.tpwd}"><br><br>
             
             <input type="reset" value="Reset Fields">
             <input type="submit" value="Update teacher Details">
         </form>
        </c:forEach>
    </body>
</html>
