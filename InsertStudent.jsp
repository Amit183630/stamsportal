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
             INSERT INTO students(`sname`,`sregno`,`semail`,`school`,`scourse`,`sdob`,`syear`,`semester`,`sbranch`,`sclass`)
             VALUES('${param.sname}','${param.sregno}','${param.semail}','${param.school}','${param.scourse}',
             '${param.sdob}','${param.syear}','${param.semester}','${param.sbranch}','${param.sclass}')
         </sql:update>
             <p style="color: green">Student Added</p>
    </body>
</html>
