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
             update students set sname='${param.sname}',sregno='${param.sregno}',semail='${param.semail}',school='${param.school}',scourse='${param.scourse}',sdob='${param.sdob}',syear='${param.syear}',semester='${param.semester}',sbranch='${param.sbranch}',sclass='${param.sclass}' where id=${param.id}
         </sql:update>
             <p style="color: green">Student Details Updated</p>
    </body>
</html>
