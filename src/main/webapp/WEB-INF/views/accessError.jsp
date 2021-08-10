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
	<h1>Access Dined Page</h1>
	
	<h2><c:out value="${SPRING_SECURITY_403_EXCEPTION.getMessage() }"/></h2> <!-- Access Denied : 403 error  -->
	
	<h2><c:out value="${msg }"/></h2>
</body>
</html>