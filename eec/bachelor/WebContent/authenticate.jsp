<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, models.MySQL"%>
<%
	MySQL mysql = new MySQL();
	String query = "SELECT * FROM _User WHERE Email = ? AND Password = ? LIMIT 1";
	
	Connection con = mysql.getConnection();
	
	if (!con.isClosed()) {
		try {
			PreparedStatement statement = con.prepareStatement(query);
			statement.setString(1, request.getParameter("username"));
			statement.setString(2, request.getParameter("password"));
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				out.println("<user>");
				out.println("<userid>" + rs.getInt(1) + "</userid>");
				out.println("<usertype>" + rs.getInt(4) + "</usertype>");
				out.println("</user>");
			}
			else {
				out.println("<user>");
				out.println("<userid>0</userid>");
				out.println("<usertype>0</usertype>");
				out.println("</user>");
			}
			statement.close();
			rs.close();
		} 
		catch (SQLException e) {
			e.printStackTrace();
		} 
		finally {
			con.close();
		}
	}
%>
