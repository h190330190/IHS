import java.io.*;  
import java.sql.*;  
import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class About extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
          
String f=request.getParameter("name");  
String u=request.getParameter("address");  
String n=request.getParameter("number");  
String s=request.getParameter("message");

try{  
Class.forName("com.mysql.jdbc.Driver");  


Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/epproj", "root", "Login@123");

  
PreparedStatement ps=con.prepareStatement(  
"insert into contact values(?,?,?,?)");  
  
ps.setString(1,f);  
ps.setString(2,u);  
ps.setString(3,n);  
ps.setString(4,s);
          
int x=ps.executeUpdate();  
if(x>0) 
{
out.print("You are successfully registered...");
response.sendRedirect("welcome.html");
}
else {
	out.println("Error in jdbc operation:"+x);
}
}
catch (Exception e2) {System.out.println(e2);}             
out.close();
}
}