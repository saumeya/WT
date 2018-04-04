import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
 
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    	  PrintWriter pw= response.getWriter();
        // read form fields
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        response.setContentType("text/html");
        System.out.println("username: " + username);
        System.out.println("password: " + password);
	try {
			
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/users","root","root");  
			//here users is database name, root is username and password 
			pw.println("<html><body>");
			pw.println("Connection established");
			
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select * from username");  
			while(rs.next())  {
				if(rs.getString(1).equals(username)&&rs.getString(2).equals(password)) {
				
//			System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
				pw.println("<h2>Welcome</h2>" );
				break;
			}
			}
				con.close();  
		}catch(Exception e) {
			e.printStackTrace();
		}
        // do some processing here...
         
        // get response writer
      
         
        // build HTML code
       
        String htmlRespone = "<h2>Your username is: " + username + "<br/>";      
        htmlRespone += "Your password is: " + password + "</h2>";    
       htmlRespone += "</body></html>";
         
        // return response
        pw.println(htmlRespone);
        pw.close();
         
    }
 
}