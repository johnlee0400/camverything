<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- datepicker 는 jquery 1.7.1 이상 bootstrap 2.0.4 이상 버전이 필요함 -->
<!-- jQuery가 먼저 로드 된 후 datepicker가 로드 되어야함.-->
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >-->

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="/camp/common/css/datepicker/bootstrap-datepicker3.css">
<link rel="stylesheet" href="/camp/common/css/datepicker/bootstrap-datepicker3.standalone.css">
<link href="/camp/common/css/styles.css" rel="stylesheet" />
<!-- <link rel="stylesheet" href="/camp/common/css/datepicker/bootstrap.css"> -->
<link rel="stylesheet" href="/camp/common/css/bootstrap/bootstrapfix.css"> <!-- css/styles에 먹힌 bootstrap 재현해서 덮어쓰기 thumbnail,well -->
  
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script src="/camp/common/js/datepicker/bootstrap-datepicker.js"></script>
<!--한국어  달력 쓰려면 추가 로드-->
<script src="/camp/common/js/datepicker/bootstrap-datepicker.ko.js"></script> <!--min.  -->

<style type="text/css">

	body {
		/*    font-size: 10px;
	  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);	} */
	}
	
	ul{
		list-style: none;
		padding-left:0;
	}
	a{
		text-decoration: none;
	}
	a:hover{
		text-decoration: none;
	}
	
	#imageeee{
		padding-top:200px;
		padding-bottom:150px;
		background-image: url("/camp/images/campread_banner.jpg");
	}
	
	.subcontainer{
	
		margin-top:100px;
		position:relative;
		margin-left: 200px;
		margin-bottom:100px;
		/* margin:auto; /*  중앙절렬 */ */
	}
	
	.mainWrapper{
		width:1200px;
		float:left;
		
	}
	.main{
		font-family:'Nanum Gothic';
		width:1200px;
		float:left;
		padding-bottom:30px;
		margin-bottom:50px;
		/* border-bottom: #ccc 0.1rem solid; */
	}
	.intro{
		width:1200px;
		clear:both;
		border-top:  #39517A 2px solid;
		border-bottom:  #ccc 0.1rem solid;
		padding-top: 20px;
		padding-bottom: 20px;
	}
	
	.camptitle{
		font-family:'GimpoTitle00';
	    font-size: 28px;
	    color: #000;
	    line-height: 35px;
	    border-bottom: #ccc 0.1rem solid;
	    padding: 0 0 10px 0;
	    font-weight: bold;
	    word-break: keep-all;
	    margin-bottom: 30px;
	    /* font-family: sans-serif; */
	}
	
	.picture{
		width:600px;
		height:550px;
		float:left;
		padding-right: 20px;
	}
	.pictop{
		height:400px;
	}
	.picbottom{
		height:200px;
	}
	.picbottom > div{
		width:193px;
		float:left;
	}
	
	.content{
		width:600px;
		height:550px;
		float:left;
	}
	
	/*===================== 사이드 예약박스부분 ==================*/
	.reserveSide {
		position: sticky;
		width: 340px;
		height: 650px;
		margin: 0 auto;
		border: 0.1rem solid #b6bdc7;
		border-radius: 1.1rem;
		top: 150px; /* sticky조절하려면 얘조절  */
		right: 100px;
		float:right;
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
		
	}
	.sideTitle{
		font-weight: bold;
		padding-top: 20px;
		padding-bottom:5px;
	}
	.select{
		padding-left:40px;
	}
	.totalTitle{
		font-weight: bold;
	}
	
	.total{
		position:absolute;
		top:270px;
		left:0;
		width: 340px;
		height: 300px;
		border-top: 0.1rem solid #b6bdc7;
		padding-left: 40px; 
		padding-top: 25px;  
		/* line-height: 120%;
		vertical-align: middle;
    	text-align: center; */
	}
	
	.reserveBtn {
		position:absolute;
		top:670px;
		left:0;
	    width: 340px;
	    display: table;
	   /*  min-height: 5.4rem; */
	    height:54px;
	    padding: 0 1rem;
	    font-size: 1.8rem;
	    font-weight: bold;
	    background-color: #39517A;
	    border: 0.1rem solid #39517A;
	    border-radius: 0.6rem;
	    text-align: center;
	    box-sizing: border-box;
	}
	
	.reserveBtn > span { /* > child속성만 css적용시킴 자손제외 (reserveBtn의 child인 span속성만 span전체가아니라) */
		font-size:16px;
	    display: table-cell;
	    height: 100%;
	    vertical-align: middle;
	    text-align: center;
	    line-height: 120%;
	    color: #fff;
    
	}
	
	.review{
		width:1200px;
		height:300px;
		/* padding-top:100px; */
		clear:both;
	}
	.well{
		height:250px;
	}
	.reviewImg{
		width:300px;
		height:250px;
		float:left;
	}
	.reviewContent{
		width:500px;
		height:250px;
		float:left;
	}
	
	.mapAPI{
		clear:both;
		width:1200px;
		height:1000px;
	}
	.masthead-subheading{
		/* position:absolute;
		top:300px; */
		padding-top:100px;
	}
	#contentTable{
		height:530px;
	}
	
	.tbody tr:nth-child(1) th {
    	border-top: 2px solid #e55450;
    	
	}
	.tbody tr:nth-child(1) td {
 	 	border-top: 2px solid #39517A;
	}
	
	/*bootstrap에 이부분 설정돼있어서 덮어씌우기용  */
	.table > tbody > tr > th{
		background-color:#ADD8E6;
		vertical-align: middle;
	}
	.table > tbody > tr > td{
		vertical-align: middle;
	}
	
	/* 쓸만한 font적용 */
	@font-face {
	    font-family: 'GimpoTitle00';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/GimpoTitle00.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);

	.nanumgothic * {
 		font-family: 'Nanum Gothic', sans-serif;
	}
</style>
<script type="text/javascript">
	//a태그로 form submit하기 function
	function chk_form() {
		document.getElementById('frm').submit();
	}
	

	//jquery작동부분
	$(document).ready(function() {
		//kakao페이 요청 (submit하고 왔는데 check값 1을 가져왔으면 작동)
		//alert($("#check").val());
		if($("#check").val()=="1"){
			$.ajax({
				url:"/camp/res/kakaopay",
				data:{"facltNm":"${dto.facltNm}"},
				dataType:"json", //받을 데이터 형식
				success:function(data){
					console.log("성공");
					console.log(data.next_redirect_pc_url);
					window.location.replace(data.next_redirect_pc_url);
				},
				error:function(error){
					console.log(error);
				}
			})
		}
		
		//=========결제처리부분============
		//URL파라미터값(쿼리스트링) 얻기
		const urlStr = window.location.href; //현재페이지의 URL얻기
		const url = new URL(urlStr);

		const urlParams = url.searchParams;

		const paramValue = urlParams.get('reservation');
		//console.log(paramValue);
		
		//키의 값에 따라 결제팝업창띄우기 
		if(paramValue == "cancel"){
			let popOption = "width = 400px, height =200px, top=600px, left=700px, directoryies=no, location=no, status=no, toolbar=no, scrollbars=no";
			let openUrl = '/camp/res/fail'
			window.open(openUrl,'pop',popOption);
			$.ajax({
				url:"/camp/res/cancel",
				success:function(data){
					console.log("예약삭제됨");
				},
				error:function(error){
					console.log(error);
				}
			})
		}
		else if(paramValue == "success"){
			let popOption = "width = 400px, height =280px, top=600px, left=700px, directoryies=no, location=no, status=no, toolbar=no, scrollbars=no";
			let openUrl = '/camp/res/success'
			window.open(openUrl,'pop',popOption);
		}
		
		//httpsession에서 id값 가져와서 저장하기
		$("#hiddenid").val("${user.id}"); //임시처리중
		//sessionStorage.getItem(id); 로그인되면  <-- javascript로 session정보 받는 함수
		
		//======사진바뀌게하는 jquery======
		$("#pic1").on("click", function() {
			/*  alert("hihih"); */
			$("#result").attr("src", "${dto.firstImageUrl}");
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
					{
						format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
						startDate: "0",	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
				        language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
					}
		).datepicker("setDate","1")//오늘날짜로 datepicker 날짜선택
		///처음 로드될때 선택된 오늘날짜로 뿌리기
		$.ajax({
			    			url:"/camp/res/campdatelist",
			    			type:"get",   //밑에 data는 임의데이터 처리하는부분이라 비지니스 넘버도 임의로
			    			data:{"camp_date":new Date().getFullYear()+"-"+(new Date().getMonth()+1)+"-"+new Date().getDate()},
			    			success:function(list){
			    				//alert(list); 
			    				var period = list[0].camp_period.split('/'); //list 배열 한개뿐
		    					var location = list[0].camp_loc.split('/');
		    					var price = list[0].area_price.split('/');
		    					
			    				for(var i=0;i<period.length;i++){
			    					$("#periodselect").append("<option>"+period[i]+"</option>");
			    				}
			    				for(var i=0;i<location.length;i++){
			    					$("#locselect").append("<option>"+location[i]+"</option>");
			    				}
			    				
			    				//=====페이지 처음 들어왔을때 초기값 가격=====
			    				$("#periodmultiple").text(1); //초기가 1박2일임
			    				$("#loctotal").text(price[0]);
			    				$("#bbqtotal").text(0); //초기가 선택안함이어서

			    				result = parseInt($("#periodmultiple").text())*parseInt($("#loctotal").text());
			    				$("#total").text(result);
			    				result = $("#total").text().toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			    				$("#total").text(result);
			    				
			    				//======submit용 pay_price 저장========
			    				$("#hiddentotal").val($("#total").text());
			    				
			    				//======submit용 camp_date 저장========
			    				today = new Date().getFullYear()+"-"+(new Date().getMonth()+1)+"-"+new Date().getDate();
			    				$("#hiddendate").val(today);
			    				/* alert($("#hiddendate").val()); */
			    				
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
			    			data:{"camp_date":date},
			    			success:function(list){
			    				//alert(list); 
			    					$("#periodselect").empty(); //append삭제관리
			    					$("#locselect").empty(); //append삭제관리
			    					$("#priceselect").empty(); //append삭제관리
			    					
			    					var period = list[0].camp_period.split('/'); //list 배열 한개뿐
			    					var location = list[0].camp_loc.split('/');
			    					var price = list[0].area_price.split('/');
			    				for(var i=0;i<period.length;i++){
			    					$("#periodselect").append("<option>"+period[i]+"</option>");
			    				}
			    				for(var i=0;i<location.length;i++){
			    					$("#locselect").append("<option>"+location[i]+"</option>");
			    				}
			    				
			    				
			    				//=====초기값때 가격 =====
			    				$("#periodmultiple").text(1);
			    				$("#loctotal").text(price[0]);
			    				
			    				result = parseInt($("#periodmultiple").text())*parseInt($("#loctotal").text());
			    				$("#total").text(result);
			    				result =$("#total").text().toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","); // 3자리마다 콤마
			    				$("#total").text(result);
			    				
			    				//=====camp_date 바뀔때 저장된거 바뀌게 =====
			    				$("#hiddendate").val(date);
			    				/* alert($("#hiddendate").val()); */
			    					
			    			},
			    			error:function(obj,msg,statusMsg){
			    				alert("오류발생=>"+obj+","+msg+","+statusMsg)
			    			}
			    		})
				})
				
		/*############### 예약쪽 select박스 선택시 ajax호출해서 select해오는작업  ##########################*/
		
		$(".onselect").on("change", function() {
			/* alert($(this).val()); */
			
			/* alert($("#bbq option:selected").attr("id")); //바비큐 selectbox에서 옵션 선택하면 선택된 option id값 알수있음 */
				
			var select=$(this).val(); //선택값
			$.ajax({
    			url:"/camp/res/campdatelist",
    			type:"get",
    			data:{"camp_date":$("#hiddendate").val()},
    			success:function(list){
    				//alert(list); 
    				
    				var period = list[0].camp_period.split('/'); //list 배열 한개뿐
					var location = list[0].camp_loc.split('/');
					var price = list[0].area_price.split('/');
					//console.log("select=>"+select);
    				console.log("period[0] =>"+period[0]+"period[1] =>"+period[1]+"period[2] =>"+period[2]);
						/* $("#total").text(price[0]);//선택했을때 계속 더해지지 않고 다시 초기값으로 */
					for(var i=0;i<period.length;i++){
						//console.log("select=>"+select);
						console.log("period i=>"+period[i]);
						//console.log("periodlength"+period.length);
    					if(select==period[i]){//selectbox에서 선택하면 그선택에따른 가격으로 변동
    						$("#periodmultiple").text(i+1);  //캠핑장가격에 곱할값 예:강변A(10만에) 2박3일이면 => 2를 10만에 곱하면됨
    						//console.log("i=>"+i);
    						//console.log("multiple은=>"+$("#periodmultiple").text());
    					}
    				}
					for(var i=0;i<location.length;i++){
    					if(select==location[i]){
    						$("#loctotal").text(price[i]);
    						console.log("areaprice=>"+$("#loctotal").text());
    					}
    				}
					
					//##########bbq옵션 처리##############
					for(var i=0;i<2;i++){
    					if(select=="바비큐 사용안함"){
    						$("#bbqtotal").text(0);
    						console.log("bbqtotal=>"+$("#bbqtotal").text());
    					}
    					else if(select=="바비큐(+20000)"){
    						$("#bbqtotal").text(20000);
    						console.log("bbqtotal=>"+$("#bbqtotal").text());
    					}
    				}
					
					//console.log("select=>"+select);
					//##########bbq옵션 처리##############
					//var bbq = $("#bbq option:selected").attr("id");
					console.log("multi=>"+$("#periodmultiple").text());
					console.log("loctotal=>"+$("#loctotal").text());
					
					//날짜랑 캠프가격 곱하기
					result =parseInt($("#periodmultiple").text())*parseInt($("#loctotal").text())
						+parseInt($("#bbqtotal").text());
					console.log("result=>"+result);
					//합계에 곱한결과 넣기
					$("#total").text(result);
					console.log("total=>"+$("#total").text());
					
					
					//$("#total").text(parseInt($("#total").text())+parseInt(bbqtotal));
					//합산
					$("#total").text()+parseInt($("#bbqtotal").text());
					result = $("#total").text().toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
					$("#total").text(result);
					
					//세자리마다 콤마넣기
					
					
					//total값들 체크용
					/* alert($("#periodtotal").text());
					alert($("#loctotal").text()); */
					
					
					//$$$$$$$$ 전송용 total처리 $$$$$$$
					$("#hiddentotal").val(parseInt($("#total").text()));
					//alert($("#hiddentotal").val());
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
<!--카카오페이용 submit check하기 -->
<input style="display:none" id="check" value="${check}"/>
<!--#########숨겨짐###############  -->
<div id="imageeee">
		<div class="container">
			<div class="masthead-subheading">
				<h1>상세페이지</h1>
			</div>
		</div>
	</div>

<div class="subcontainer">
	<form action="/camp/res/insert.do?facltNm=${dto.facltNm}" method="post"
					enctype="multipart/form-data" id="frm" onsubmit="return false;">
	<div class="mainWrapper"> <!-- 그림, 설명포함 -->
		<div class="camptitle">
				${dto.facltNm}<br/>
		</div>
		<div class="main">
			<div class="picture">
				<div class="pictop">
					<div class="thumbnail">
						<img src="${dto.firstImageUrl}" alt="Lights" style="width: 100%"
							id="result">
					</div>
				</div>
				<div class="picbottom">
					<div class="thumbnail"> 
						<img src="${dto.firstImageUrl}" id="pic1">
					</div>
					<div class="thumbnail"> 
						<img src="/camp/images/camp2.jpg" id="pic2">
					</div>
					<div class="thumbnail"> 
						<img src="/camp/images/camp3.jpg" id="pic3">
					</div>
				</div>
			</div>
			<div class="content">	
			<table class="table" id="contentTable">
				<colgroup>
					<col style="width: 30%;">
					<col style="width: 70%;">
				</colgroup>
				<tbody class="tbody">
					<tr>
						<th scope="col">주소</th>
						<td>${dto.addr1}</td>
					</tr>
					<tr>
						<th scope="col">문의처</th>
						<td>${dto.tel}</td>
					</tr>
					<tr>
						<th scope="col">캠핑장 환경</th>
						<td>${dto.lctCl} / ${dto.facltDivNm}</td>
					</tr>
					<tr>
						<th scope="col">캠핑장 유형</th>
						<td>${dto.induty}</td>
					</tr>
					<tr>
						<th scope="col">운영기간</th>
						<td>${dto.operPdCl}</td>
					</tr>
					<tr>
						<th scope="col">운영일</th>
						<td>${dto.operDeCl}</td>
					</tr>
					<tr>
						<th scope="col">홈페이지</th>
						<td>
							<a href="${dto.homepage}" target="_BLANK" title="새창열림">홈페이지 바로가기</a>
						</td>
					</tr>						
					<tr>
						<th scope="col">주변이용가능시설</th>
						<td>${dto.sbrsCl}</td>
					</tr>
				</tbody>
			</table>
			</div>
			<div class="intro">
				${dto.intro}
		</div>
		</div>
	</div>
	<div class="reserveSide">
		<div class="sideTop">
			<div class="datepicker">
			</div>
		</div>
		<div class="sideBottom">
		<!-- ##################################################숨겨진total값들 -->
		<div id="periodmultiple" style="display:none"></div>
		<div id="loctotal" style="display:none"></div>
		<div id="bbqtotal" style="display:none"></div>
		<!-- ####################################################  -->		
			<ul class="select">
				<li class="selectPeriod">
					<div class="sideTitle">기간</div>
					<div class="selectedData">
						<select id="periodselect" class="onselect" name="camp_period">
							
						</select>
					</div>
				</li>
			</ul>
			<ul class="select">
				<li class="selectCamp">
					<div class="sideTitle">캠핑장</div>
					<div class="selectedData">
						<select id="locselect" class="onselect" name="camp_loc" >
						</select>
					</div>
				</li>
			</ul>
			<ul class="select">
				<li class="selectPrice">
					<div class="sideTitle">부가옵션A</div>
					<div class="selectedData">
						<select class="onselect" id="bbq" name="bbq_option">
							<option id="nobbq">바비큐 사용안함</option>
							<option id="yesbbq">바비큐(+20000)</option>
						</select>
					</div>
				</li>
			</ul>
			<div class="total">
				<div class="totalTitle">가격: <span id="total"></span>원</div>
			</div>
			<!--$$$$$ total값 전송용 input -->
			<input style="display:none" id="hiddenfacltNm" value="${dto.facltNm}" name="facltNm"/>
			<input style="display:none" id="hiddentotal" name="pay_price"/>
			<!-- $$$$$$$$$$$$$$$$$$$$$$ -->
			<!--$$$$$ camp_date값 전송용 input -->
			<input style="display:none" id="hiddendate" name="camp_date"/>
			<!-- $$$$$$$$$$$$$$$$$$$$$$ -->
			<!--$$$$$ camp_date값 전송용 input -->
			<input style="display:none" id="hiddenid" name="id"/>
			<!-- $$$$$$$$$$$$$$$$$$$$$$ -->
		</div>
		<a href="#" onclick="return chk_form()" class="reserveBtn" id="reserveBtn"> <!--a태그로 submit작동하기  -->
			<span>예약하기</span>
		</a>
	</div>
	<!-- <div class="review">
		<div class="camptitle">
				리뷰
		</div>
		<div class="well">
			<div class="reviewImg">
				<img src="/camp/images/camp4.jpg" id="pic3">
			</div>
			<div class="reviewContent">
				좋은 캠핑장이었다
			</div>
		</div>
	</div> -->
	<div class="mapAPI">
		<div class="camptitle">
				오시는길
		</div>
		<div id="map" style="width: 1200px; height: 800px;"></div>
			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2eab02a4a684e29b601c8b338c17388f"></script>
			<script>
				var container = document.getElementById('map');
				var options = {
					center : new kakao.maps.LatLng(${dto.mapY}, ${dto.mapX}), //y, x
					level : 3
				};
				
				var map = new kakao.maps.Map(container, options);
			</script>
		</div>
	</form>
</div>	
</body>
</html>


