<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <title>board</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
		
	
	<h1 class = "text-center">커뮤니티</h1>
	
	<br>

	

<div style=" float: left; width: 15%;">

<ul class="list-group list-group-light">
  <li class="list-group-item" ><a href="#">정보공유</a></li>
  <li class="list-group-item"><a href="#">캠핑장리뷰</a></li>
</ul>

</div>
<div class ="container">
<table class= "table table-hover" align="center width="600">

	<tr>
			<th>말머리</th>
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
			<th>조회수</th>
	</tr>
		<tbody>
		 <tr>
		 	<td>정보공유</td>
		 	<td>1</td>
		 	<td>좋은캠핌장</td>
		 	<td>캠브리띵</td>
		 	<td>22-12-29</td>
		 	<td>33</td>
		 </tr>
		</tbody>
</table>

<a class="btn btn-defalut">글쓰기</a>

</div>
	<div class ="text-center">
		<ul class="pagination">	
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
		</ul>
</div>
</body>
</html>