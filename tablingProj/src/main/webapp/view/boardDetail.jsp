<%@page import="dev.domain.Board"%>
<%@page import="dev.repository.BoardRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>${vo.boardId}</th>
				<th>${vo.title}</th>
				<th>${vo.memberId}</th>
				<th>${vo.createDate}</th>
				<th>${vo.hits}</th>
			</tr>
		</thead>
		<tbody>
			<%
				String bdId = request.getParameter("id");
				BoardRepository repo = new BoardRepository();
				Board bd = repo.getPost(Integer.parseInt(bdId));
			%>	
			<c:forEach var="vo" items="${boardList}"> 
				<tr>
					<%-- <td><a href = "boardDetail.jsp?id=${vo.boardId}">${vo.boardId}</a></td> --%>
					<td>${vo.boardId}</td>
					<td>${vo.title}</td>
					<td>${vo.memberId}</td>
					<td>${vo.writeDate}</td>
					<td>${vo.visitCnt}</td>
				</tr>
				<tr>
		<td><a href="boardList.jsp"><input type="submit" value="목록으로"></a></td>
		<td></td><td></td><td></td>
		<td><a href = "deletePost.jsp?brdNo=${vo.boardId}"><input type="submit" value="삭제"></a>
		<a href = "updatePost.jsp?brdNo=${vo.boardId}"><input type="submit" value="수정"></a></td>
		</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>