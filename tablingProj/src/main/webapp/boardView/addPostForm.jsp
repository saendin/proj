<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록폼</title>
<link href="${pageContext.request.contextPath}/css/board.css" rel="stylesheet"/>
<jsp:include page="../fixedForm/header.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<!-- 로그인 값 확인 -->
 	<%-- <c:set var="user" value="${param.loginId}"></c:set>
	<c:if test="${empty user}">
		<c:redirect url="../memberView/memberLoginForm.jsp"></c:redirect>
	</c:if> --%>

	<!-- 글쓰기 영역 시작 -->
	<div class="container">
		<div class="row">
		<form action = "../addPost.do" method="post">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2" style="background-color: #eeeeee; text-align: center;">커뮤니티</th>
						</tr>
					</thead>
					<tbody>
						
						<tr> <!-- 제목 영역 -->
							<td><input id="title" type="text" class="form-control" placeholder="제목" name="title" maxlength="22" style="width: 600px;" required></td>
						</tr>
						<tr> <!-- 내용 영역 -->
							<td><textarea id="content" class="form-control" placeholder="내용을 입력하세요" name="content" maxlength="2000" style="width: 600px; height: 350px;" required></textarea></td>
						</tr>
						<tr>
							<td><input type="file" id="uploadFile" name="uploadFile"></td>
						</tr>
					</tbody>
				</table>
			<button id="btn_register" type="submit" class="btn btn_registert">등록</button>
			<button id="btn_previous" type="button" class="btn btn_previous" onclick="location.href='../postListPaging.do?pageNum=1&postNum=10'">취소</button>
		</form>
		<!-- 글쓰기 영역 끝 -->
		<!-- 글쓰기 버튼 -->
		
		</div>
	</div>
</body>

<script type="text/javascript">
$(document).on('click','#btn_register',function(e)) {
	const testTitle = $('#title').val().trim();
	const testContetn = $("#content").val().trim();
	const uploadFile = $("#uploadFile")[0].files[0];
	
	if(title === ''){
		alert('제목을 입력해주세요!');
		return;
	}
	if(content === ''){
		alert('내용을 입력해주세요!');
		return;
	}
	
	var formData = newFormData();
	formData.append('title', title);
	formData.append('content', content);
	
	if(uploadFile)
		formData.append('uploadFile',uploadFile);
	
	$.ajax({
		enctype : 'multipart/form-data',
		processData : false,
		contentType : false,
		cache : false,
		url : "addPost.do",
		data : formData,
		type : "POST",
		success : function(res) {
			alert('등록이 완료되었습니다!');
			location.href = "postList.do";
		}
	});
});
//이전->글목록
$('#btn_previous').click(function javascript_onclick() {
	$(location).attr('href','addPost.do');
});
</script>
</html>