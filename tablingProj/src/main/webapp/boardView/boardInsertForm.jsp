<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록폼</title>
<link href="${pageContext.request.contextPath}/css/board.css" rel="stylesheet"/>
</head>
<body>
	<%--<%
	String user = (String) session.getAttribute("loginId");
	if (user == null || user.equals("")) {
		response.sendRedirect("loginForm.jsp");
	}
	%> --%>
 	<%--<c:set var="user" value="${loginId}"></c:set>
		<c:if test="${empty user}">
		<c:redirect url="memberLoginForm.jsp"></c:redirect>
	</c:if> --%>
	
	<!-- 글쓰기 영역 시작 -->
	<div class="container">
		<div class="row">
			<form action = "boardInsert.do" method="post">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2" style="background-color: #eeeeee; text-align: center;">커뮤니티</th>
						</tr>
					</thead>
					<tbody>
						<tr> <!-- 제목 영역 -->
							<td><input type="text" class="form-control" placeholder="제목" name="title" maxlength="22" style="width: 600px;"></td>
						</tr>
						<tr> <!-- 내용 영역 -->
							<td><textarea class="form-control" placeholder="내용을 입력하세요" name="content" maxlength="2000" style="width: 600px; height: 350px;"></textarea></td>
						</tr>
					</tbody>
				</table>
				<!-- 글쓰기 영역 끝 -->
				<!-- 글쓰기 버튼 -->
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
			</form>
		</div>
	</div>
</body>
</html>