<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container {
	border: 2px solid black;
	padding-bottom: 15px;
	margin: 20px;
	border-radius: 5px;
	box-shadow: 2px 2px 2px;
}
</style>
</head>
<body>
	<h1>캠핑리스트</h1>

	<div class="container">
		<div class="row">
			
			<c:forEach var="campingList" items="${campingList }">
				<div class="col-xs-4">
					<a href="/camp/test/camp_read">
					<h2>${campingList.camp_name }</h2>
					</a>
					<a href="/camp/test/camp_read"> <img src="/camp/images/camp3.jpg" width="150"
						height="150">
					</a>
					<div id="business_no" style="display: none">캠핑장 번호 : ${campingList.business_no }
						
					</div>
					<div>
						대표 : ${campingList.business_name } <br/>
						전화번호 : ${campingList.camp_tel } <br/>
						email : ${campingList.email } <br/>
						<button type="button" class="btn btn-info">예약하기</button>
					</div>
				</div>
			</c:forEach>
			<form action="/camp/camping/search.do" method="POST">
				<div>
					<input type="text" name="search" /> <input type="submit" value="검색">
					</div>
			</form>
			
		</div>
	</div>
</body>
</html>