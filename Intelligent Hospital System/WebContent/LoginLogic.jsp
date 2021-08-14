<%@ page import="java.sql.*,java.time.*,java.time.format.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String type=request.getParameter("Segment");
	String id=request.getParameter("UserID");
	String password=request.getParameter("psw");
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
	LocalDateTime now = LocalDateTime.now();  
	String q=dtf.format(now);
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/epproj","root","Login@123");
	int c=0;
	int p=0;
	while (c==0){
		PreparedStatement smt=con.prepareStatement("update doctor set LastLogin=? where uname=? and pass=?");
		smt.setString(1,q);
		smt.setString(2,id);
		smt.setString(3,password);
		int i=smt.executeUpdate();
		p=i;
		if (i>0){
			session.setAttribute("userID", id);
			session.setAttribute("type",type);
			session.setAttribute("pass", password);
			response.sendRedirect("welcomedoc.jsp");
			c=1;
			break;
		}
		PreparedStatement smt1=con.prepareStatement("update nurse set LastLogin=? where uname=? and pass=?");
		smt1.setString(1,q);
		smt1.setString(2,id);
		smt1.setString(3,password);
		i=smt1.executeUpdate();
		p=i;
		if (i>0){
			session.setAttribute("userID", id);
			session.setAttribute("type",type);
			session.setAttribute("pass", password);
			response.sendRedirect("welcomenurse.jsp");
			c=1;
			break;
		}
		PreparedStatement smt2=con.prepareStatement("update receptionist set LastLogin=? where uname=? and pass=?");
		smt2.setString(1,q);
		smt2.setString(2,id);
		smt2.setString(3,password);
		i=smt2.executeUpdate();
		p=i;
		if (i>0){
			session.setAttribute("userID", id);
			session.setAttribute("type",type);
			session.setAttribute("pass", password);
			response.sendRedirect("welcomerecep.jsp");
			c=1;
			break;
		}
		c=1;
		
	}
	if(p==0){
		response.sendRedirect("loginfailure.html");
	}
%>