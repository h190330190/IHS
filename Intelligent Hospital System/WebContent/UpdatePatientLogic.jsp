<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
 String pid=request.getParameter("pid");
String Appointment=request.getParameter("Appointment");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/epproj", "root", "Login@123");


PreparedStatement ps=con.prepareStatement(  
"update patient set Appointment=? where pid=?");  
  
ps.setString(1,Appointment);  
ps.setString(2,pid);  
          
int x=ps.executeUpdate();  
if (x>0){
	response.sendRedirect("SuccessPatient.jsp");
}
else{
	response.sendRedirect("FailurePatient.jsp");
}
%>