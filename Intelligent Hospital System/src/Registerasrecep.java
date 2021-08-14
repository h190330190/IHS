import java.io.*;  
import java.sql.*;  
import javax.servlet.ServletException;  
import javax.servlet.http.*;  
import java.time.format.DateTimeFormatter;  
import java.time.LocalDateTime;
  
public class Registerasrecep extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
          
String f=request.getParameter("fname");    
String n=request.getParameter("mnumber");  
String i=request.getParameter("heID");
String p=request.getParameter("pass");
String k=request.getParameter("psw-Conform");
String u="r"+i;
DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
LocalDateTime now = LocalDateTime.now();  
String q=dtf.format(now);


if (p.equals(k))
{          
try{  
Class.forName("com.mysql.jdbc.Driver");  


Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/epproj", "root", "Login@123");

  
PreparedStatement ps=con.prepareStatement(  
"insert into receptionist values(?,?,?,?,?,?)");  
  
ps.setString(1,f);  
ps.setString(2,u);  
ps.setString(3,n);  
ps.setString(4,i);
ps.setString(5,p);
ps.setString(6,q);
          
int x=ps.executeUpdate();  
if(x>0) 
{
out.print("You are successfully registered...");  
response.sendRedirect("login.html");
} 
else {
	out.println("Error in jdbc operation:"+x);
}
}catch (Exception e2) {System.out.println(e2);}
}
else {
	out.println("Your comfirmation password does not match the original password");
	out.println("please go back and try again");
}
          
out.close();  
}  
  
}