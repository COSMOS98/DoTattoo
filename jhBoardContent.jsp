<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BoardContent</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
	var content = $("#bContent").val();
	$("#bContent").val($.trim(content));
	$("#btnInsert").click(function(e) {
		$("#frmContent").attr("action", "insertContentRun.do");
		$("#frmContent").submit();
	});
	$("#btnUpdate").click(function(e) {
		if (confirm("수정하시겠습니까?") == true){
		$("#frmContent").attr("action", "updateContentRun.do");
		$("#frmContent").submit();
		} else {
		     return false;
		}
	});
	$("#btnDelete").click(function(e) {
		if (confirm("삭제하시겠습니까?") == true){
			$("#frmContent").attr("action", "deleteContentRun.do");
			$("#frmContent").submit();
		} else {
		     return false;
		}
	});
	
	$("#frmContent").submit(function(e) {
		if ($("#bTitle").val() == "") {
			alert("제목을 입력해 주세요");
			return false;
		}
		if ($("#bContent").val() == "") {
			alert("내용을 입력해 주세요");
			return false;
		}
	});
});
	
</script>
</head>
<body>
	<c:choose>
		<c:when test="${boardVo.bDate == null}">
			<h1 align="center">게시판 등록</h1>
		</c:when>
		<c:otherwise>
			<h1 align="center">게시판 수정</h1>
		</c:otherwise>
	</c:choose>
	<hr/>

	
	<form id="frmContent"
	<c:choose>
		<c:when test="${boardVo.bDate == null}">
			action="insertContentRun.do"
		</c:when>
		<c:otherwise>
			action="updateContentRun.do"
		</c:otherwise>
	</c:choose>
	method="POST" align="center"><br/>
		
			<c:choose>
				<c:when test="${boardVo.bDate != null}">
					<input type="hidden" id="bNo" name="bNo" value="${boardVo.bNo}"/>
				</c:when>
			</c:choose>
		<input type="hidden" id="bName" name="bName"
			<c:choose>
				<c:when test="${boardVo.bDate != null}">
					value="${boardVo.bName}"
				</c:when>
				<c:otherwise>
					value="${uName}"
				</c:otherwise>
			</c:choose>/>
		<div align="center">
			<table border="1" style="border-collapse: collapse; width: 480px; height: 170px">
				<tr>
					<th style="background-color: lightgray;">제목</th>
					<td><input type="text" id="bTitle" name="bTitle" style="width: 432px; height: 20px"
						<c:choose>
							<c:when test="${boardVo.bDate != null}">
								value="${boardVo.bTitle}"
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${boardVo.bName != uName && boardVo.bDate != null}">
								readonly
							</c:when>
						</c:choose>
					/></td>
				</tr>
				<tr>
					<th style="background-color: lightgray;">내용</th>
					<td><textarea id="bContent" name="bContent" cols="58" rows="8"
					<c:choose>
							<c:when test="${boardVo.bName != uName && boardVo.bDate != null}">
								readonly
							</c:when>
						</c:choose>
					>
					<c:choose>
							<c:when test="${boardVo.bDate != null}">
								${boardVo.bContent}
							</c:when>
					</c:choose>
					</textarea></td>
				</tr>
			</table>
		<br/>
		<button type="button" onclick="location.href='boardList.do'">목록</button>
		
			<c:choose>
				<c:when test="${boardVo.bDate == null}">
					<button type="button" id="btnInsert" style="background-color: blue; border-color: blue; color: white;">등록</button>
				</c:when>
			</c:choose>
		
			<c:choose>
				<c:when test="${boardVo.bName == uName}">
					<button type="button" id="btnUpdate" style="background-color: yellow; border-color: yellow;">수정</button>
					<button type="button" id="btnDelete" style="background-color: red; border-color: red; color: white;">삭제</button>
				</c:when>
			</c:choose>
		
		
		</div>
	</form>
	

</body>
</html>