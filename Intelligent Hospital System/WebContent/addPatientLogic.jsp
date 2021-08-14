<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String pid=request.getParameter("pid");
	String pname=request.getParameter("pname");
	String phno=request.getParameter("phno");
	String age=request.getParameter("age");
	String paddress=request.getParameter("paddress");
	String pgender=request.getParameter("pgender");
	String pbloodgroup=request.getParameter("pbloodgroup");
	String BP=request.getParameter("BP");
	String Symptoms=request.getParameter("Symptoms");
	String DoctorID=request.getParameter("DoctorID");
	String Appointment=request.getParameter("Appointment");
	Class.forName("com.mysql.jdbc.Driver");  


	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/epproj", "root", "Login@123");

	  
	PreparedStatement ps=con.prepareStatement(  
	"insert into patient values(?,?,?,?,?,?,?,?,?,?,?,?)");  
	  
	ps.setString(1,pid);  
	ps.setString(2,pname);  
	ps.setString(3,phno);  
	ps.setString(4,age);
	ps.setString(5,pgender);
	ps.setString(6,paddress);
	ps.setString(7,pbloodgroup);
	ps.setString(8,BP);
	ps.setString(9,Symptoms);
	ps.setString(10,DoctorID);
	ps.setString(11,Appointment);
	ps.setString(12,"None");
	int x=ps.executeUpdate();  
	if (x>0){
		response.sendRedirect("SuccessPatient.jsp");
	}
	else{
		response.sendRedirect("FailurePatient.jsp");
	}
%>