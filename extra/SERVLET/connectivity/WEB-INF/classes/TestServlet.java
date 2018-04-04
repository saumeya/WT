import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class TestServlet extends HttpServlet
{
protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
PrintWriter pw=res.getWriter();
res.setContentType("text/html");
String tb="student";
pw.println("Connection");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","ccoew");
	Statement st=con.createStatement();
	pw.println("Established");
	ResultSet rs=st.executeQuery("select * from info");
	String name1=req.getParameter("name");
	String pass1=req.getParameter("pass");
	pw.println(name1);
	pw.println(pass1);
	while(rs.next())
	{
		pw.println(rs.getString(2));
		if(name1.equals(rs.getString(2)))
		{
			res.sendRedirect("success.html");
		}
		else
		{
			pw.println("no match");
		}
	}
	rs.close();
	pw.close();
}
catch(Exception e)
{
	pw.println("Error");
}
}
}
