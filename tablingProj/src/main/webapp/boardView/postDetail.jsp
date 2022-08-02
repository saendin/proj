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
<jsp:include page="../fixedForm/sidebar.jsp"></jsp:include>
</head>
<body>
	<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
		<thead>
			<tr>
				<th>${board.boardId}</th>
				<th>${board.memberId}</th>
				<th>${board.title}</th>
				<th>${board.createDate}</th>
				<th>${board.hits}</th>
			</tr>
		</thead>
		<tbody>
				<tr>
				<td colspan="5">${board.content}</td>
				</tr>
		</tbody>
		</table>
		<a href="postList.do"><input type="submit" value="목록으로"></a>
		<a href = "deletePost.do?brdNo=${board.boardId}"><input type="submit" value="삭제"></a>
		<a href = "updatePost.do?brdNo=${board.boardId}"><input type="submit" value="수정"></a>
</body>
</html>