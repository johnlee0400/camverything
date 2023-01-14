<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
// 		$("#list1").hide();
// 		$("#list2").hide();
		$(".selectbox").change(function() {
			var sel = $(".selectbox option:selected").val();
			if (sel == "1") {
				$("#search").keydown(function(key) {
					if(key.keyCode == 13){
				var data =  $("#search").val()
				var sel = $(".selectbox option:selected").val();
 					location.href="/camp/camping/search.do?search="+encodeURI($("#search").val());
				}
				})
			} else if(sel == "2"){
				$("#search").keydown(function(key) {
					if(key.keyCode == 13){
				var data =  $("#search").val()
				var sel = $(".selectbox option:selected").val();
 				location.href="/camp/product/search.do?search="+encodeURI($("#search").val());
					}
				})
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

#wrap {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.selectbox {
	width: 250px;
	color: black;
	margin-bottom: 15px;
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

	<div class="container-fluid bg-2 text-center">
		<div id="wrap">
			<div id="form">
				<select class="selectbox" name="selectbox">
					<option selected disabled="disabled">검색할 목록을 선택해주세요.</option>
					<option value="1">캠핑장 목록</option>
					<option value="2">캠핑용품 목록</option>
				</select> <input class="search_bar" type="text"
					placeholder="검색할 키워드를 입력해 주세요" name="search" id="search"> 
				<input type="submit" id="sub">
			</div>
		</div>
	</div>
</body>
</html>