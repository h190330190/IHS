<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String did= request.getParameter("did");
String dname=request.getParameter("dname");
String Symptoms=request.getParameter("Symptoms");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epproj","root","Login@123");
PreparedStatement smt=con.prepareStatement("insert into disease values(?,?,?)");
smt.setString(1,did);
smt.setString(2,dname);
smt.setString(3,Symptoms);
int i=smt.executeUpdate();
if(i>0){
	response.sendRedirect("Success2.jsp");
}
%>