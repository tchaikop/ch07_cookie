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
	String mpw = request.getParameter("mpw");
	
	if(mid.equals("tiger") && mpw.equals("12345")) {  // 참이면 로그인성공
		
		session.setAttribute("sid", mid);
	
	// 쿠키는 내장 객체가 아니다
	Cookie cookie1 = new Cookie("cid",mid);
	Cookie cookie2 = new Cookie("cpw",mpw);
	
	// 쿠키 유효시간 설정
	cookie1.setMaxAge(60*60*24);  //초 단위
	// 쿠키 유효시간을 설정하지 않으면 세션과 동일하다 -> 웹브라우저를 닫으면 쿠키 삭제됨
	
	// 쿠키는 만든 후에 반드시 클라이언트의 웹브라우저에 전송을 해야함
	response.addCookie(cookie1);
	response.addCookie(cookie2);// 서버에서 클라이언트 웹브라우저에 쿠키 보내기
	
	cookie1.setMaxAge(0);  // 쿠키 삭제
	response.addCookie(cookie1);
		
		
	}else {
		out.println("쿠키가 없는 거 보니 처음 이시네요");
	}
	
	
	
	%>
	
	<a href="cookie.jsp">쿠키 확인하기</a>
</body>
</html>