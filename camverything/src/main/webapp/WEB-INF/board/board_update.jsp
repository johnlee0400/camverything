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
</head>
<script type="text/javascript">
	$(document).ready(function(){
		data = "${board.category}"
		$("#category").val(data).attr("selected","selected");
	});

</script>
<body>
	<div id="imageeee">
		<div class="container">
			<div class="masthead-subheading">
				<h1>커뮤니티</h1>
			</div>
		</div>
	</div>
	<form class="form-horizontal style-form" action="/camp/board/update.do"
		method="post">
		<div class="board_wrap">
			<div class="board_title">
				<strong>수정하기</strong>
			</div>
			<div class="board_write_wrap">
				<div class="board_write">
					<input type="hidden" name="board_no" value="${board.board_no }">
					<div class="title">
						<dl>
							<dt>제목</dt>
							<dd>
								<input type="text" name="title" value="${board.title }">
							</dd>
						</dl>
					</div>
					<div class="info">
						<dl>
							<dt class="col-lg-2">글쓴이 :</dt>
							<dd class="col-lg-2">${board.id}</dd>
							<dt class="col-lg-2">분류 :</dt>
							<dd class="col-lg-4">
								<select name="category" class="form-control" id="category">
									<option value="상품">상품</option>
									<option value="여행지">여행지</option>
									<option value="정보공유">정보공유</option>
								</select>
							</dd>
						</dl>
					</div>
					<div class="cont">
						<textarea placeholder="내용 입력" name="content">
                        ${board.content }</textarea>
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