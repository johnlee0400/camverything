<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %><!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme Simply Me</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<tiles:insertAttribute name="top"></tiles:insertAttribute>
	<div class="list-group">
		<a href="https://korean.visitkorea.or.kr/detail/fes_detail.do?cotid=4b8b3f33-236e-4869-92f0-acef93f5c560" 
		target="_blank" class="list-group-item">
		<img alt="" src="/camp/images/festival.jpg" width="600" height="400" >대관령 축제 , 설명</a> 
		
		<a href="#"	class="list-group-item">
		<img alt="" src="/camp/images/festival.jpg" width="600" height="400"><br>축제</a> 
		
		<a href="#" class="list-group-item">
		<img alt="" src="/camp/images/festival.jpg" width="600" height="400" ><br>축제</a>
		
		<a href="#" class="list-group-item">
		<img alt="" src="/camp/images/festival.jpg" width="600" height="400"><br>축제</a>
	</div>
</body>
</html>