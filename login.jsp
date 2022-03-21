<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인 페이지</title>
</head>
<body>
<script>
	var message = "${msg}";
	if("${msg}" != "" && "${msg}" != null) {
		alert(message)
	}
</script>
	<div align="center">
		<h1>로그인 페이지</h1>
			<form action="/step5/loginProc.do" method="post" id="f">
				<table style="">
					<tr>
						<td>
							<input type="text" name="userid" placeholder="아이디" id="userid">
						</td>
					</tr>
					<tr>
						<td>
							<input type="userpassword" name="userpassword" placeholder="비밀번호" id="userpassword">
						</td>
					</tr>
					</table>
					
					<br />
					
					<table>
					<tr>
						<td>
							<input type="submit" value="로그인">
						</td>
					</tr>
					</table>

					<table>
					<tr>
						<td>
							회원이 아니신가요? <a href="/step5/register.do" target="_blank">회원가입</a>
						</td>
					</tr>
				</table>
			</form>
	</div>
</body>
</html>