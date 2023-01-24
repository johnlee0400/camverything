<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<title>Insert title here</title>

<style type="text/css">
#imageeee{
			padding-top:200px;
			padding-bottom:150px;
			background-image: url("/camp/images/servicetop.jpg");
		} 	
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
	background: #ffffff; 
	height: 50px; 
	border-bottom: #dddddd 1px solid;  
 } 

.submenu {
	position: absolute;
	margin-left: 700px;
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

.bt_wrap {
	margin-top: 30px;
	text-align: center;
	font-size: 0;
}

.bt_wrap a {
	display: inline-block;
	min-width: 80px;
	margin-left: 10px;
	padding: 10px;
	border: 1px solid #000;
	border-radius: 2px;
	font-size: 1rem;
}

.bt_wrap a.on {
	background: #000;
	color: #fff;
}
.categorytext{
	text-align: center;
	/* margin-top: 300px; */
	margin-bottom: 40px;
}

	a{
		text-decoration: none;
	}

	a:hover{
		text-decoration: none;
	}

#container{
	height:auto;
	padding:200px;
}


#registerbtn {
		/* clear:both;
		position:absolute;
		top:670px;
		left:0; */
	    width: 340px;
	    display: table;
	   /*  min-height: 5.4rem; */
	    height:54px;
	    padding: 0 1rem;
	    font-size: 1.8rem;
	    font-weight: bold;
	    background-color: #39517A;
	    border: 0.1rem solid #39517A;
	    border-radius: 0.6rem;
	    text-align: center;
	    box-sizing: border-box;
	    margin:auto;
	}
#registerbtn > span { /* > child속성만 css적용시킴 자손제외 (reserveBtn의 child인 span속성만 span전체가아니라) */
		font-size:16px;
	    display: table-cell;
	    height: 100%;
	    vertical-align: middle;
	    text-align: center;
	    line-height: 120%;
	    color: #fff;
    
	}
/* 여기까지 submenu  */
</style>
<script type="text/javascript">
	//문서가 실행되면 익명의 함수를 실행하겠습니다.
	//자바스크립트에서 자바가 공유해준 데이터를 사용 - EL을사용
	//${category} => request.getAttribute('category')
	category = "${category}"//컨트롤러 요청하고 response될때 값을 받아서 셋팅
	//alert(category)
	$(document).ready(function() {
		$("#category").val(category).attr("selected","selected");
		$("#category").change(function() {
			//alert("test");
			//컨트롤러가 실행되도록
			//select를 선택하면 컨트롤러가 실행되고 파라미터로 category가 파라미터의 값으로 현재 선택한 select의 value속성값이 지정
			location.href="/camp/service/list.do?category="+encodeURI($(this).val())
		});
	});
	$(document).ready(
				function() {
					if(category=="공지사항"){
							$("#register").attr("style","display:none");
							console.log("성");
					}
				/*=================submenu제어 ==================== */
				/*초기 자동 선택된 박스 */
				/* $("#active").css("background-color","#39517A");
				$("#active").children().css("color","white"); */
				
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
</head>
<body>
	<div id="imageeee">
		<div class="container">
			<div class="masthead-subheading">
				<h1>고객센터</h1>
			</div>
		</div>
	</div>
	<div class="location">
		<div class="submenu">
			<ul>
				<li class="selectbox" id="active" value="공지사항"><a
					href="/camp/service/list.do?category=공지사항" class="link">공지사항</a></li>
				<li class="selectbox" value="예약문의"><a
					href="/camp/service/list.do?category=예약문의" class="link">예약문의</a></li>
				<li class="selectbox" value="상품문의"><a
					href="/camp/service/list.do?category=상품문의" class="link">상품문의</a></li>
			</ul>
		</div>
	</div>
	<div class="container" id="container">
	<div class="categorytext">
		<h2>${category}</h2>
		</div>
		<table class="table" style="text-align: center;">
			<thead>
				<tr>
					<th scope="col" class="text-center">번호</th>
					<th scope="col" class="text-center">제목</th>
					<th scope="col" class="text-center">아이디</th>
					<th scope="col" class="text-center">등록일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="service" items="${servicelist }">
					<tr>
						<td><img src="/camp/images/공지.gif"></td>
						<td><a
							href="/camp/service/read.do?service_no=${service.service_no }&state=READ">${service.service_title }</a></td>
						<td>${service.id }</td>
						<td>${service.create_date }</td>
						<td><a
							href="/camp/service/delete.do?service_no=${service.service_no }">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="bt_wrap" id="register">
			<a href="/camp/service/write.do" class="on" id="registerbtn">등록</a>
		</div>
	</div>
	<!-- <form action="/camp/service/search.do" method="post">
		<select name="tag">
			<option value="id">작성자</option>
			<option value="title">제목</option>
			<option value="content">본문</option>
			<option value="create_date">작성일</option>
		</select> <input type="text" name="data" /> <input type="submit" value="검색">
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/camp/service/write.do" style="text-align: right;">글쓰기</a></li>
		</ul>
	</form> -->
<script src="/camp/common/js/page.js"></script> 
</body>
</html>