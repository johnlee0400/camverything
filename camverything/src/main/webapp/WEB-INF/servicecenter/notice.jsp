<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %><!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>

</head>
<body>

<h1 style="text-align: center;">고객센터</h1>

<div class = "container" style="width:400px; height:100px; = float:right; text-align: center;">
  <h2>공지사항</h2>        
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
  
<form action="" style =text-align: center;>
		<select name="tag">
			<option value="title">제목</option>
			<option value="content">본문</option>
			<option value="create_date">작성일</option>
		</select>
		 <input type="text" name="data" style = center;/> <input type="submit" value="검색">
		
	</form>
	<form action="" method="">
	<button type="submit" class="btn btn-secondary mb-3">글쓰기</button>
</form>
</div>

</body>
</html>