<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>코딩 테스트3 입력 폼</title>
<script type="text/javascript" src="/static/js/jquery-1.11.1.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	
function fncClick(no){
	
	jQuery("#no").val(no);
// 	jQuery("#userName").val(userName);
	
	jQuery("#form").attr("action", "/step4/detail.do");
	jQuery("#form").attr("method", "POST");
	jQuery("#form").submit();
}

function insertForm() {
	
	jQuery("#form").attr("action", "/step4/insert.do");
	jQuery("#form").attr("method", "POST");
	jQuery("#form").submit();
	
}
</script>


</head>
<body>

	<h2>CODING TEST4</h2>
	<h3>검색 기능을 완성 하세요.</h3>

	<form id="form" name="form">
		<input type="hidden" name="no" id="no" />
<!-- 		<input type="hidden" name="userName" id="userName" /> -->
	
		<div>
			검색 분류 : <select name="searchType" id="searchType">
				<option value="">전체</option>
				<option value="01">제목</option>
				<option value="02">내용</option>
			</select> 검색 단어 : <input type="text" name="searchText" />
			<button type="button">검색</button>
		</div>
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>제목</th>
					<th>내용</th>
					<th>작성날짜</th>
				</tr>
			</thead>
<%-- 			<c:set var="no" value="${fn:length(list)}" /> --%>
			<tbody>
				<c:forEach var="list" items="${list}" varStatus="i">
					<tr onclick="fncClick('${list.no}')">
						<td><c:out value="${list.no}" /></td>
						<td><c:out value="${list.name}" /></td>
						<td><c:out value="${list.title}" /></td>
						<td><c:out value="${list.content}" /></td>
						<td><c:out value="${list.date}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<a href="/step4/insert.do" class="">등록</a>
	</form>

</body>
</html>