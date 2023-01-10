<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="/erp/resources/common/css/main.css" /> -->
<!-- datepicker 는 jquery 1.7.1 이상 bootstrap 2.0.4 이상 버전이 필요함 -->
<!-- jQuery가 먼저 로드 된 후 datepicker가 로드 되어야함.-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<link rel="stylesheet" href="/camp/common/css/datepicker/bootstrap-datepicker3.css">
<link rel="stylesheet" href="/camp/common/css/datepicker/bootstrap-datepicker3.standalone.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script src="/camp/common/js/datepicker/bootstrap-datepicker.js"></script>
<!--한국어  달력 쓰려면 추가 로드-->
<script src="/camp/common/js/datepicker/bootstrap-datepicker.ko.js"></script> <!--min.  -->

<style type="text/css">
	h2 {
		text-align: center;
	}
	
	.body {
		margin: 0;
	}
	
	.reserveSide {
		position: fixed;
		width: 340px;
		height: 650px;
		margin: 0 auto;
		border: 0.1rem solid #b6bdc7;
		border-radius: 1.5rem;
		top: 100px;
		right: 100px;
	}
	
	.datepicker {
		position: absolute;
		width: 240px;
		height: 240px;
		margin: 10px;
		left: 20px;
		font-size: 18px;
	}
	
	.sideTop{
		position:absolute;
		width: 340px;
		height: 300px;
	}
	.sideBottom{
		position:absolute;
		top:300px;
		width: 340px;
		height: 300px;
		border-top: 0.1rem solid #b6bdc7;
		padding-left: 20px; 
	}
	.sideTitle{
		font-weight: bold;
		padding-top: 20px;
	}
	/* .selectedData{
		position:absolute;
		font-size:15px;
		left:50px;
	} */
	
	ul{
		list-style: none;
	}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		//======사진바뀌게하는 jquery======
		$("#pic1").on("click", function() {
			/*  alert("hihih"); */
			$("#result").attr("src", "/camp/images/camp1.jpg");
		})
		$("#pic2").on("click", function() {
			/*  alert("hihih"); */
			$("#result").attr("src", "/camp/images/camp2.jpg");
		})
		$("#pic3").on("click", function() {
			/*  alert("hihih"); */
			$("#result").attr("src", "/camp/images/camp3.jpg");
		})
		//=============================
		//데이트픽커 (bootstrap datepicker)
		$('.datepicker').datepicker(
				//'setDate','1'),
				
					{
						format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
						startDate: "0",	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
				        language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
					}
		).datepicker("setDate","1")//오늘날짜로 datepicker 날짜선택
		///처음 로드될때 선택된 오늘날짜로 뿌리기
		$.ajax({
			    			url:"/camp/res/campdatelist",
			    			type:"get",
			    			data:{"business_no":"121212","camp_date":new Date().getFullYear()+"-"+(new Date().getMonth()+1)+"-"+new Date().getDate()},
			    			success:function(list){
			    				//alert(list); 
			    				for(var i=0;i<list.length;i++){
			    					$("#periodselect").append("<option>"+list[i].camp_period+"</option>");
			    					$("#locselect").append("<option>"+list[i].camp_loc+"</option>");
			    					$("#priceselect").append("<option>"+list[i].area_price+"</option>");
			    				}
			    			},
			    			error:function(obj,msg,statusMsg){
			    				alert("오류발생=>"+obj+","+msg+","+statusMsg)
			    			}
			    		})
		$('.datepicker').on("changeDate", function(e) { //https://www.javatpoint.com/bootstrap-datepicker-get-date-on-change-event
			            var date = e.format();  //bootstrap datepicker 날짜얻기
			        	//===========Ajax 데이터 주고받는곳=========
			    		$.ajax({
			    			url:"/camp/res/campdatelist",
			    			type:"get",
			    			data:{"business_no":"121212","camp_date":date},
			    			success:function(list){
			    				//alert(list); 
			    					$("#periodselect").empty(); //append삭제관리
			    					$("#locselect").empty(); //append삭제관리
			    					$("#priceselect").empty(); //append삭제관리
			    				for(var i=0;i<list.length;i++){
			    					$("#periodselect").append("<option>"+list[i].camp_period+"</option>");
			    					$("#locselect").append("<option>"+list[i].camp_loc+"</option>");
			    					$("#priceselect").append("<option>"+list[i].area_price+"</option>");
			    				}
			    			},
			    			error:function(obj,msg,statusMsg){
			    				alert("오류발생=>"+obj+","+msg+","+statusMsg)
			    			}
			    		})
				})
	})

	
</script>

</head>
<body>
	<hr>
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<div class="col-lg-12">
					<div class="thumbnail">
						<img src="/camp/images/camp1.jpg" alt="Lights" style="width: 100%"
							id="result">
					</div>
				</div>
				<!-- <a href="#" target="_blank"> -->
				<div class="col-lg-4">
					<div class="thumbnail">
						<img src="/camp/images/camp1.jpg" alt="Lights" style="width: 100%"
							id="pic1">
					</div>
				</div>

				<!-- <a href="#" target="_blank"> -->
				<div class="col-lg-4">
					<div class="thumbnail">
						<img src="/camp/images/camp2.jpg" alt="Nature" style="width: 100%"
							id="pic2">
					</div>
				</div>

				<div class="col-lg-4">
					<div class="thumbnail">
						<img src="/camp/images/camp3.jpg" alt="Nature" style="width: 100%"
							id="pic3">
					</div>
				</div>
			</div>
			<form role="form" class="form-horizontal"
				action="/camp/res/insert.do" method="POST" name="myform">
				<div class="col-lg-4" id="font">
					<h2>
						인천청라국제도시 <br />해변공원캠핑장
					</h2>
					<p>청라국제도시의 해변공원 내에 위치한 도심 캠핑장 캠핑을 위해 이동하는 거리가 아까운 이들에게 최적인 도심지
						캠핑장이다.</p>
					<p>인천 서구 첨단서로 190 (청라동)</p>
					<p>일반야영장</p>
					<p>
						예약넘버 <input type="text" name="res_no">
					</p>
					<p>
						사업자번호 <input type="text" name="business_no">
					</p>
					<p>
						아이디 <input type="text" name="id">
					</p>
					<p>
						체크인 <input type="text" name="checkin">
					</p>
					<!-- <p>체크아웃 <input type="text" name="checkout"></p> -->
					<p>
						이름 <input type="text" name="name">
					</p>

					<button type="submit" class="btn btn-primary btn-lg">예약하기</button>
				</div>
			</form>
		</div>
	</div>
	<hr>
	<div class="container">
		<div class="well col-lg-8">
			<!--큰틀  -->
			<div class="col-lg-4">
				<!-- 큰틀에포함됨1  -->
				<img src="/camp/images/camp4.jpg" alt="Nature" style="width: 100%"
					id="pic3">
			</div>
			<div class="col-lg-6">
				<!-- 큰틀에포함됨2  -->
				좋은 캠핑장이었다
			</div>
		</div>
	</div>
	<hr>
	<div class="container" id="test">
		<div class="row">
			<div class="col-lg-6">
				<div class="col-lg-12">
					<h2>캠핑장 안내</h2>
					<table class="table table-bordered">
						<thead>
							<tr class="active">
								<th>캠핑장 종류</th>
								<th>캠핑장 요금</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>A</td>
								<td>100000만원</td>
							</tr>
							<tr>
								<td>B</td>
								<td>200000만원</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-lg-12">
					<img src="/camp/images/cal1.png" alt="Nature" style="width: 100%">
				</div>
			</div>
			<div class="col-lg-6" style="height: 500px">
				<img src="/camp/images/map1.jpg" alt="Nature"
					style="width: 100%; height: 100%;">
			</div>
		</div>
	</div>
	<hr>
	<div class="reserveSide">
		<div class="sideTop">
			<div class="datepicker">
			</div>
		</div>
		<div class="sideBottom">
			<ul class="select">
				<li class="selectPeriod">
					<h4 class="sideTitle">기간</h4>
					<div class="selectedData">
						<select id="periodselect">
							
						</select>
					</div>
				</li>
			</ul>
			<ul class="select">
				<li class="selectCamp">
					<h4 class="sideTitle">캠핑장</h4>
					<div class="selectedData">
						<select id="locselect">
						</select>
					</div>
				</li>
			</ul>
			<ul class="select">
				<li class="selectPrice">
					<h4 class="sideTitle">가격</h4>
					<div class="selectedData">
						<select id="priceselect">
						</select>
					</div>
				</li>
			</ul>
			<ul class="select">
				<li class="selectPrice">
					<h4 class="sideTitle">부가옵션A</h4>
					<div class="selectedData">
						<select>
							<option>바비큐 사용안함</option>
							<option>바비큐(+20000)</option>
						</select>
					</div>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>


