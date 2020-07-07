            var request;
            function getUsersControl(){
                var url="Users.jsp";
                try{
                request=new XMLHttpRequest();
                request.onreadystatechange=function(){
                  if(request.readyState==4){
                      var val=request.responseText;
                      document.getElementById("UserControls").innerHTML=val;
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
                      document.getElementById("UserControls").innerHTML=val;
                  }
                };
                request.open("GET",url,true);
                request.send();
            }catch(e){
                alert("Unable to Connect to Server");
            }
            }
             function getTeachersControl(){
                var url="Users.jsp";
                try{
                request=new XMLHttpRequest();
                request.onreadystatechange=function(){
                  if(request.readyState==4){
                      var val=request.responseText;
                      document.getElementById("UserControls").innerHTML=val;
                  }
                };
                request.open("GET",url,true);
                request.send();
            }catch(e){
                alert("Unable to Connect to Server");
            }
            }

