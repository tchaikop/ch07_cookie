<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팝업 닫기</title>
</head>
<body>
<%
	String closeToday = request.getParameter("onlyToday");

	if(closeToday != null) {
		Cookie cookie = new Cookie("hidepopup","yes");
		
		//24시간 동안 쿠키가 유지되도록 설정한 보내기
		cookie.setMaxAge(60*60*24);
		
		response.addCookie(cookie);
		
	}
	
	response.sendRedirect("popup.jsp");

%>


</body>
</html>