<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); // 쿠키를 서버로 배열형태로 가져오기
		
		for(int i=0;i<cookies.length;i++) {					
			out.println("쿠키의 이름: " + cookies[i].getName() + "<br>");
			out.println("쿠키의 값: " + cookies[i].getValue() + "<br>");		
		}	
	%>
	<h3>>로그인 성공</h3>
	<hr>
	로그인 성공하셨습니다.<br><br>
	<a href="cookieTest.jsp">쿠키테스트</a>
	<a href="logOut.jsp">로그아웃</a>	
</body>
</html>