<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//attribute2.jsp에서 넘긴 값 가져오기
	String email = request.getParameter("email");
 	String home = request.getParameter("home");
 	String tel = request.getParameter("tel");
 	
	//가져온 값을 session 영역에 담기
	//session.setAttribute("vo",vo);
	//HttpSession session = req.getSession();
	
	session.setAttribute("email", email);
	session.setAttribute("home", home);
	session.setAttribute("tel", tel);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%=request.getAttribute("name") %> 님 반갑습니다.</h1>
	<h2><a href="attribute4.jsp">확인하러 가기</a></h2>
</body>
</html>