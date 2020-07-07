
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
          <sql:query dataSource="${db}" var="students">
              SELECT * FROM STUDENTS WHERE id='${param.id}'
          </sql:query>
              <c:forEach items="${students.rows}" var="student">
             <form action="UpdateStudent.jsp" method="post">
                 <input type="hidden" name="id" value="${student.id}">
                 Student Name: <input type="text" name="sname" value="${student.sname}"><br><br>
            Registration No: <input type="text" name="sregno" value="${student.sregno}"><br><br>
            Email: <input type="email" name="semail" value="${student.semail}"><br><br>
            School: <select name="school">
                <option>Select Any Value</option>
                <option value="SCE">School Of Computer Engineering</option>
            </select><br><br>
            Course: <select name="scourse">
                <option>Select Any Value</option>
                <option value="BCA">BCA</option>
            </select><br><br>
            Date Of Birth: <input type="date" name="sdob" value="${student.sdob}"><br><br>
            Select Year: <select name="syear">
                <option>Select Any Value</option>
                <option value="1st">1st</option>
                <option value="2nd">2nd</option>
                <option value="3rd">3rd</option>
            </select><br><br>
            Select Semester: <select name="semester">
                <option >Select Any Value</option>
                <option value="1st">1st</option>
                <option value="2nd">2nd</option>
                <option value="3rd">3rd</option>
                <option value="4th">4th</option>
                <option value="5th">5th</option>
                <option value="6th">6th</option>
            </select><br><br>
            Select Branch:<select name="sbranch">
                <option>Select Any Value</option>
                <option>General</option>
                <option>Data Science</option>
            </select><br><br>
            Class:<select name="sclass">
                <option>Select Any Value</option>
                <option value="General Sec A">General Sec A</option>
                <option value="General Sec B">General Sec B</option>
                <option value="Data Science">Data Science</option>
            </select><br><br>
            <input type="reset" value="Reset"><input type="submit" Value="Add Student" >
        </form>
              </c:forEach>
    </body>
</html>
