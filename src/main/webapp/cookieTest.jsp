<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키테스트</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); // 쿠키를 서버로 배열형태로 가져오기
		
		if(cookies != null) {
		
			for(int i=0;i<cookies.length;i++) {					
				out.println("쿠키의 이름: " + cookies[i].getName() + "<br>");
				out.println("쿠키의 값: " + cookies[i].getValue() + "<br>");	
			}
		} else {
			out.println("현재 로그아웃 상태입니다.");	
		}	
	%>
</body>
</html>