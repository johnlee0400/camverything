<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				<div class="masthead-subheading">
					<h1>커뮤니티</h1>
				</div>
			</div>
		</div>
	<div class="main">
		<h1 style="text-align: center;">캠핑리스트</h1>
		<div style="text-align: center;">
			<form action="/camp/camping/search.do" method="POST">
				<input type="text" name="search" placeholder="캠핑장을 입력해주세요." /> <input
					type="submit" value="검색" />
			</form>
		</div>
		<div class="container">
			<div class="row">

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