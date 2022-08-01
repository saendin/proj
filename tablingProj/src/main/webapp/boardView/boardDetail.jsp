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
</head>
<body>
	<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
		<thead>
			<tr>
				<th>${board.boardId}</th>
				<th>${board.title}</th>
				<th>${board.memberId}</th>
				<th>${board.createDate}</th>
				<th>${board.hits}</th>
			</tr>
		</thead>
		<tbody>
			
				<%String boardId = request.getParameter("boardId");
				BoardRepository boardRepo = new BoardRepository();
				Board board = boardRepo.getPost(Integer.parseInt(boardId));%>
			
			<c:forEach var="board" items="${boardList}"> 
				<tr>
					<td>${board.boardId}</td>
					<td>${board.memberId}</td>
					<td>${board.title}</td>
					<td>${board.createDate}</td>
					<td>${board.hits}</td>
				</tr>
				<tr>
		<td><a href="boardList.jsp"><input type="submit" value="목록으로"></a></td>
		<td colspan="3"></td>
		<td><a href = "deletePost.jsp?brdNo=${board.boardId}"><input type="submit" value="삭제"></a>
		<a href = "updatePost.jsp?brdNo=${board.boardId}"><input type="submit" value="수정"></a></td>
		</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>