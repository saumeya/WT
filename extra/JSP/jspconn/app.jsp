<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<html>
<body>
	<h1>Connection Status</h1>
	<%
	try
	{
		String connectionURL="jdbc:mysql://localhost:3306/Emp";
		Connection connection=null;
		Statement stmt=null;
		ResultSet rs=null;
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/Emp","root","ccoew");
		stmt=connection.createStatement();
		String query="select * from info";
		rs=stmt.executeQuery(query);
		if(!connection.isClosed())
	%>
		<table border ="1">
	<%
		while(rs.next())
		{%>
			<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			</tr>	
	<%	}%>
	<%
		rs.close();
		stmt.close();
		connection.close();
	}
	catch(Exception ex)
	{
	%>
		</font>
		<font size="+3" color="red"></b>
	<%
		out.println("unable to connect to database");
	}
	%>
	</table>
		</font>
</body>
</html>