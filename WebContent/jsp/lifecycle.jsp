<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- html 주석 가능 -->
    <%-- jsp 주석 가능 --%>
    <!-- 잘 안씀 -->
    <%!
    	//자바 주석 가능
    	//클랙스에서 멤버 변수 영역과 동일
    public void jspInit() { //init()
    	System.out.println("jspinit()");
    }
    
    public void jspDestroy() {
    	System.out.println("jspDestroy()");
    }

    %> 
    <!-- 많이 씀 -->
    <%
    	//클래스에서 지역변수 영역과 동일
    	System.out.println("jspService2()"); //service()
    
    	int i=3;
    %>
    
    <%-- 변수 화면 출력 --%>
    <%=i%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>