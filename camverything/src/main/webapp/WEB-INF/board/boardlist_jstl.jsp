<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="/camp/common/css/board/css.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style type="text/css">
#imageeee {
	padding-top: 10.5rem;
	padding-bottom: 15rem;
	text-align: center;
	color: #fff;
	background-image: url("/camp/images/img/bg/board.jpg");
	background-repeat: no-repeat;
	background-attachment: scroll;
	background-position: center center;
	background-size: cover;
}

/*===여기서 부터 submenu ====  */
.main {
	width: 1200px;
	margin: auto;
}

.mainstart {
	padding-top: 100px;
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
	position: relative;
	width: 100%;
	float: left;
	background: #FFFFFF;
	height: 50px;
	border-bottom: #DDDDDD 1px solid;
}

.submenu {
	position: absolute;
	margin-left: 360px;
	/* bottom: 10px; */
}

.submenu li {
	clear: both;
	width: 170px;
	border: #ccc 1px solid;
	height: 50px;
	margin-top: 10px;
	box-sizing: border-box;
	display: inline-block;
	margin: 0 -3px;
	padding-top: 15px;
	vertical-align: middle;
	text-align: center;
}

.submenu a {
	color: black;
	text-decoration: none;
}
/* 여기까지 submenu  */
</style>
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
			});
	$(document).ready(function() {
		/*=================submenu제어 ==================== */
		/*초기 자동 선택된 박스 */
		$("#active").css("background-color", "#39517A");
		$("#active").children().css("color", "white");

		/* 다른 게시판 박스 선택시  */
		$(".selectbox").on("mouseover", function() {
			/*  alert("in");  */
			$("#active").css("background-color", "white");
			$("#active").children().css("color", "black");
			$(this).css("background-color", "#39517A");
			$(this).children().css("color", "white");
		})
		$(".selectbox").on("mouseout", function() {
			/* alert("out"); */
			$(this).css("background-color", "white");
			$(this).children().css("color", "black");
		})
	});
</script>
</head>
<body>
	<div id="imageeee">
		<div class="container">
			<div class="masthead-subheading">
				<h1>커뮤니티</h1>
			</div>
		</div>
	</div>
	<div class="location">
		<div class="submenu">
			<ul id="category">
				<li class="selectbox" id="active"><a
					href="/camp/board/list.do?category=상품" class="link">상품</a></li>
				<li class="selectbox" id="active"><a
					href="/camp/board/list.do?category=여행지" class="link">여행지</a></li>
				<li class="selectbox" id="active"><a
					href="/camp/board/list.do?category=정보공유" class="link">정보공유</a></li>
			</ul>
		</div>
	</div>

	<div class="board_wrap">
		<div style="padding-top: 30px">
			<div class="col-md-3" style="padding-bottom: 10px"></div>
		</div>
		<div class="board_title">
			<strong>${category}</strong>
		</div>
		<div class="board_list_wrap">
			<div class="board_list">
				<div class="top">
					<div class="num">번호</div>
					<div class="title">제목</div>
					<div class="writer">글쓴이</div>
					<div class="date">작성일</div>
					<div class="count">조회</div>
				</div>
				<div>
					<c:forEach var="board" items="${boardlist }">
						<div class="selectbox">
							<div class="num">${board.board_no }</div>
							<div class="title">
								<a
									href="/camp/board/read.do?board_no=${board.board_no }&state=READ">${board.title }</a>
							</div>
							<div class="writer">${board.id }</div>
							<div class="date">${board.create_date }</div>
							<div class="count">
								<a href="/camp/board/delete.do?board_no=${board.board_no }">삭제</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="board_page">
				<a href="#" class="bt first"><<</a> <a href="#" class="bt prev"><</a>
				<a href="#" class="num on">1</a> <a href="#" class="num">2</a> <a
					href="#" class="num">3</a> <a href="#" class="num">4</a> <a
					href="#" class="num">5</a> <a href="#" class="bt next">></a> <a
					href="#" class="bt last">>></a>
			</div>
			<div class="bt_wrap">
				<a href="/camp/board/write.do" class="on">등록</a>
				<!--<a href="#">수정</a>-->
			</div>
		</div>
	</div>

</body>
</html>
