<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α��� ������</title>
</head>
<body>
<script>
	var message = "${msg}";
	if("${msg}" != "" && "${msg}" != null) {
		alert(message)
	}
</script>
	<div align="center">
		<h1>�α��� ������</h1>
			<form action="/step5/loginProc.do" method="post" id="f">
				<table style="">
					<tr>
						<td>
							<input type="text" name="userid" placeholder="���̵�" id="userid">
						</td>
					</tr>
					<tr>
						<td>
							<input type="userpassword" name="userpassword" placeholder="��й�ȣ" id="userpassword">
						</td>
					</tr>
					</table>
					
					<br />
					
					<table>
					<tr>
						<td>
							<input type="submit" value="�α���">
						</td>
					</tr>
					</table>

					<table>
					<tr>
						<td>
							ȸ���� �ƴϽŰ���? <a href="/step5/register.do" target="_blank">ȸ������</a>
						</td>
					</tr>
				</table>
			</form>
	</div>
</body>
</html>