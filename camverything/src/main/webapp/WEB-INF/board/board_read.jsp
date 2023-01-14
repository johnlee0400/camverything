<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<title></title>
<link rel="stylesheet" href="/camp/common/css/board/css.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){ //자바스크립트가 실행되면
		data = "${board.category}"//서버에서 받아온 board객체의 getCategory()메소드를 호출해서 값을 받은 후에 자바스크립트 data변수에 저장해주
		$("#category").val(data).attr("selected","selected");
	});

</script>
</head>
<body>
<div id="imageeee">
	<div class="container">
		<div class="masthead-subheading"><h1>커뮤니티</h1></div>
	</div>
	</div>

	<form class="form-horizontal" 
		action="/camp/board/read.do?state=UPDATE&board_no=${board.board_no }" 
		method="post" >
		<div class="board_wrap">
	        <div class="board_title">
	            <strong>${category }</strong>
	        </div>
	        <div class="board_view_wrap">
	            <div class="board_view">
	                <div class="title">
	                    ${board.title }
	                </div>
	                <div class="info">
	                    <dl>
	                        <dt>번호</dt>
	                        <dd>${board.board_no }</dd>
	                    </dl>
	                    <dl>
	                        <dt>글쓴이</dt>
	                        <dd>${board.id }</dd>
	                    </dl>
	                    <dl>
	                        <dt>작성일</dt>
	                        <dd>${board.create_date }</dd>
	                    </dl>
	                    <dl>
	                        <dt>조회</dt>
	                        <dd>${board.view_cnt }</dd>
	                    </dl>
	                </div>
	                <div>
	                	<c:forEach var="file" items="${boardfiledtolist}">
							<h5><a href="/camp/board/download/${board.id}/${board.board_no}/${file.boardFileno}">${file.originalFilename}</a></h5>
						</c:forEach>
	                </div>
	                <div class="cont">
	                    ${board.content }
	                </div>
	            </div>
	            <div class="bt_wrap">
	                <a href="/camp/board/list.do?category=all" class="on">목록</a>
	                <a href="/camp/board/update.do">수정</a>
	            </div>
	        </div>
	    </div>
	</form>

</body>
</html>