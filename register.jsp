<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	var message = "${msg}";
	if("${msg}" != "" && "${msg}" != null) {
		alert(message)
	}
</script>
	<div align="center">
		<h1>ȸ�� ���</h1>
		<table>
			<tr>
				<td>
					<form action="/step5/registerProc.do" method="post" id="f">
						<input type="text" name="userid" placeholder="����Ͻ� ID�� �Է��� �ּ���(���� ���� E-mail �Է�)" id="userid" style="width: 320px;">
						<input type="button" value="�ߺ� üũ" onclick="">  <br>
						<input type="password" name="userpassword" placeholder="��й�ȣ(����+����+Ư������ ���� 8~16�ڸ� �̳�)" id="userpassword" style="width: 320px;"><br>
						<input type="password" name="userpasswordck" placeholder="��й�ȣ Ȯ�� " id="userpasswordck" style="width: 320px;"><br>
						<input type="text" name="username" placeholder="�̸��� �Է��� �ּ���" style="width: 320px;"><br>
						<input type="text" name="userphone" placeholder="�޴��� ��ȣ '-'ǥ ���� �Է��� �ּ���" style="width: 320px;"><br>

						<br>

						�� ���� �߰������� ȸ������ �� ����� �����մϴ�.
						
						<div>
							<input type="checkbox" >����� ���� �մϴ�.(�ʼ�)
						</div>
						
						<br>
						
						<div align="center">
							<input type="submit" value="ȸ������">
						</div>
					</form>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>