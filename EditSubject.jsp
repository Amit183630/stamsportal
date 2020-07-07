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
            SELECT * FROM SUBJECTS where SubId='${param.SubId}';
        </sql:query>
            
        <c:forEach items="${subjects.rows}" var="subject">
            <form action="UpdateSubject.jsp" method="post">
                <input type="hidden" name="SubId" value="${subject.SubId}">
            Subject Name:<input type="text" name="SubName" value="${subject.SubName}"><br>
            Subject Code:<input type="text" name="SubCode" value="${subject.SubCode}"><br>
            <input type="submit" value="Update Subject Details">
        </form>
        </c:forEach>
    </body>
</html>
