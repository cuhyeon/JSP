<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	/*
	request 객체
	Tomcat이 가지고 있는 내장객체(웹 프로젝트가 톰캣 서버 설정을 가지고 있어야 한다)
	[*.JSP] 
			
	request 객체(요청객체)
	1. 요청 페이지당 한개의 request 객체 자동 생성
	2. 클라이언트의 정보를 read
	3. 클라이언트 정보 (입력값, 기본정보 : 브라우져 버전, IP)
	requset객체는 클라이언트에서 서버로 요청할때 생성되는
	HttpServletRequest 타입의 객체가 생성되고 그 주소를 request 변수가 참조
	
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	id : <%= id  %><br>
	접속한 클라이언트 IP : <%= request.getRemoteAddr() %><br>
	서버(요청한 방식 : 인코딩 방식) : <%= request.getCharacterEncoding() %><br>
	전송방식 : <%= request.getMethod() %><br>
	포트 : <%= request.getServerPort() %>
	context root(가상 디렉토리, 홈 디렉토리) : <%= request.getContextPath() %>
	<hr>
	<!-- 
	가상경로와 물리적 경로가 다르다.
	 -->
</body>
</html>