<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
<title>Check Patients</title>
</head>
<style>
@charset "ISO-8859-1";
body, html {
  height: 100%;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("https://verisys.com/wp-content/uploads/2020/04/FACIS-level-3-blog-image.jpg");

  /* Control the height of the image */
  min-height: 650px;
  /* Center and scale the image nicely */
  background-position: bottom;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  left: 440px;
  margin: 20px;
  max-width: 340px;
  padding: 16px;
  background-color: rgba(114, 108, 108, 0.719);
  top: 45px;
  border-radius: 30px;
  height: 300px;
  
}

/* Full-width input fields */
  input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
  
}

/* Set a style for submit button */
.btn {
  background-color: blue;
  color: #fdfdfd;
  padding: 10px 30px;
  position: relative;
  border: none;
  cursor: pointer;
  left: 20%;
  width: 60%;
  height: 43px;
  opacity: 0.9;
  font-size: 120%;
}



.btn:hover {
  opacity: 0.51;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}
  ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #000000;
  height: 50px;
  width:1280px
}
li {
  float: left;
}


li a {
  display: block;
  color: white;
  text-align: center;
  padding: 15px 25px;
  
  text-decoration: none;
}
li a:hover {
  background-color: #808080;
}
</style>
<body>
<div class="bg-img">
<ul>
  <li><img src="https://s3-us-east-2.amazonaws.com/designevo/projects/uid-2416702/af59a1a03cfe21cd60042fbccf57469a/preview.png?t=1613797338254" width=75 height=60></li>
  <li><a href="welcomedoc.jsp">Home</a></li>
  <li><a href="contactdoc.html">Contact</a></li>
  <a href="logout.jsp"><p style="color:white;"><div style="float: right;"><div style="text-align:center" class="logoutbutton logoutbutton1">
     LOGOUT </div>
  </div></p></a>
</ul>

<% 
String did=session.getAttribute("userID").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epproj","root","Login@123");
Statement stmt = con.createStatement();
         ResultSet rs = stmt.executeQuery("SELECT * FROM patient where DoctorID='"+did+"'");
         out.println("PatientID");
         out.println("&emsp;&emsp;");
         out.println("PatientName");
         out.println("&emsp;&emsp;");
         out.println("Symptoms");
         while (rs.next()) {
        	 out.println("<br>");
            String pid = rs.getString("pid");
            String name = rs.getString("pname");
            String s = rs.getString("Symptoms");
            out.println(pid);
            out.println("&emsp;&emsp;&emsp;&emsp;");
            out.println(name);
            out.println("&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;");
            out.println(s);
         }
%>
<br>
<br>
<a href="PrescibeMedicine.jsp">Prescibe medicines</a>
</div>
</body>
</html>