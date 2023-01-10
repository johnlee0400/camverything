<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="/erp/common/css/main.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="list-group" style="width:200px; height:100px; = floa:left; text-align: center;">
		<a href="http://localhost:8080/camp/servicecenter/product_qna.do" class="list-group-item">상품문의</a> 
		<a href="http://localhost:8080/camp/servicecenter/reservation_qna.do"	class="list-group-item">예약문의</a> 
		<a href="#" class="list-group-item">자유질문</a>
		<a href="http://localhost:8080/camp/test/notice" class="list-group-item">공지사항</a>
	</div>
</body>
</html>