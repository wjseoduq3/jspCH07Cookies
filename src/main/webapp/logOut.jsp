<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%
		// 쿠키 삭제 == 로그 아웃
		Cookie[] cookies = request.getCookies(); // 쿠키를 서버로 배열형태로 가져오기
		// 쿠키 하나씩 지우기 --> 쿠키의 유효시간을 0으로 세팅 후 다시 클라이언트에 보내는 식으로 해결
		for(int i=0;i<cookies.length;i++) {
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}	
	%>
	<br><br>
	<hr>
	<a href="cookieTest.jsp">쿠키테스트</a>
</body>
</html>