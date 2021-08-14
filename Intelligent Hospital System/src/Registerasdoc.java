import java.io.*;  
import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;  
import javax.servlet.http.*;


  
public class Registerasdoc extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
          
String f=request.getParameter("fname");  
String n=request.getParameter("mnumber");  
String s=request.getParameter("specialization");
String i=request.getParameter("dID");
String p=request.getParameter("pass");
String k=request.getParameter("psw-Conform");
String u="d"+i;
DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
LocalDateTime now = LocalDateTime.now();  
String q=dtf.format(now);

if (p.equals(k))
{
try{  
Class.forName("com.mysql.jdbc.Driver");  


Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/epproj", "root", "Login@123");

  
PreparedStatement ps=con.prepareStatement(  
"insert into doctor values(?,?,?,?,?,?,?)");  
  
ps.setString(1,f);  
ps.setString(2,u);  
ps.setString(3,n);  
ps.setString(4,s);
ps.setString(5,i);
ps.setString(6,p);
ps.setString(7,q);
          
int x=ps.executeUpdate();  
if(x>0) 
{
out.print("You are successfully registered...");
response.sendRedirect("login.html");
}
else {
	out.println("Error in jdbc operation:"+x);
}
}
catch (Exception e2) {System.out.println(e2);}  
}             
else {
	out.println("Your comfirmation password does not match the original password");
	out.println("please go back and try again");
}
out.close();
}
}