<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<title>Bootstrap Theme Simply Me</title>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <style type="text/css">
 	
 </style>
</head>
<body id="page-top">
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top"><img
				src="/camp/images/logo1.png" alt="..." class="logo"/></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars ms-1"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
					<li class="nav-item"><a class="nav-link" href="/camp/test/index">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="/camp/product/list.do?category=1">캠핑물품</a></li>
					<li class="nav-item"><a class="nav-link" href="/camp/camping/list.do?category=1">캠핑장목록</a></li>
					<li class="nav-item"><a class="nav-link" href="/camp/board/list.do?category=정보공유">커뮤니티</a></li>
					<li class="nav-item"><a class="nav-link" href="/camp/service/list.do?category=공지사항">고객센터</a></li>
					<li class="nav-item">
					<c:choose>
						<c:when test="${user==null }">
						<a class="nav-link" href="/camp/loginpage"><span class="glyphicon glyphicon-log-in">
								</span>Login</a>
						</c:when>
						<c:otherwise>
							<a class="nav-link" href="/camp/spring/logout"><span class="glyphicon glyphicon-log-out"></span>
									Logout</a>
						</c:otherwise>
					</c:choose>
				</li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>