<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 내장객체 : response : sendRedirect() --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>response.jsp</h1>
	<%
	//다른 페이지로 이동
	//response.sendRedirect("http://www.naver.com");
	response.sendRedirect("info.html");
	%>
	<div>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur ea pariatur facilis ipsum nesciunt aliquam nam voluptates tempora maxime culpa doloribus non labore consectetur ullam excepturi cupiditate enim aliquid tempore.</p>
	</div>
</body>
</html>