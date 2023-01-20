<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		margin:0;
	}
	.top{
		width:450px;
		height:450px;
	}
	.bottom{
		width:450px;
		height:40px;
	}
	#btn{
		background-color:black;
		color:white;
		width:450px;
		height:40px;
	}
</style>
</head>
<body>
	<div class="top">
		<img alt="" src="/camp/images/popup1.jpg">
	</div>
	
	<div class="bottom">
			<button class="btn" id="btn" onclick="window.close();">창닫기</button>
	</div>
	
</body>
</html>