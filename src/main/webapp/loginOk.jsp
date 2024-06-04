<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String mid = request.getParameter("id");
		String mpw = request.getParameter("pw");
	
		if((mid.equals("tiger")) && (mpw.equals("12345"))) {  //쿠키는 내장객체 아님
			Cookie cookies1 = new Cookie("cookieId", mid);
			Cookie cookies2 = new Cookie("cookiePw", mpw);
			
			response.addCookie(cookies1); // 클라이언트에 쿠키 보내기
			response.addCookie(cookies2);
			
			response.sendRedirect("loginSuccess.jsp"); 
		} else {
			response.sendRedirect("loginFail.jsp");
		}	
	%>
	<br>
	<a href="loginCheck.jsp">로그인 확인 페이지로 이동</a>
</body>
</html>