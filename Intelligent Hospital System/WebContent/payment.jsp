<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
 <link rel="stylesheet" type="text/css" href="payment.css">
</head>
<body>
<div class="bg-img">
<ul>
  <li><img src="https://s3-us-east-2.amazonaws.com/designevo/projects/uid-2416702/af59a1a03cfe21cd60042fbccf57469a/preview.png?t=1613797338254" width=75 height=60></li>
  <li><a href="welcomerecep.jsp">Home</a></li>
  <li><a href="contactrecep.html">Contact</a></li>
  <a href="logout.jsp"><p style="color:white;"><div style="float: right;"><div style="text-align:center" class="logoutbutton logoutbutton1">
     LOGOUT </div>
  </div></p></a>
</ul>
  <form action="paymentLogic.jsp" method="post" class="container">
    <h1><div style="text-align:center"><div style="font-family: Georgia, 'Times New Roman', Times, serif;">Payment Details</div></div></h1>
    <input type="text" placeholder="Enter Bill Number" name="billno" required>
    <input type="text" placeholder="Enter Total Amount" name="Totamt" required>
    <input type="text" placeholder="Enter Patient ID" name="pid" required>
    <br>
    <button type="submit" class="btn">
    <div style="text-align:center">
    <div style="font-size: 18px;">Add Detail</div></div></button>
    <br>

   </form>
</div>
</body>
</html>