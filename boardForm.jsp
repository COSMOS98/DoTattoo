<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>코딩 테스트3 입력 폼</title>
<script type="text/javascript" src="/static/js/jquery-1.11.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	var message = "${msg}";
	if("${msg}" != "" && "${msg}" != null) {
		alert(message)
	}
	$("document").ready(function (){
		$("div.title").css("cursor", "pointer").click(function(){
			let no = $(this).attr("id");
			$("#writeNo").val(no);
			$("#f").attr("action", "/step5/viewProc.do");
			$("#f").submit();
		});
	});
</script>
</head>
<body>

	<div align="center">
	<h3>로그인 아이디 : ${sessionScope.loginid}</h3>
	<a href="/step5/logout.do">로그아웃</a>
	<h2>게시판</h2>
	</div>
	
		<form action="boardProc" method="post">
		<table align="center">
			<tr>
				<td>
					<select name="select">
						<option value="">전체</option>
						<option value="title">제목</option>
						<option value="id">작성자</option>
					</select>
					<input type=text name='search'/>
					<input type=button name='searchBtn' value='검색' style="width: 80px; "/>
				</td>
			</tr>
		</table>
		</form>

		<form id="f" method="get">
		<input type="hidden" id="writeNo" name="writeNo"/>
			<table align="center" style="width: 650px; ">
				<thead>
					<tr>
						<td style="width: 40px; height:20px;" align="center">번호</td>
						<td style="width: 330px; height:20px;" align="center">제목</td>
						<td style="width: 80px; height:20px;" align="center">작성자</td>
						<td style="width: 120px; height:20px;" align="center">작성일</td>
					</tr>
				</thead>
				<tr>
					<td style="width: 40px; height:20px;" align="center"><hr/></td>
					<td style="width: 330px; height:20px;" align="center"><hr/></td>
					<td style="width: 80px; height:20px;" align="center"><hr/></td>
					<td style="width: 120px; height:20px;" align="center"><hr/></td>
				</tr>
<%-- 				<c:set var="no" value="${fn:length(list)}"/> --%>
				<tbody>
					<c:forEach var="list" items="${list}" varStatus="i">
						<tr>
							<td style="width: 40px; height:40px;" align="center"><c:out value="${no + i.index}"/></td>
							<td style="width: 330px; height:40px;" align="center"><div id="${list.no}" class="title"><c:out value="${list.title}"/></div></td>
							<td style="width: 80px; height:40px;" align="center"><c:out value="${list.id}"/></td>
							<td style="width: 120px; height:40px;" align="center"><c:out value="${list.writdate}"/></td>
						</tr>
					</c:forEach>
				</tbody>
				</table>

			<table align="center">
				<tr>
					<td><input type="button" value='글목록' style="width: 100px; "
			 		onclick="location.href='/step5/board.do'"/></td>
				
					<td><input type="button" value='글쓰기' style="width: 100px; "
			 		onclick="location.href='/step5/write.do'"/></td>
			 		
			 		<td><input type="button" value='글 수정' style="width: 100px; "
			 		onclick="location.href='/step5/update.do'"/></td>
			 		
			 		<td><input type="button" value='글 삭제' style="width: 100px; "
			 		onclick="location.href='/step5/delete.do'"/></td>
				</tr>
			</table>
		</form>
		
	${page}

</body>
</html>