<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>시간표</title>
<style type="text/css">
	a {
	text-decoration : none;
	}
</style>

</head>
<body>
	<h1>오후 일정</h1>
	<hr>
	<p>5시 30분까지 숨도 쉬지말고 화장실도 가지말고 잠도 자면 안되고. 브롤하기</p>
	<a href="<%=request.getContextPath()%>/viewMessage?time=4&name=human">[시간표 보기]</a><br>
	<form action="viewMessage" method="post">
		<input type="text" name="name"><br>
		<input type="text" name="time"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>