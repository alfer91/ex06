<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>Custom Login Page</h1>
	<h2><c:out value="${error }"/></h2>
	<h2><c:out value="${logout }"/></h2>
	
	<form method="post" action="/login">  <!-- /login, post 방식 -->
		<div>
			<input type="text" name="username" value="admin">
		</div>
		<div>
			<input type="password" name="password" value="admin">
		</div>
		<div>
			<input type="checkbox" name="remember-me"> Remember Me  <!-- 로그인 시 자동으로 remember-me 쿠키 생성, Request Header 에서 cookie 정보 전송됨 -->
		</div>
		<div>
			<input type="submit">
		</div>
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">  
		<!-- Spring Security 에서 POST 방식을 이용하는 경우 기본적으로 CSRF 토큰 이용, CSRF 토큰 : 사이트간 위조 방지 목적으로 사용 -->
		<!-- CSRF 공격 : <from>, <img> 태그를 통해 사이트간 요청 위조 가능 -> 요청에 대한 출처를 검사 : referer 헤더를 체크 -->	
		<!-- CSRF 토큰 동작 방식 : 서버에서 브라우저에 데이터 전송 시 CSRF 토큰 같이 전송, 
		(사용자가 POST 방식의 작업)브라우저에서 전송된 CSRF 토큰의 값과 서버가 보관하고 있는 토큰의 값을 비교 -->
	</form>
</body>
</html>