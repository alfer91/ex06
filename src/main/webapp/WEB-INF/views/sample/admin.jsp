<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>  <!-- security taglib -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>/sample/admin page</h1>
	
	<!-- 로그인한 사용자 정보 -->
	<p>principal : <sec:authentication property="principal"/></p>  <!-- UserDetailsService 에서 반환된 객체, CustomUser 객체 -->
	<p>MemberVO : <sec:authentication property="principal.member"/></p>
	<p>사용자이름 : <sec:authentication property="principal.member.userName"/></p>
	<p>사용자아이디 : <sec:authentication property="principal.member.userid"/></p>
	<p>사용자 권한 리스트 : <sec:authentication property="principal.member.authList"/></p>
	
	<a href="/customLogout">Logout</a>
</body>
</html>