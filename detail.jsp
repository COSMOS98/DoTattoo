<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">

</script>
<style type="text/css">

</style>
</head>
<body>
<%-- 	${vo.idx } // ${vo.userName } // ${vo.title } // ${vo.content } --%>
	${bean.no } // ${bean.name } // ${bean.title } // ${bean.content } // ${bean.date }
	
<!-- 	<form id="form" name="form"> -->
<!-- 	<input type="hidden" name="no" id="no" /> -->
	<table border="1">
	
		<tr>
			<td>
				게시글 번호 : ${bean.no }
			</td>
		</tr>
		<tr>
			<td>
				게시글 작성자 : ${bean.name }
			</td>
		</tr>
		<tr>
			<td>
				게시글 제목 : ${bean.title }
			</td>
		</tr>
		<tr>
			<td>
				게시글 내용 : ${bean.content }
			</td>
		</tr>
		<tr>
			<td>
				게시글 날짜 : ${bean.date }
			</td>
		</tr>
	</table>

				<div>
					<button type="submit" class="btnUpdate" id="btnUpdate">수정</button>
	
					<button type="submit" class="btnDelete" id="btnDelete">삭제</button>
	
					<button type="submit" class="btnList" id="btnList">목록</button>
				</div>	

</body>
</html>