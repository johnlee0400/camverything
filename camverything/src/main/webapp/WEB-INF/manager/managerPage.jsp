<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>공공데이터 정보 insert</h3>
	<input type="button" value="공공데이터 정보 insert 1페이지" onClick="location.href='/camp/gocamp/insert1'">
	<input type="button" value="공공데이터 정보 insert 2페이지" onClick="location.href='/camp/gocamp/insert2'">
	<input type="button" value="공공데이터 정보 insert 3페이지" onClick="location.href='/camp/gocamp/insert3'">
	<input type="button" value="공공데이터 정보 insert 4페이지" onClick="location.href='/camp/gocamp/insert4'">
	
	<h3>관리자권한 공지사항 글작성</h3>
	<a href="/camp/manager/service/write.do" class="on">등록</a>
</body>
</html>