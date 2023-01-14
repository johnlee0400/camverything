<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript">
	//문서가 실행되면 익명의 함수를 실행하겠습니다.
	//자바스크립트에서 자바가 공유해준 데이터를 사용 - EL을사용
	//${category} => request.getAttribute('category')
	category = "${category}"//컨트롤러 요청하고 response될때 값을 받아서 셋팅
	//alert(category)
	$(document).ready(
			function() {
				$("#category").val(category).attr("selected", "selected");
				$("#category").change(
						function() {
							//alert("test");
							//컨트롤러가 실행되도록
							//select를 선택하면 컨트롤러가 실행되고 파라미터로 category가 파라미터의 값으로 현재 선택한 select의 value속성값이 지정
							location.href = "/camp/board/list.do?category="
									+ encodeURI($(this).val())
						});
				
				/*=================submenu제어 ==================== */
				
				/*초기 자동 선택된 박스 */
				$("#active").css("background-color","#39517A");
				$("#active").children().css("color","white");
				
				/* 다른 게시판 박스 선택시  */
				$(".selectbox").on("mouseover", function() {
					/*  alert("in");  */
					$("#active").css("background-color","white");
					$("#active").children().css("color","black");
					$(this).css("background-color","#39517A");
					$(this).children().css("color","white");
				})
				$(".selectbox").on("mouseout", function() {
					/* alert("out"); */ 
					$(this).css("background-color","white");
					$(this).children().css("color","black");
				})
			
			});
</script>
<style type="text/css">
	/*===여기서 부터 submenu ====  */
	.main {
		width: 1200px;
		margin: auto;
	}
	
	.mainstart{
	
		padding-top:100px;
	}
	
	ul, li {
		list-style: none;
		margin: 0;
		padding: 0;
		border: 0;
		outline: 0;
		font-weight: 400;
		font-style: inherit;
		font-size: 15px;
		font-family: 'S-Core Dream', 'notokr', sans-serif;
		vertical-align: baseline;
		color: #555;
	}
	
	
	.location {
		position:relative;
		width: 100%;
		float: left;
		background: #ffffff;
		height: 50px;
		border-bottom: #dddddd 1px solid;
	}
	.submenu{
		position: absolute;
		margin-left:360px;
		/* bottom: 10px; */
	}
	
	.submenu li {
		clear: both;
		width: 170px;
		border: #ccc 1px solid;
		height:50px;
		margin-top: 10px;
		box-sizing: border-box;
		display: inline-block;
		margin: 0 -3px;
		
		padding-top:15px;
		vertical-align: middle;
	    text-align: center;
	}
	
	.submenu a {
		color:black;
		text-decoration: none;
	}
	/* 여기까지 submenu  */
</style>
</head>
<body>
	<div id="imageeee">
		<div class="container">
			<div class="masthead-subheading">
				<h1>커뮤니티</h1>
			</div>
		</div>
	</div>

	<div class="subcontainer">
		<div class="location">
			<div class="submenu">
				<ul>
					<li class="selectbox" id="active"><a href="#" class="link">게시판 1</a></li>
					<li class="selectbox"><a href="#" class="link">게시판 2</a></li>
					<li class="selectbox"><a href="#" class="link">게시판 3</a></li>
				</ul>
			</div>
		</div>
		
		<div class="main">
			<div class="mainstart">
				<div class="col-md-3" style="padding-bottom: 10px">
					구분:
					<form action="">
						<select name="category" id="category">
							<option value="all">전체게시물</option>
							<option value="경조사">경조사</option>
							<option value="사내소식">사내소식</option>
						</select>
					</form>
				</div>
				<table class="table">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>등록일</th>
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
								<td><a
									href="/camp/board/delete.do?board_no=${board.board_no }">삭제</a></td>
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
					<option value="create_date">작성일</option>
				</select> <input type="text" name="data" /> <input type="submit" value="검색">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/camp/board/write.do" style="text-align: right;">글쓰기</a></li>
				</ul>
			</form>
		</div>
	</div>
</body>
</html>
