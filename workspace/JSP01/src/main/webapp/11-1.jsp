<%@ page language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ page import="java.sql.*"%>  <!--SQL 구문 사용-->

<html>
<head>
<meta charset="UTF-8">
<title>MariaDB 연결</title>
</head>

<body>
	<%
	Class.forName("org.mariadb.jdbc.Driver"); //커넥터 로드
	String url = "jdbc:mariadb://localhost:3307/my_db"; //서버 주소와 접속방법
	String user = "user";
	String pw = "user1234";
	try (Connection con = DriverManager.getConnection(url, user, pw)) { //DB서버와의 접속 정보 저장
		out.println("연결 성공");
	} catch (Exception e) {
		out.println("연결 실패");
		e.printStackTrace();
	}
	
	%>
</body>
</html>