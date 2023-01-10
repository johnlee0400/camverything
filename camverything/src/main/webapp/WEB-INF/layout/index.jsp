<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <!--  <link rel="stylesheet" href="/camp/common/css/main/bootstrap.css">
  <link rel="stylesheet" href="/camp/common/css/main/bootstrap.min.css">
  <link rel="stylesheet" href="/camp/common/css/main/bootswatch.scss">
  <link rel="stylesheet" href="/camp/common/css/main/_variables.scss"> -->

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
<style>
/* 	body {
		font: 20px Montserrat, sans-serif;
		line-height: 1.8;
		color: #f5f6f7;
	}
	
	p {
		font-size: 16px;
	}
	
	.margin {
		margin-bottom: 45px;
	}
	
	.container{
		padding-left: 0px;
		padding-right: 0px;
	}
	 */
	.container-s-fluid {
		padding-top: 200px;
		padding-left: 0px;
		padding-right: 0px;
	}
/* 네비바 설정용 */
/* .navbar {
	/* padding-top: 15px;
	padding-bottom: 15px; 
	border: 0;
	border-radius: 0;
	margin-bottom: 0;
	font-size: 12px;
	letter-spacing: 5px;
} */

.navbar-nav  li a:hover {
	color: #1abc9c !important;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="container-lg-fluid">
		<!-- 이곳에 top화면을 연결하세요" -->
		<tiles:insertAttribute name="top"></tiles:insertAttribute>
	</div>
	<!-- <div style="background-color: #edeef1;padding: 20px;height: 800px" id="main"> -->
	<!-- 이곳에 mainContent화면을 연결하세요" -->
	<div class="container-s-fluid">
		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>
	<div class="container-lg-fluid">
		<!-- 이곳에 footer화면을 연결하세요" -->
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>
	
	
</body>
</html>