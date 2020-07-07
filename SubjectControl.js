var request;
function getSubjectList(){
    var course=document.getElementById("course");
    var cvalue=course.options[course.selectedIndex];
    var url="SubjectList.jsp?course="+cvalue;
                try{
                request=new XMLHttpRequest();
                request.onreadystatechange=function(){
                  if(request.readyState==4){
                      var val=request.responseText;
                      document.getElementById("SubjectList").innerHTML=val;
                  }
                };
                request.open("GET",url,true);
                request.send();
            }catch(e){
                alert("Unable to Connect to Server");
            }
}

