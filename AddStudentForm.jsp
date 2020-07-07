<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
            body{
                font-family: sans-serif;
                font-size: 25px;
            }
        </style> 
        <link href="bootstrap-4.3.1-dist/css/bootstrap.css" rel="stylesheet">
        <script src="bootstrap-4.3.1-dist/js/bootstrap.js">
        </script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>
    <body>
        <form action="InsertStudent.jsp" method="post" class="col-lg-8">
            <div class="form-group">
                <label> Student Name:</label> <input type="text" name="sname" class="form-control"><br><br></div>
            <div class="form-group"> <label>   Registration No:</label> <input type="text" name="sregno" class="form-control"><br><br></div>
            <div class="form-group"> <label> Email:</label> <input type="email" name="semail" class="form-control"><br><br></div>
            <div class="form-group">   <label> School:</label> <select name="school" class="form-control">
            
                <option>Select Any Value</option>
                <option value="SCE">School Of Computer Engineering</option>
                </select></div><br><br>
                <div class="form-group">
                    <label> Course:</label> <select name="scourse" class="form-control">
                <option>Select Any Value</option>
                <option value="BCA">BCA</option>
            </select> </div> <br><br>
            <div class="form-group"> <label> Date Of Birth:</label> <input type="date" name="sdob" class="form-control"><br><br>
                <div>  <label> Select Year:</label> <select name="syear">
                <option>Select Any Value</option>
                <option value="1st">1st</option>
                <option value="2nd">2nd</option>
                <option value="3rd">3rd</option>
            </select> </div><br><br>
            <div class="form-group"> <label>  Select Semester:</label> <select name="semester" class="form-control">
                <option >Select Any Value</option>
                <option value="1st">1st</option>
                <option value="2nd">2nd</option>
                <option value="3rd">3rd</option>
                <option value="4th">4th</option>
                <option value="5th">5th</option>
                <option value="6th">6th</option>
                </select> </div><br><br>
                <div class="form-group">    <label>   Select Branch:</label><select name="sbranch" class="form-control">
                <option>Select Any Value</option>
                <option>General</option>
                <option>Data Science</option>
                    </select></div><br><br>
                    <div class="form-group">  <label>  Class:</label><select name="sclass" class="form-control">
                <option>Select Any Value</option>
                <option value="General Sec A">General Sec A</option>
                <option value="General Sec B">General Sec B</option>
                <option value="Data Science">Data Science</option>
                        </select></div><br><br>
                        <input type="reset" value="Reset" class="btn btn-sm"><input type="submit" Value="Add Student" class="btn btn-success">
        </form>
    </body>
</html>
