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
        <sql:update dataSource="${db}" >
            update teachers set tname='${param.tname}',tdob='${param.tdob}',tjdate='${param.tjdate}',
            taddress='${param.taddress}',tmobileno='${param.tmobileno}',temail='${param.temail}',
            tpwd='${param.tpwd}' where tid='${param.tid}'
        </sql:update>
            <h2 style="color:green">Details Updated</h2>
    </body>
</html>
