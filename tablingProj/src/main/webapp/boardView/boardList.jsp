
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 글 목록</title>
<link
  rel="stylesheet"
  href="${pageContext.request.contextPath}/css/board.css"
/>
</head>
<body>
  <table>
		<thead>
			<tr><!--  -->
				<th>글 번호</th>
				<th>닉네임</th>
				<th>제목</th>
				<th>작성일자</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="board" items="${boardList}">
				<tr><a href = "boardInsert.jsp"><input type="button" value="글쓰기"></a></tr>
				<tr>
					<td>${board.boardId}</td>
					<td>${board.memberId}</td>
					<td><a href = "boardDetail.jsp?id=${board.boardId}">${board.title}</a></td>
					<td>${board.createDate}</td>
					<td>${board.hits}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>