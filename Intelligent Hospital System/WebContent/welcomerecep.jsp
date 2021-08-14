<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Welcome Recep</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head></head>
<style>
body,html {
  background-image: url("https://coolbackgrounds.io/images/backgrounds/white/white-radial-gradient-a5802da1.jpg");
}

.center {
  margin-top: auto;
  width: 1009px;
}

ul {
  list-style-type: none;
  margin: 2px;
  padding: 2px;
  background-color: #000000;
  height: 50px;
  width:1240px
  overflow: hidden;
}


.iconDetails {
 margin-left:5%;
float:left;
height:40px;
width:40px;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 13px 30px;
  text-decoration: none;
}

li a:hover {
  background-color: #808080;
}
.fa {
  padding: 10px;
  font-size: 20px;
  width: 50px;
  height:50px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}

.fa:hover {
    opacity: 0.9;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}


.fa-instagram {
  background: #125688;
  color: white;
  size:20px;
}

.fa-pinterest {
  background: #cb2027;
  color: white;
}


.fa-skype {
  background: #00aff0;
  color: white;
}

.fa-yahoo {
  background: #430297;
  color: white;
}


* {
  box-sizing: border-box;
}

/* Style the search field */
form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 1110px;
  height: 53px;
  background: #f1f1f1;
  left: 200px;
}

/* Style the submit button */
form.example button {
  float: center;
  width: 120px;
  height: 53px;
  padding: 0px;
  background: #000080;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none; /* Prevent double borders */
  cursor: pointer;
}

form.example button:hover {
  background: #1c16fa;
}

/* Clear floats */
form.example::after {
  content: "";
  clear: both;
  display: table;
}

.button {
  display:block;
  padding: 7px 5px;
  text-align: right;
  text-decoration: none;
  display: inline-block;
  font-size: 30px;
  margin: 10px 10px;
  transition-duration: 0.5s;
  cursor: pointer;
  border-radius: 10px;
}
.button1 {
  width: 350px;
  background-color: #F0F8FF;
  color: black;
  border: 4px solid #00008B;
}
.button1:hover {
  background-color: #00008B;
  color: white;
}

.logoutbutton{
  display:block;
  float: right;
  padding: 1px 1px;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  transition-duration: 0.5s;
  cursor: pointer;
  border-radius: 10px;

}

.logoutbutton1{
 width: 100px;
  background-color: #F0F8FF;
  color: black;
  border: 4px solid #00008B;
}
.logoutbutton1:hover {
  background-color: #00008B;
  color: white;
}


</style>
<body>
<%
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	if (session.getAttribute("userID")==null){
		response.sendRedirect("login.html");
	}
%>
<div class="container-fluid">
<a href="welcomerecep.html"><img src="https://s3-us-east-2.amazonaws.com/designevo/projects/uid-2416702/af59a1a03cfe21cd60042fbccf57469a/preview.png?t=1613797338254" width=220 height=200></a>
<img src="https://existek.com/wp-content/uploads/2019/05/hospital-management-system-post-cover-image.jpg" height=200 class="center">
</div>
<br>
<div class="container-fluid">

<ul>
  <li><a href="welcomerecep.jsp">Home</a></li>
  <li><a href="contactrecep.html">Contact</a></li>
  <a href="logout.jsp"><p style="color:white;"><div style="float: right;"><div style="text-align:center" class="logoutbutton logoutbutton1">
     LOGOUT </div>
  </div></p></a>
</ul>
<form class="example" action="About">
  <input type="text" placeholder="Search..." name="search">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
<br>
<form action="select" method="post">
      <a href="addpatient.jsp"><p style="color:white;"><div style="text-align:center" class="button button1"><div style="font-size: 16px;">Add Patient</div></div></a></p>
      <a href="payment.jsp"><p style="color:white;"><div style="text-align:center" class="button button1"><div style="font-size: 16px;">Add Payment</div></div></a></p>
      <a href="UpdatePatient.jsp"><p style="color:white;"><div style="text-align:center" class="button button1"><div style="font-size: 16px;">Update Appointment</div></div></a></p>
      <br>
     <hr>
      </form>

      <div class="container">
      <h4>For Additional Details, Please Visit...</h4>
      <a href="#" class="fa fa-facebook"></a>
<a href="#" class="fa fa-twitter"></a>
<a href="#" class="fa fa-google"></a>
<a href="#" class="fa fa-linkedin"></a>
<a href="#" class="fa fa-instagram"></a>
<a href="#" class="fa fa-pinterest"></a>
<a href="#" class="fa fa-skype"></a>
<a href="#" class="fa fa-yahoo"></a>
</div>

<br>
    <div class="container-fluid ptb15 bg-white">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-7 col-xs-12">
            <p class="mb0">Copyright © 2021 HealVibe Intelligent Hospitals</p>

          </div>
               </div>
              </div>
            </div>
          </div>

        </div>
</body>
</html>