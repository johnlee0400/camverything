<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>용품판매 페이지</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
.imgs {
	width: 100%;
}
.container{
	border:1px solid #CACACA;
	border-radius: 5px;
	box-shadow: 5px 5px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container1">
			<div class="navbar-header">
				<div class="col-xl-2 col-lg-2">
					<div class="logo">
						<a class="navbar-brand" href="#"><img
							src="/camp/images/logo1.png" width="100" height="70" alt=""></a>
					</div>
				</div>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-left">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">용품구매<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">텐트</a></li>
							<li><a href="#">테이블,의자</a></li>
							<li><a href="#">화로,버너</a></li>
							<li><a href="#">랜턴,조명</a></li>
							<li><a href="#">취사,수납</a></li>
							<li><a href="#">차박</a></li>
							<li><a href="#">소품/기타</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">먹거리<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">밀키트</a></li>
							<li><a href="#">간편식</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">로그인</a>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<h3>캠핑용품</h3>
		<div class="col-lg-6">
			<div class="col-lg-6">

				<div>
					<img src="/camp/images/camplist.png" class="imgs"><br /> 가격
					: <br /> 제품이름 :
				</div>
			</div>
			<div class="col-lg-6">
				<div>
					<img src="/camp/images/camplist.png" class="imgs"><br /> 가격
					: <br /> 제품이름 :
				</div>
			</div>
			<div class="col-lg-6">
				<div>
					<img src="/camp/images/camplist.png" class="imgs"><br /> 가격
					: <br /> 제품이름 :
				</div>
			</div>
			<div class="col-lg-6">
				<div>
					<img src="/camp/images/camplist.png" class="imgs"><br /> 가격
					: <br /> 제품이름 :
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>
