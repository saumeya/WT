<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<html>

   <head><title>Hello World</title></head>
   
   <body>
      <h2>Data from database</h2><br/>
      <%
      try{
      	String connectionURL = "jdbc:mysql://localhost:3306/users";
      	Connection connection = null;
      	Statement statement = null;
      	ResultSet rs = null;
      	Class.forName("com.mysql.jdbc.Driver").newInstance();
      	connection = DriverManager.getConnection(connectionURL,"root","root");
      	statement = connection.createStatement();
      	String QueryString = "select * from username";
      	rs = statement.executeQuery(QueryString);
      %>
      <TABLE cellpadding="15" border="1">
      	<%
      	while(rs.next()){
      	%>
      	<tr><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td></tr>
      	<%
      	      }
      	      %>
      	      <%
      	      rs.close();
      	      connection.close();
      	  }catch(Exception ex){}
      	  %>
      </TABLE>
   </body>
</html>