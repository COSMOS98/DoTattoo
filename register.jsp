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
		<h1>회원 등록</h1>
		<table>
			<tr>
				<td>
					<form action="/step5/registerProc.do" method="post" id="f">
						<input type="text" name="userid" placeholder="사용하실 ID를 입력해 주세요(수신 가능 E-mail 입력)" id="userid" style="width: 320px;">
						<input type="button" value="중복 체크" onclick="">  <br>
						<input type="password" name="userpassword" placeholder="비밀번호(영문+숫자+특수문자 조합 8~16자리 이내)" id="userpassword" style="width: 320px;"><br>
						<input type="password" name="userpasswordck" placeholder="비밀번호 확인 " id="userpasswordck" style="width: 320px;"><br>
						<input type="text" name="username" placeholder="이름을 입력해 주세요" style="width: 320px;"><br>
						<input type="text" name="userphone" placeholder="휴대폰 번호 '-'표 없이 입력해 주세요" style="width: 320px;"><br>

						<br>

						※ 개인 추가정보는 회원가입 후 등록이 가능합니다.
						
						<div>
							<input type="checkbox" >약관에 동의 합니다.(필수)
						</div>
						
						<br>
						
						<div align="center">
							<input type="submit" value="회원가입">
						</div>
					</form>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>