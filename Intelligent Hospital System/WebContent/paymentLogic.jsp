<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String billno= request.getParameter("billno");
String TotalAmount= request.getParameter("Totamt");
String pid= request.getParameter("pid");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/epproj", "root", "Login@123");


PreparedStatement ps=con.prepareStatement(  
"insert into payment values(?,?,?)");  
  
ps.setString(1,billno);  
ps.setString(2,TotalAmount);  
ps.setString(3,pid);  

          
int x=ps.executeUpdate();  
if (x>0){
	response.sendRedirect("SuccessPatient.jsp");
}
else{
	response.sendRedirect("FailurePatient.jsp");
}
%>