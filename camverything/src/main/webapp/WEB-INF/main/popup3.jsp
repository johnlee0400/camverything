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
		width:550px;
		height:550px;
	}
	.bottom{
		width:550px;
		height:40px;
	}
	#btn{
		background-color:black;
		color:white;
		width:550px;
		height:40px;
	}
</style>
</head>
<body>
	<div class="top">
		<img alt="" src="/camp/images/popup3.gif" style="width: 550px; height: 550px">
	</div>
	
	<div class="bottom">
			<button class="btn" id="btn" onclick="window.close();">창닫기</button>
	</div>
	
</body>
</html>