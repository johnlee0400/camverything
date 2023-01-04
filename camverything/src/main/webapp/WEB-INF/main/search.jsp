<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>한글</title>

<script>
	$(function() {
		$(".datepicker").datepicker(
				{
					dateFormat : "yy-mm-dd",
					changeMonth : true,
					changeYear : true,
					nextText : "다음 달",
					prevText : "이전 달",
					yearSuffix : "년",
					dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일',
							'일요일' ],
					dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ],
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					showOtherMonths : true,
					selectOtherMonths : true,
					changeMonth : true,
					changeYear : true,
					minDate : "1D",
					maxDate : "7D",
					showButtonPanel : true,
					closeText : "닫기",
					onSelect : function(dateString) {
						console.log(dateString);
					}
				});
	});
</script>
<style type="text/css">
.search {
	position: relative;
	width: 300px;
}

.search_bar {
	width: 100%;
	border: 1px solid #bbb;
	border-radius: 8px;
	padding: 10px 12px;
	font-size: 14px;
}

.imgs {
	position: absolute;
	width: 17px;
	top: 10px;
	right: 12px;
	margin: 0;
}

button {
	size: 100px;
}

#wrap {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

#sub {
	display: none;
}

input[type=text].datepicker {
	padding: 4px 2px 5px 25px;
	width: 160px;
	border: 1px solid #CACACA;
	font-size: 11px;
	color: #666;
	background: url('/camp/images/다운로드.png') no-repeat 2px 2px;
	background-size: 15px;
	background-color: white;
}

.select {
	padding-top: 10px;
}

.datepicker {
	border-radius: 10px;
}
</style>
</head>
<body>
	<div class="container-fluid bg-2 text-center">
		<div id="wrap">
			<form class="search">
				<input class="search_bar" type="text" placeholder="검색할 키워드를 입력해 주세요"
					name="search"> <img
					src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"
					class="imgs"> <input type="submit" id="sub">
			</form>
			<div class="btn">
				<form>
					<input type="text" class="datepicker" value="예약날짜를 선택해주세요"
						readonly="readonly" name="date1"> <strong>~</strong> <input
						type="text" class="datepicker" value="예약날짜를 선택해주세요"
						readonly="readonly" name="date2"> <input type="submit"
						class="btn btn-info" value="조회하기">
				</form>
				<div class="select">
					<input type="button" class="btn btn-success" value="지역선택">
				</div>
			</div>
		</div>
		<!-- //wrap -->

	</div>
</body>
</html>