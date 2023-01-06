<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript">
	//문서가 실행되면 익명의 함수를 실행하겠습니다.
	//자바스크립트에서 자바가 공유해준 데이터를 사용 - EL
	//"$(category)" = request.getAttribute('category')
	var category = "${category}"//컨트롤러 요청하고 response될때 값을 받아서 셋팅
// 	alert(category);
	$(document).ready(function(){
		$("#category").val(category).attr("selected","selected");
		$("#category").change(function(){
			
// 			alert("test");
			//컨트롤러가 실행되도록 하기
			//select를 선택하면 컨트롤러가 실행되고 파라미터로 category가 파라미터의 값으로 현재 선택한 select의 value속성값이 지정
			location.href="/camp/board/list.do?category="+encodeURI($(this).val())
		});
	});
</script>
</head>
<body>
	<h1>camverything 게시판</h1>
	
	<div style="padding-top: 30px">
		<div class="col-md-3" style="padding-bottom: 10px">
		    구분:
			<form action="">
				<select name="category"  id="category">
					<option value="all">전체게시물</option>
					<option value="상품">상품</option>
					<option value="여행지">여행지</option>
					<option value="정보공유">정보공유</option>
				</select>
			</form>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성날짜</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="board" items="${boardlist }">
				<tr>
					<td>${board.board_no }</td>
					<td><a
						href="/camp/board/read.do?board_no=${board.board_no }&state=READ">${board.title }</a></td>
					<td>${board.id }</td>
					<td>${board.create_date }</td>
					<td><a href="/camp/board/delete.do?board_no=${board.board_no }">삭제</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<form action="/camp/board/search.do" method="post">
		<select name="tag">
			<option value="id">작성자</option>
			<option value="title">제목</option>
			<option value="content">본문</option>
			<option value="write_date">작성일</option>
		</select> <input type="text" name="data" /> <input type="submit" value="검색">
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/camp/board/write.do" style="text-align: right;">글쓰기</a></li>
		</ul>
	</form>

</body>
</html>
