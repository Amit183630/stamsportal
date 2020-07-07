            var request;
            function getUsersControl(){
                var url="Users.jsp";
                try{
                request=new XMLHttpRequest();
                request.onreadystatechange=function(){
                  if(request.readyState==4){
                      var val=request.responseText;
                      document.getElementById("Controls").innerHTML=val;
                  }
                };
                request.open("GET",url,true);
                request.send();
            }catch(e){
                alert("Unable to Connect to Server");
            }
            }
             function getStudentsControl(){
                var url="Students.jsp";
                try{
                request=new XMLHttpRequest();
                request.onreadystatechange=function(){
                  if(request.readyState==4){
                      var val=request.responseText;
                      document.getElementById("Controls").innerHTML=val;
                  }
                };
                request.open("GET",url,true);
                request.send();
            }catch(e){
                alert("Unable to Connect to Server");
            }
            }
             function getTeachersControl(){
                var url="Teachers.jsp";
                try{
                request=new XMLHttpRequest();
                request.onreadystatechange=function(){
                  if(request.readyState==4){
                      var val=request.responseText;
                      document.getElementById("Controls").innerHTML=val;
                  }
                };
                request.open("GET",url,true);
                request.send();
            }catch(e){
                alert("Unable to Connect to Server");
            }
         }
         function getSubjectControl(){
                var url="Subject.jsp";
                try{
                request=new XMLHttpRequest();
                request.onreadystatechange=function(){
                  if(request.readyState==4){
                      var val=request.responseText;
                      document.getElementById("Controls").innerHTML=val;
                  }
                };
                request.open("GET",url,true);
                request.send();
            }catch(e){
                alert("Unable to Connect to Server");
            }
         }
         function getClassesControl(){
             var url="Classes.jsp";
                try{
                request=new XMLHttpRequest();
                request.onreadystatechange=function(){
                  if(request.readyState==4){
                      var val=request.responseText;
                      document.getElementById("Controls").innerHTML=val;
                  }
                };
                request.open("GET",url,true);
                request.send();
            }catch(e){
                alert("Unable to Connect to Server");
            }
         }
function insertUser(){
                var uname=document.getElementById("uname").value;
                var pwd=document.getElementById("pwd").value;
                var url="InsertUser.jsp?uname="+uname+"&pwd="+pwd;
                try{
                request=new XMLHttpRequest();
                request.onreadystatechange=function(){
                  if(request.readyState==4){
                      var val=request.responseText;
                      alert("Successfully Added");
                     
                  }
                };
                request.open("POST",url,true);
                request.send();
            }catch(e){
                alert("Unable to Connect to Server");
            }
         }
