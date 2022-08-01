<%@page import="dev.domain.Board"%>
<%@page import="dev.repository.BoardRepository"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- <table>
		<thead>
			<tr>
				<th>${vo.boardId}</th>
				<th>${vo.title}</th>
				<th>${vo.memberId}</th>
				<th>${vo.createDate}</th>
				<th>${vo.hits}</th>
			</tr>
		</thead>
		<tbody id="list">
		<%
			String bdId = request.getParameter("boardId");
			BoardRepository repo = new BoardRepository();
			Board bd = repo.getPost(Integer.parseInt(bdId));
		%>	
		<c:forEach var="board" items="${boardList}"> 
				<tr>
					<th>${vo.boardId}</th>
					<th>${vo.title}</th>
					<th>${vo.memberId}</td>
					<th>${vo.createDate}</th>
					<th>${vo.hits}</th>
				</tr>
		</c:forEach>
		</tbody>
	</table>
	<table>
		<tr> 
			<td><a href="boardList.jsp"><input type="submit" value="목록으로"></a></td>
			<td></td><td></td><td></td>
			<td><a href = "deletePost.jsp?brdNo=${vo.boardId}"><input type="submit" value="삭제"></a>
			<a href = "updatePost.jsp?brdNo=${vo.boardId}"><input type="submit" value="수정"></a></td>
		</tr>
	</table> --%>
	<script>
/* 	let xhtp = new XMLHttpRequest(); //비동기방식 처리
	xhtp.open('get', 'memberJson.do'); //1.서버에 요청
	xhtp.send(); //2.결과 받아옴
	xhtp.onreadystatechange = callBackThree; //3.이벤트 처리
	
	let fields = ['id', 'name', 'mail', 'pwd'];
	
	function callBackOne() { //3-1.처리할 이벤트 함수
	if(xhtp.readyState == 4 && xhtp.status == 200) {
		let data = JSON.parse(this.responseText);
		console.log(data); 
		
		let name = document.createElement('p');
		name.innerText = data.name;
		let age = document.createElement('p');
		age.innerText = data.age;
	
		document.querySelector('body').append(name, age);
		}
	}
	
	function callBackTwo() { //3-1.처리할 이벤트 함수
		if(this.readyState == 4 && this.status == 200) {
			let data = JSON.parse(this.responseText);
			console.log(data);
			
			let ul = document.createElement('ul');//= <ul></ul>
			for (let obj of data) {
				let li = document.createElement('li');
				li.innerHTML = obj.name + obj.age;//<li>hong, 15</li>
				ul.append(li);
			}
			console.log(ul);
			document.querySelector('body').append(ul);
			
		}
	}
	function callBackThree() { //3-1.처리할 이벤트 함수
		if(this.readyState == 4 && this.status == 200) {
			let data = JSON.parse(this.responseText);
			console.log(data);
			let tbody = document.getElementById('list');
			
			for(let obj of data) {
				// tr td, td, td, td
				let tr = document.createElement('tr');
				
				for(let field of fields) {
					let td1 = document.createElement('td');
					td1.innerText = obj[field];
					tr.append(td1);
				}
				tbody.append(tr);
			}
		}
	} */
	</script>
</body>
</html>