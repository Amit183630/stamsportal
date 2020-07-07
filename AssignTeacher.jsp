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
            Select tname,tid from Teachers
        </sql:query>
            <sql:query dataSource="${db}" var="classes">
            Select cname from classes
        </sql:query>
            <sql:query dataSource="${db}" var="subjects">
            Select SubName from subjects
        </sql:query>
        <c:set var="sno" value="0"/>
            <table  cellspacing='5px' cellpadding='8px' width='80%' style="text-align:center" >
                <tr>
                <th width="2%">SNo</th>
                <th>Teacher Name</th>
                <th>Classes</th>
                <th>Subjects</th>
                </tr>
        <c:forEach items="${teachers.rows}" var="teacher">
            <form action="AssignClass.jsp" method="post" >
            <tr>
            <td>${sno=sno+1}</td>
            <td>${teacher.tname}</td>
            <td>
                <select name="tclass">
                    <option>Select Any Value</option>
                    <c:forEach items="${classes.rows}" var="class">
                        <option value="${class.cname}">${class.cname}</option>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select name="tsubject">
                    <option>Select Any Value</option>
                    <c:forEach items="${subjects.rows}" var="subject">
                        <option value="${subject.SubName}">${subject.SubName}</option>
                    </c:forEach>
                </select>
            </td>
            <td>
                <input type="hidden" value="${teacher.tid}" name="tid">
                  <button type="submit">Assign</button>
            </td>
            </tr>
            </form>
        </c:forEach>
    </body>
</html>
