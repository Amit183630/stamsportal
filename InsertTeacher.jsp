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
         <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/adminpanel?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
                           user="root" password="" var="db"/>
         <sql:update dataSource="${db}">
             insert into teachers(`tname`,`tdob`,`tjdate`,`taddress`,`tmobileno`,`temail`,`tpwd`)
             values('${param.tname}','${param.tdob}','${param.tjdate}','${param.taddress}','${param.tmobileno}',
             '${param.temail}','${param.tpwd}')
         </sql:update>
             <h2 style="color: green">Teacher Added</h2>
    </body>
</html>
