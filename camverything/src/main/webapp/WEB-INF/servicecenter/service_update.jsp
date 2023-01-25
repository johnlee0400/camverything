<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Custom styles for this template -->
<link rel="stylesheet" href="/camp/common/css/board/css.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style type="text/css">
	#imageeee{
			padding-top:200px;
			padding-bottom:150px;
			background-image: url("/camp/images/servicetop.jpg");
		} 	
</style>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		data = "${service.category}"
		$("#category").val(data).attr("selected","selected");
		
	});

</script>
<body>
	<div id="imageeee">
		<div class="container">
			<div class="masthead-subheading">
				<h1>고객센터</h1>
			</div>
		</div>
	</div>
	<form class="form-horizontal style-form" action="/camp/service/update.do"
		method="post">
		<div class="board_wrap">
			<div class="board_title">
				<strong>수정하기</strong>
			</div>
			<div class="board_write_wrap">
				<div class="board_write">
					<input type="hidden" name="service_no" value="${service.service_no }">
					<div class="title">
						<dl>
							<dt>제목</dt>
							<dd>
								<input type="text" name="service_title" value="${service.service_title }">
							</dd>
						</dl>
					</div>
					<div class="info">
						<dl>
							<dt class="col-lg-2">글쓴이 :</dt>
							<dd class="col-lg-2">${service.id}</dd>
							<dt class="col-lg-2">분류 :</dt>
							<dd class="col-lg-4">
								<select name="category" class="form-control" id="category">
									<option value="예약문의">예약문의</option>
									<option value="상품문의">상품문의</option>
								</select>
							</dd>
						</dl>
					</div>
					<div class="cont">
						<textarea placeholder="내용 입력" name="service_content">
                        ${service.service_content }</textarea>
					</div>
				</div>
				<div class="bt_wrap">
					<button type="submit" class="btn btn-success">수정</button>
                	<button type="reset" class="btn btn-default">취소</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>