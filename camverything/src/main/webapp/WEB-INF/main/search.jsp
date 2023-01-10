<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script type="text/javascript">
	var category = "{$category}";
	$(document).ready(function() {
		$("#list1").hide();
		$("#list2").hide();
		$(".selectbox").change(function() {
			var sel = $(".selectbox option:selected").val();
			if (sel == "1") {
				$("#list1").show();
				$("#list2").hide();
				$("#local").click(function() {
					$("#local").val(category).attr("selected", "selected");
					$("#local").change(function() {
						alert("체인지확인");
						location.href="/camp/camping/search2.do?search="+encodeURI($("#search").val())+"&local="+encodeURI($(this).val());
					})
				})
			} else {
				$("#list2").show();
				$("#list1").hide();
			}
		})
	})
	
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
	color: black;
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

.btn btn-default dropdown-toggle {
	padding-top: 10px;
}

/* #sub { */
/* 	display: none; */
/* } */

.dropdown {
	margin-bottom: 15px;
}

.selectbox {
	width: 250px;
	color: black;
	margin-bottom: 15px;
}
.select{
	color: black;
}
</style>
</head>
<body>

	<div class="container-fluid bg-2 text-center">
		<div id="wrap">
			
			<form>
				<select class="selectbox" name="selectbox" >
					<option selected disabled="disabled">검색할 종류를 선택해주세요.</option>
					<option value="1">캠핑장 목록</option>
					<option value="2">캠핑용품 목록</option>
				</select>
			<!-- </form>
			<form class="search"> -->
				<input class="search_bar" type="text" placeholder="검색할 키워드를 입력해 주세요"
					name="search" id="search"> <img
					src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"
					class="imgs">
					
				<div class="btn">
					<div class="select" id="list1">
						<select name="local" id="local">
							<optgroup label="지역선택">
								<option value="10">서울</option>
								<option value="20">경기도</option>
								<option value="30">강원도</option>
								<option value="40">충청도</option>
								<option value="50">경상도</option>
								<option value="60">전라도</option>
								<option value="70">제주도</option>
							</optgroup>
						</select>
					</div>
					<div class="select" id="list2">
						<select name="local">
							<optgroup label="캠핑용품">
								<option value="10">용품구매</option>
								<option value="20">먹거리</option>
							</optgroup>
						</select>
					</div>
				</div>
				<input type="submit" id="sub">
			</form>
			
		</div>
		<!-- //wrap -->

	</div>
</body>
</html>