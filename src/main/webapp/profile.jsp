<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	101 <br>
	Navin <br>
	88 <br>
	
	<br>
	
	<%
		String url = "jdbc:sqlserver://localhost:1433;"
	            + "databaseName=webshop;"
	            + "integratedSecurity=true;encrypt=true;trustServerCertificate=true;";
	    String username = "sa";
		String password = "123456";
		String sql = "SELECT * FROM users WHERE id = 6";
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection con = DriverManager.getConnection(url, username, password);
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(sql);
		rs.next();
		
	%>
	
	ID : <%= rs.getInt(1) %> <br>
	Email: <%= rs.getString(2) %> <br>
	Password: <%= rs.getString(3) %> <br>
</body>
</html>