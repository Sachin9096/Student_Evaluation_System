<%@page import="com.example.demo.model.Student" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous"></head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
* 
{
    margin: 0px;
    padding: 0px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    outline: 0;
}

html 
{
    -webkit-text-size-adjust: 100%;
    -ms-text-size-adjust: 100%;
    font-size: 10px;
    -webkit-tap-highlight-color: transparent;
}

html,
body
{
    font-family: Roboto, sans-serif, arial;
    font-size: 14px;
    color: #242424;
    font-weight: 400;
    text-align: center;
}
h1
{
    text-align: center;
}

.sachu 
{
    margin-left: 10px;
    margin-bottom:-20px;
   
}

.container1
{
    width: 100%;
    margin: 0px auto;
    display: table;
}

.width-100 
{
    width: 100%;
    float: left;
}

.width-50 
{
    width: 40%;
    float: left;
    margin-left: 120px;
}

.width-25 
{
    width: 25%;
    float: left;
}

#menu 
{
    background-color: #242424;
}

.logo 
{
    padding-left: 90px;
    padding-top: 30px;
    padding-bottom: 5px;
}

.logo img 
{
    height: 50px;
}

.head-menu 
{
    padding-top: 25px;
    padding-bottom: 12px;
    background-color: #242424;
}

.head-menu ul 
{
    list-style: none;
    float: right;
    font-size: 14px;
}

.head-menu ul li 
{
    float: left;
    padding-left: 200px;
    padding: 20px;
    border-radius: 1px solid rgba(253, 229, 229, 0.624);
    border-left: 1px solid rgba(253, 229, 229, 0.624);
}
.head-menu ul li a 
{
    color: white;
    font-size: 17px;
    font-weight: bold;
    text-decoration: none;
}
span 
{
    color: white;
}

.notification 
{
    padding-top: 7%;
}

.button_container 
{
    display: flex;
    justify-content: center;
    margin-top: 20px;

}

input[type="submit"]
{
    background-color: red;
    border: transparent solid 2px;
    padding: 5px 10px;
    color: white;
    border-radius: 8px;
    transition: 0.3s ease-in;
    margin-left: 100px;
    border-radius: 10px;
}
input[type="submit"]:hover 
{
    background-color: #ccc;
    border: 2px solid red;
    color: black;
    transition: 0.3s ease-out;
    cursor: pointer;
}

.student 
{
    margin-left: 450px;
    text-align: center;
}
#myVideo 
{
    position: relative;
    right: 0;
    bottom: 0;
   /*  min-width: 100%;
    min-height: 100%;
} */
}

#tablemar 
{
    margin-top: -675px;
    position: relative;
    color: white;
}
</style>

</head>
<body>
<div class="container1" id="menu">

        <div class="width-25 logo" >
            <img src="/img/logo1.png">
        </div>
  
        <div class="width-50">
              <font id="tit" color="red" ><b><h1 style="margin-top: 30px;">View All Staff Details</h1></b></font>
        </div>

        <div class="width-75 head-menu" >
            <ul>
                <li><a href="HomeStudent.jsp"><i class="bi bi-house-door"></i></a></li>
                 <li><a href="adminelogin.jsp"><i class="bi bi-person-circle"></i></a></li> 
                  <li><a href="#"><i class="bi bi-question-circle"></i></a></li>
                  <li><a href="index.jsp"><i class="bi bi-box-arrow-right"></i></a></li>
            </ul>
        </div>
    </div> 
 <div class="video" >
    <video autoplay muted loop id="myVideo" style="height: 100%; width:100%;">
        <source src="/img/om1.mp4" type="video/mp4">
    </video> 
<div ID="tablemar">
<div class="sachu">
<table border="2px solid black" style="border-collapse: collapse; ">
<tr>
<th>Student Id</th>
<th>Student Name</th>
<th>C</th>
<th>Cpp</th>
<th>Core-Java</th>
<th>Adv-Java</th>
<th>Core-Project</th>
<th>ADV Java-Project</th>
<th>Html</th>
<th>Css</th>
<th>JavaScript</th>
<th>Bootstrap</th>
<th>Angular</th>
<th>WD1-Project</th>
<th>Web-Project</th>
<th>Web-Framework</th>
<th>Django</th>
<th>Pyramid</th>
<th>Flask</th>
<th>GUI Thinker</th>
<th>Mongo DB</th>
<th>Python-Project</th>
<th>Software Testing</th>
<th>Manual</th>
<th>Testing-Project</th>
</tr>
<% 
List<Student> stu=(List<Student>)request.getAttribute("Student");
for(Student s:stu)
{
%>
<tr>
<td><%=s.getStudentId() %></td>
<td><%=s.getStudentName() %></td>
<td><%=s.getC() %></td>
<td><%=s.getCpp() %></td>
<td><%=s.getCoreJava() %></td>
<td><%=s.getCoreProject() %></td>
<td><%=s.getADVJava() %></td>
<td><%=s.getCoreProject() %></td>
<td><%=s.getADVJavaProject() %></td>
<td><%=s.getHtml() %></td>
<td><%=s.getCss() %></td>
<td><%=s.getJavaScript() %></td>
<td><%=s.getBootstrap() %></td>
<td><%=s.getAngular() %></td>
<td><%=s.getWD1Project() %></td>
<td><%=s.getWebProject() %></td>
<td><%=s.getWebFramework() %></td>
<td><%=s.getDjango() %></td>
<td><%=s.getPyramid() %></td>
<td><%=s.getFlask() %></td>
<td><%=s.getGUIThinker() %></td>
<td><%=s.getMongoDB() %></td>
<td><%=s.getPythonProject() %></td>
<td><%=s.getSoftwareTesting() %></td>
<td><%=s.getManual() %></td>
<td><%=s.getTestingProject() %></td>
</tr>
<%
}
%>
</table><br>
<!-- <a href="Staffdetailsjsp.jsp"><button>Home</button></a> -->
</div>
</div>
</div>
</body>
</html>