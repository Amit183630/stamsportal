<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="TakeAttendance.jsp" method="post">
            Select Date:<input type="date" name="date">
            <input type="hidden" value="${param.tsubject}" name="tsubject">
            <input type="hidden" value="${param.tclass}" name="tclass">
            <button type="submit">Take Attendance</button>
        </form>
    </body>
</html>
