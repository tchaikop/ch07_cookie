<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 확인</title>
</head>
<body>
<%
	// 저장된 쿠키 확인하기
	
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null) { // 내 서버에 처은 온 웹브라우저
		for(int i=0;i<cookies.length;i++) {
			out.println(cookies[i].getName()+"<br>");
			out.println(cookies[i].getValue());
			out.println("==========");}
		}else {
			out.println("처음 오셨네요, 쿠키가 없네요");
		}
		
	


%>
</body>
</html>