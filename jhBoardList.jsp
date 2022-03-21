<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BoardList</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		
		$("#select").on("change", function() {
			var searchType = $(this).val();
			$("#frmSearch > input[name=searchType]").val(searchType);
			console.log(searchType);
		});
		// 검색
		$("#btnSearch").click(function() {
			var searchType = $("#searchType").val();
			var keyword = $("#txtSearch").val().trim();
			$("#frmSearch > input[name=keyword]").val(keyword);
			if ($("#txtSearch").val().trim() == "") {
				alert("검색어를 입력해 주세요.");
				return;
			}
			var text = $("#keyword").val();			
			console.log(searchType);
			console.log(text);
			$("#frmSearch").submit();
		});
	});
	
	function fncGet(idx){
		jQuery("#bNo").val(idx);
		jQuery("#form").attr("action", "/jh/boardContent.do");
		jQuery("#form").attr("method", "POST");
		jQuery("#form").submit();
	}
</script>
</head>
<body>

	<h1 align="center">게시판</h1>
	<hr/>
	<div>
	<h4 align="center">사용자 : ${uName } <button type="button"id="btnLogout" onclick="location.href='logoutRun.do'">로그아웃</button></h4>
	
	</div>
	
	<form id="frmSearch" action="boardList.do" method="get">
	<input type="hidden" id="searchType" name="searchType" value="${pagingDto.searchType }"/>
	<input type="hidden" id="keyword" name="keyword" value="${pagingDto.keyword }"/>
	</form>
	
	<form name="form" id="form">
		<input type="hidden" name="bNo" id="bNo"/>
	<div align="center">
		검색조건
		<select id="select">
			<option class="searchType" value="">전체</option>
			<option class="searchType" value="n"
				<c:choose>
					<c:when test="${pagingDto.searchType == 'n' }">
						selected
					</c:when>
				</c:choose>
			>번호</option>
			<option class="searchType" value="u"
				<c:choose>
					<c:when test="${pagingDto.searchType == 'u' }">
						selected
					</c:when>
				</c:choose>
			>작성자</option>
			<option class="searchType" value="t"
				<c:choose>
					<c:when test="${pagingDto.searchType == 't' }">
						selected
					</c:when>
				</c:choose>
			>제목</option>
			<option class="searchType" value="c"
				<c:choose>
					<c:when test="${pagingDto.searchType == 'c' }">
						selected
					</c:when>
				</c:choose>
			>내용</option>
		</select>
		<input type="text" id="txtSearch" value="${pagingDto.keyword }"/>
		<button type="button" id="btnSearch" name="btnSearch">검색</button>
	</div>
	<br/>
	<div align="center">
	<table border="1" style="border-collapse: collapse; width: 500px;">
		<thead>
			<tr style="background-color: lightgray;">
				<th>번호</th>				
				<th>작성자</th>
				<th>제목</th>
				<th>내용</th>
				<th>등록일</th>
			</tr>
		</thead>
		<c:set var="idx" value="${fn:length(list)}"/>
		<tbody>
			<c:forEach var="list" items="${list}">
			<tr onclick="fncGet('${list.bNo}');">
<%-- 				<td><a href="boardContent.do?bNo=${list.bNo}">${list.bTitle}</a></td> --%>
				<td align="center">${list.bNo}</td>
				<td align="center">${list.bName}</td>
				<td align="center">${list.bTitle}</td>
				<td align="center">${list.bContent}</td>
				<td align="center">${list.bDate}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<br/>
	<button type="button" onclick="location.href='boardContent.do'">등록</button>
	</div>
	</form>
</body>
</html>