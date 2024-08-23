<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>cookieResult</title>
</head>
<body>
	<h3>쿠키 확인</h3>
	<%
		// request는 기본적으로 쿠키를 가지고 요청한다.
		Cookie[] cookies = request.getCookies();
		
		for(Cookie cookie : cookies) {
	%>
		<p>
			쿠키명 : <%= cookie.getName() %><br>
			쿠키값 : <%= cookie.getValue() %><br>
		</p>
	<%	
		}
	%>
</body>
</html>