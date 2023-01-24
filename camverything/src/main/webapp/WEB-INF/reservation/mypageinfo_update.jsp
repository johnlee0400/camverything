<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>Insert title here</title>
<style>
	#btn {
		background-color: #39517A;
		color: white;
		width:100px;
		text-align:center;
	}
	.box{
		text-align:center;
		width:300px;
		height:100px;
		margin:auto;
	}
	.top{
		position: relative;
		top:50px;
		
	}
</style>
</head>
<body>
	<div class="top">
		<div class="box">
			<h3>수정을 성공했습니다.</h3>
			<button class="btn" id="btn" onclick="window.close();">닫기</button>
		</div>
	</div>
</body>
</html>