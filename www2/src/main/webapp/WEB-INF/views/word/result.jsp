<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>단어 결과</h1>
<hr>

<p>${eng}의 뜻은 ${kor} </p>

<form action="word" method="get">
	<input type="submit" value="메인으로 돌아가기">
</form>

</body>
</html>