import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
public class ServletDb extends HttpServlet{
	
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		res.setContentType("text/html");
		PrintWriter pw=res.getWriter();
		try {
			
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/users","root","root");  
			//here users is database name, root is username and password 
			pw.println("<html><body>");
			pw.println("Connection established");
			
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select * from username");  
			pw.println("<table border = 1>");
			while(rs.next())  {
//			System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
				pw.println("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td></tr>" );
			}
			pw.println("</table>");
				con.close();  
		}catch(Exception e) {
			e.printStackTrace();
		}
		pw.println("</body></html>");
		pw.close();
	}

}
