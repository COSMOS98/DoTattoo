<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="root" value="/" />
<script type="text/javascript">
	var message = "${msg}";
	if("${msg}" != "" && "${msg}" != null) {
		alert(message)
	}
</script>
<center>
	<c:if test="${empty board.id}">
		<form action="/codingTest/step5/writeProc.do" method="post" enctype="form-data">
			<table style="width: 650px; ">
				<tr>
					<td style="width: 80px; height:40px;" align="center">작성자</td>
					<td style="width: 570px; height:40px;">
						<input type=text value="${sessionScope.loginid }" disabled="disabled"/>
					</td>
				</tr>
				<tr>
					<td  style="width: 80px; height:40px;" align="center">제 목</td>
					<td style="width: 570px; height:40px;">
						<input type=text name='title' style="width: 300px;"/> 
					</td>
				</tr>
				<tr>
					<td colspan=2 align="right"><textarea name="content" style="width: 630px; height: 300px"></textarea></td>
				</tr>
				<tr>
					<td align='center' height=40 colspan=2>
						<input type="submit" value='글쓰기' style="width: 120px; "/>
						<input type="button" value='취소' onclick="location.href='/step5/board.do'" style="width: 120px; "/>	 
					</td>
				</tr>
			</table>
		</form>
	</c:if>
	<c:if test="${not empty board.id}">
		<form action="/codingTest/step5/modifyProc.do" method="post">
			<input type="hidden" name="no" value="${board.no}"/>
			<table style="width: 650px; ">
				<tr>
				<td>
					번호 <input type=text value="${board.no}" disabled="disabled"/>
				</td>
				</tr>
				<tr>
					<td style="width: 80px; height:40px;" align="right">작성자</td>
					<td style="width: 570px; height:40px;">
						<input type="text" name="id" value="${board.id}" disabled="disabled"/>
						작성일<input type=text value="${board.writedate}" disabled="disabled"/> 
					</td>
				</tr>
				<tr>
					<td  style="width: 80px; height:40px;" align="right">제 목</td>
					<td style="width: 570px; height:40px;">
						<input type=text name='title' style="width: 600px;" width="600px;" value="${board.title}"/> 
					</td>
				</tr>
				<tr>
					<td colspan=2 align="right"><textarea name="content" style="width: 630px; height: 300px">${board.content}</textarea></td>
				</tr>
				<tr>
					<td align='center' height=40 colspan=2>
						<input type="submit" value='수정' style="width: 120px; "/>
						<input type="button" value='취소' onclick="location.href='/step5/board.do'" style="width: 120px; "/>	 
					</td>
				</tr>
			</table>
		</form>
	</c:if>
</center>