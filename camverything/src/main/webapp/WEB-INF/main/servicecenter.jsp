<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%><!DOCTYPE html>
<html lang="en">
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<title>Insert title here</title>

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
<script type="text/javascript">
	$(document).ready(
			function() {
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
			<ul>
				<li class="selectbox" id="active"><a href="#" class="link">게시판 1</a></li>
				<li class="selectbox"><a href="#" class="link">게시판 2</a></li>
				<li class="selectbox"><a href="#" class="link">게시판 3</a></li>
			</ul>
		</div>
	</div>
	
	<h1 style="text-align: center;">고객센터</h1>

	<div class="container"
		style="width: 400px; height: 100px; = float: right; text-align: center;">
		<h2>최근공지사항</h2>
		<table class="table table-hover" style="text-align: center;">
			<thead>
				<tr>
					<th scope="col" class="text-center">번호</th>
					<th scope="col" class="text-center">제목</th>
					<th scope="col" class="text-center">등록일</th>

				</tr>

			</thead>
			<tbody>

			</tbody>
		</table>
	</div>
</body>
</html>