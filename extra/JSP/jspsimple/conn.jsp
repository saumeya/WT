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
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/Emp","root","ccoew");
		if(!connection.isClosed())
	%>
		<font size="+3" color="green"></b>
	<%
		out.println("Successfully connected to"+"MySQL server using TCP/IP....");
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
		</font>
</body>
</html>