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
	<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
		<thead>
			<tr style="border-bottom:1px solid #dddddd;">
				<th>${boardDetail.boardId}</th>
				<th>${boardDetail.memberId}</th>
				<th>${boardDetail.title}</th>
				<th>${boardDetail.createDate}</th>
				<th>${boardDetail.hits}</th>
			</tr>
		</thead>
		<tbody style="text-align: left;">
				<tr>
				<td colspan="5" width="600px" height="350px">${boardDetail.content}</td>
				</tr>
		</tbody>
		</table>
		<a href=  "postListPaging.do?pageNum=1&postNum=10"><button>목록으로</button></a>
		<a href = "deletePost.do?brdNo=${board.boardId}"><button>삭제</button></a>
		<a href = "updatePost.jsp?brdNo=${board.boardId}"><button>수정</button></a>
</body>
</html>