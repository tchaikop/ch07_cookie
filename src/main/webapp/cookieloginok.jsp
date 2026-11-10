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
	
	String mid = request.getParameter("mid");
	// String mpw = request.getParameter("mpw");
	
	if(mid.equals("tiger") ) {  // 참이면 로그인성공
		
		session.setAttribute("sid", mid);
	
	
	Cookie cookie1 = new Cookie("cid",mid);
	
	response.addCookie(cookie1);
	
	
		
		
	}else {
		out.println("쿠키가 없는 거 보니 처음 이시네요");
	}
	
	
	
	%>
	
	<a href="cookie.jsp">쿠키 확인하기</a>
</body>
</html>