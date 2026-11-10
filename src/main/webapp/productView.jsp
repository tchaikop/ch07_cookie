<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세보기</title>
</head>
<body>

<%

 String productName = request.getParameter("productId");

	Cookie cookie = new Cookie("recentProduct",productName);
	//유저가 상세보기를 클릭한 제품의 이름을 쿠키에 저장
	response.addCookie(cookie);

%>




<h2>제품 상세 페이지</h2>
<P>제품 이름 : </P>

<a href="product.jsp">상품 목록으로 이동</a>
</body>
</html>