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
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="imageeee">
		<div class="container">
			<div class="masthead-subheading"><h1>커뮤니티</h1></div>
		</div>
	</div>
	<form class="form-horizontal style-form" action="/camp/service/write.do"
		method="post" enctype="multipart/form-data">
		<div class="board_wrap">
			<div class="board_title">
	            <strong>글작성</strong>
	        </div>
			<div class="board_write_wrap">
				<div class="board_write">
					<div class="info">
						<dl>
							<dt>글쓴이</dt>
							<dd><input type="hidden" name="id" value="${user.id}">
							<p class="form-control-static">${user.id}</p></dd>
						</dl>
						<dl>
							<dt>게시판</dt>
							<dd><select name="category" class="form-control">
								<option value="예약문의">예약문의</option>
								<option value="상품문의">상품문의</option>
							</select></dd>
						</dl>
					</div>
					<div class="title">
						<dl>
							<dt>제목</dt>
							<dd>
								<input type="text" placeholder="제목 입력" class="form-control" name="service_title"><span
									class="help-block" ></span>
							</dd>
						</dl>
					</div>
					<div class="cont">
						<textarea id="content" placeholder="내용 입력" name="service_content"></textarea>
					</div>
					<div class="form-group">
						<div class="col-md-2 text-right">
							<label for="files" class="control-label">파일1</label>
						</div>
						<div class="col-md-8">
							<input type="file" class="form-control input-lg" name="files"
								id="files" placeholder="파일선택" multiple="multiple">
						</div>
					</div>
					<div class="form-group">
							<div class="col-md-2 text-right">
								<label for="title" class="control-label">파일2</label>
							</div>
							<div class="col-md-8">
								<input type="file" class="form-control input-lg" name="files"
									id="title" placeholder="파일선택">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-2 text-right">
								<label for="files" class="control-label">파일3</label>
							</div>
							<div class="col-md-8">
								<input type="file" class="form-control input-lg" name="files"
									id="files" placeholder="파일선택">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-2 text-right">
								<label for="files" class="control-label">파일4</label>
							</div>
							<div class="col-md-8">
								<input type="file" class="form-control input-lg" name="files"
									id="files" placeholder="파일선택">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-2 text-right">
								<label for="title" class="control-label">파일5</label>
							</div>
							<div class="col-md-8">
								<input type="file" class="form-control input-lg" name="files"
									id="title" placeholder="파일선택">
							</div>
						</div>
					</div>
				<div class="bt_wrap">
					<button type="submit" class="on"><a>등록</a></button>
					<button type="reset" class="btn btn-default">취소</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>