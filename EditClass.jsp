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
        <sql:query dataSource="${db}" var="classes">
            SELECT * FROM CLASSES where CID='${param.cid}';
        </sql:query>
        <c:forEach items="${classes.rows}" var="class">
            <form action="UpdateClass.jsp" method="post">
                <input type="hidden" name="cid" value="${class.cid}">
                Class Name:<input type="text" name="cname" value="${class.cname}"><br>
            Select Course:<select name="coursename">
                <option>Select Any Value</option>
                <option value="BCA">BCA</option>
            </select><br>
            <input type="submit" value="Update Details">
        </form>
        </c:forEach>
    </body>
</html>
