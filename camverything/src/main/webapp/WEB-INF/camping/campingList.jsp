<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript">
	category = "${category}"
	$(document).ready(function() {
		$("#category").val(category).attr("selected","selected");
		$("#category").change(function() {
			location.href="/camp/camping/list.do?category="+encodeURI($(this).val())
		});
	});
</script>
<style type="text/css">
	.main {
		width: 1200px;
		margin: auto;
	}
</style>
</head>
<body>

<div id="imageeee">
	<div class="container">
		<div class="masthead-subheading"><h1>커뮤니티</h1></div>
	</div>
</div>
	<h1 style="text-align: center;">캠핑리스트</h1>
	<div class="container">
		<div class="row">
					지역선택: <form action="">
						<select name="category" id="category">
								<option value="1" selected="selected">전체</option>
								<option value="서울">서울</option>
								<option value="경기도">경기도</option>
								<option value="강원도">강원도</option>
								<option value="충청도">충청도</option>
								<option value="경상도">경상도</option>
								<option value="전라도">전라도</option>
								<option value="제주도">제주도</option>
						</select>
						</form>
			<c:forEach var="campingList" items="${campingList }">
				<div class="col-xs-4">
						<h2>
							<a
								href="/camp/test/camp_read?business_no=${campingList.business_no }">${campingList.camp_name }</a>
						</h2>
						<img src="/camp/images/camp3.jpg" width="150" height="150">

						<div id="business_no" style="display: none">캠핑장 번호 :
							${campingList.business_no }</div>

						<div>
							대표 : ${campingList.business_name } <br /> 전화번호 :
							${campingList.camp_tel } <br /> email : ${campingList.email } <br />
							<button type="button" class="btn btn-info"
								onclick="location.href='/camp/test/camp_read?business_no=${campingList.business_no }'">예약하기</button>
						</div>
					</div>
				</c:forEach>


			</div>
		</div>
	</div>
</body>
</html>