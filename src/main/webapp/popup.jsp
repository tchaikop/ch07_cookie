<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
boolean	showPopup = true;  // 팝업이 보여지는 상태를 저장

Cookie[] cookies = request.getCookies();

if(cookies != null){
	for(Cookie cookie:cookies){
		if(cookie.getName().equals("hidePopup")){
			showPopup = false;
			
			//showpopup 값이 true란 체크하지 않고 닫기를 누른 웹브라우저 이거나 처음 방문한 웹부라우저
			break;
		}
	}
}


%>

<%


%>




<div style="border:2px solid black;padding:30px;width300px;">

<h2>특별 할인
<p>전 상품 20%</h2>
겨울이다
<form action="popupClose.jsp">
<input type="checkbox" name="onlyToday" value="yes">
오늘 하루보지 않기<br><br>
<input type="submit" value="닫기">
</form>

</div>
</body>
</html>