<%@page import="dev.domain.Board"%>
<%@page import="dev.repository.BoardRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 보기</title>
<link href="${pageContext.request.contextPath}/css/board.css" rel="stylesheet"/>
<jsp:include page="../fixedForm/header.jsp"></jsp:include>

</head>
<body>
<form action="../updatePostForm.do" method="post">//컨트롤러 하나 더 만들어서 거기서 속성 set해주고 그걸 updatepostForm.jsp로 넘겨주기
<input type="hidden" name="boardId" value="${boardDetail.boardId}">
				<input type="hidden" name="memberId" value="${boardDetail.memberId}">
				<input type="hidden" name="title" value="${boardDetail.title}">
				<input type="hidden" name="content" value="${boardDetail.content}">
				<input type="hidden" name="createDate" value="${boardDetail.createDate}">
				<input type="hidden" name="hits" value="${boardDetail.hits}">
				
	<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
		<tbody style="text-align: left;">
			<tr style="border-bottom:1px solid #cccccc;">
				<th>${boardDetail.boardId}</th>
				<th>${boardDetail.memberId}</th>
				<th>${boardDetail.title}</th>
				<th>${boardDetail.createDate}</th>
				<th>${boardDetail.hits}</th>
			</tr>
				<tr>
				<td colspan="5" width="600px" height="350px">${boardDetail.content}</td>
				</tr>
			<tr><td><a href=  "postListPaging.do?pageNum=1&postNum=10"><button>목록으로</button></a></td>
			<td><a href = "deletePost.do?boardId=${boardDetail.boardId}"><button>삭제</button></a></td>
			<td>
				
				<input type="submit" value="수정">
			</td></tr>
		</tbody>
		</table></form>
</body>
</html>