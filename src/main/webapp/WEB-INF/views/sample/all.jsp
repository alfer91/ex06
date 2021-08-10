<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>/sample/all page</h1>
	
	<!-- 표현식을 이용하는 동적 화면 구성 -->
	<sec:authorize access="isAnonymous()">  
		<a href="/customLogin">로그인</a>
	</sec:authorize>
	
	<sec:authorize access="isAuthenticated()">
		<a href="/customLogout">로그아웃</a>
	</sec:authorize>
	
	<!-- 표현식
		 hansRole([role]), hasAuthority([authority]) 해당 권한
		 hasAnyRole([role, role2]), hasAnyAuthority([authority]) 여러 권한들 중 하나라도 해당
		 principal 현재 사용자 정보
		 permitAll 모든 사용자 허용
		 denyAll 모든 사용자 거부
		 isAnonymous() 익명 사용자
		 isAuthenticated() 인증된 사용자
		 isFullyAuthenticated() Remember-me로 인증된 것이 아닌 인증된 사용자
	 -->
</body>
</html>