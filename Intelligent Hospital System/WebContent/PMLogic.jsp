<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String pid=request.getParameter("pid");
	String medicines=request.getParameter("Medicines");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epproj","root","Login@123");
	PreparedStatement smt=con.prepareStatement("update patient set Medicines=? where pid=?");
	smt.setString(1,medicines);
	smt.setString(2,pid);
	int i=smt.executeUpdate();
	if(i>0){
		response.sendRedirect("Success1.jsp");
	}
%>