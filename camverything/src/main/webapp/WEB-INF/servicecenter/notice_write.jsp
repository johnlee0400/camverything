<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
		<h1 style="text-align: center;">상품문의</h1>
	<hr>
	<div class="row mt">
		<div class="col-lg-12">
			<div class="form-panel">

				<form class="form-horizontal style-form"
					action="" enctype="multipart/form-data">
					
					<div class="form-group" style="border: 1px solid #eff2f7;">

						<label class="col-sm-2 col-sm-2 control-label">작성자</label>
						<div class="col-sm-10">
							<input type="hidden" name="id" value="${user.id}">
							<p class="form-control-static">${user.name}</p>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">주문번호</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="reservation_no"> <span
									class="help-block">주문하신 주문번호를 입력하시기 바랍니다. </span>
							</div>
						</div>
						
						
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">제목</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="title"> <span
									class="help-block">게시글 유형에 맞는 내용으로 작성 부탁드립니다. </span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">내용</label>
							<div class="col-sm-8">
								<textarea id="content"
									style="width: 100%; border: 1; overflow: visible; text-overflow: ellipsis;"
									rows=15 name="content"></textarea>
							</div>
						</div>
					</div>
				</form>
							
							<form class="form-horizontal style-form">
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
							<div class="col-lg-4 text-center"></div>
							<div class="col-lg-2 text-center">
								<button type="submit" class="btn btn-success"
									style="width: 100px; background-color: #0ea006">등록</button>
							</div>
							<div class="col-lg-2 text-center">
								<button type="reset" class="btn btn-default"
									style="width: 100px; background-color: #9a9a9a">취소</button>
							</div>
						</div>
							</form>
					</div>
				</div>
			</div>
		
</body>
</html>