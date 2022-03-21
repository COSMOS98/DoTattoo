<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LoginForm</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		var msg = "${msg}";
		if (msg == "false") {
			alert("아이디, 또는 비밀번호를 확인해 주세요.");
		}
		$("#linkJoin").attr("href", "join.do");
	});
</script>
</head>
<body>
	<h1 align="center">로그인</h1>
	<hr/>
	<form action="loginRun.do" method="POST" align="center"><br/>
		<input type="text" placeholder="아이디" id="uId" name="uId" style="width: 250px; height: 25px;"/> <br/><br/>
		<input type="text" placeholder="비밀번호" id="uPw" name="uPw" style="width: 250px; height: 25px;"/> <br/>
		<br />
		<button type="submit" id="btnLogin" align="center">로그인</button>
		<br /><br/><br/>
		<p align="center" style="color: gray;">회원이 아니신가요? <a id="linkJoin">회원가입</a></p>
	</form>
</body>
</html>