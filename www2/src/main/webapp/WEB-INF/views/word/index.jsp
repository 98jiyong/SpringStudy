<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단어 검색</title>
</head>
<body>
	<h2>Jiyong's 과일가게</h2>
	<hr>
	<h3>과일 목록 :
		<c:forEach items="${word}" var="word">
				${word.key} &nbsp;
		</c:forEach>
	</h3>
	<form action="result" method="post">
		<span>과일 검색 : </span>
		<input type="text" name="fruit">
		<input type="submit" value="검색">
	</form>
</body>
</html>