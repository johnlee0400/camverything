<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- datepicker 는 jquery 1.7.1 이상 bootstrap 2.0.4 이상 버전이 필요함 -->
<!-- jQuery가 먼저 로드 된 후 datepicker가 로드 되어야함.-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<link rel="stylesheet" href="/camp/common/css/datepicker/bootstrap-datepicker3.css">
<link rel="stylesheet" href="/camp/common/css/datepicker/bootstrap-datepicker3.standalone.css">

<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script src="/camp/common/js/datepicker/bootstrap-datepicker.js"></script>

<!--한국어  달력 쓰려면 추가 로드-->
<script src="/camp/common/js/datepicker/bootstrap-datepicker.ko.js"></script> <!--min.  -->
<style type="text/css">
	/* .reserveSide {
	    width: 33rem;
	    margin: 0 auto;
	    border: 0.1rem solid #b6bdc7;
	    border-radius: 1.5rem;
	    } */
</style>
<script type="text/javascript">
$(document).ready(function() {

	//실제 사용 방법
	$('.datepicker').datepicker(
				{
					format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
					//startDate: '3d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
			        language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
				});
})
</script>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="reserveSide">
		<div class="datepicker" >
		</div>
	</div>
</div>
	
	
	
</body>
</html>