<%@ page language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-2022-KR"
%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<div>
		<h2>$)CAw?x 0K;v =C=:E[</h2>
		<table border=1>
			<tr>
				<th>ID</th>
				<th>Password</th>
				<th>Name</th>
				<th>Phone</th>
				<th>Address</th>
				<th>Menu</th>
			</tr>
			<%
			Class.forName("org.mariadb.jdbc.Driver");
			String url = "jdbc:mariadb://localhost:3306/my_db";
			String user = "user";
			String pw = "user1234";
			try (Connection con = DriverManager.getConnection(url, user, pw);
					Statement stmt = con.createStatement();
					ResultSet rs = stmt.executeQuery("select * from member");) {
				while (rs.next()) {
					out.print("<tr><td>" + rs.getInt("id") + "</td>");
					out.print("<td>" + rs.getString("pass" + "</td>"));
					out.print("<td>" + rs.getString("name" + "</td>"));
					out.print("<td>" + rs.getString("phone" + "</td>"));
					out.print("<td>" + rs.getString("address" + "</td>"));
					String update = String.format("<a href='11-6.jsp?id=%s'>$)C<vA$</a>",
					rs.getInt("id"));
					out.print("<td>" + update);
					String delete =String.format("<a href='11-6.jsp?id=%s'>$)C;hA&</a>",
							rs.getInt("id"));
					out.print(delete + "</td></tr>");
				}
			} catch (Exception e) {
				out.println("MariaDB $)C?,0a =GFP");
				e.printStackTrace();
			}
			%>
		</table>
<h3><a href="11-3.html">$)C79DZ5e @T7B</a></h3>
	</div>

</body>
</html>