<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script> 
  <link href="/camp/common/css/styles.css" rel="stylesheet" />
  <link rel="stylesheet" href="/camp/common/css/bootstrap/bootstrapfix.css">
<script type="text/javascript">
$(document).ready(function() {
	  $("#pic1").on("click", function() {
		 /*  alert("hihih"); */
		  $("#result").attr("src","${product.product_img }");
	  })
	  $("#pic2").on("click", function() {
		 /*  alert("hihih"); */
		  $("#result").attr("src","${product.product_img2 }");
	  })
	  $("#pic3").on("click", function() {
		 /*  alert("hihih"); */
		  $("#result").attr("src","${product.product_img3 }");
	  })
	  $('#num').on('keyup', function() {
		var num = (${product.product_price }*$('#num').val());
		$('#total').val(num);
		
	  })
	  if($("#check").val()=="1"){
			$.ajax({
				url:"/camp/product_Buy/kakaopay",
				dataType:"json", //받을 데이터 형식
				success:function(data){
					window.location.replace(data.next_redirect_pc_url);
				},
				error:function(error){
				}
			})
		}
	  
	//=========결제처리부분============
		//URL파라미터값(쿼리스트링) 얻기
		const urlStr = window.location.href; //현재페이지의 URL얻기
		const url = new URL(urlStr);

		const urlParams = url.searchParams;

		const paramValue = urlParams.get('reservation');
		console.log(paramValue);
		//키의 값에 따라 결제팝업창띄우기 
		if(paramValue == "cancel"){
			let popOption = "width = 400px, height =200px, top=500px, left=550px, directoryies=no, location=no, status=no, toolbar=no, scrollbars=no";
			let openUrl = '/camp/product/fail'
			window.open(openUrl,'pop',popOption);
			$.ajax({
				url:"/camp/product/cancel",
				success:function(data){
				},
				error:function(error){
				}
			})
		}
		else if(paramValue == "success"){
			let popOption = "width = 400px, height =280px, top=500px, left=550px, directoryies=no, location=no, status=no, toolbar=no, scrollbars=no";
			let openUrl = '/camp/product/success'
			window.open(openUrl,'pop',popOption);
		}
})

</script>
<style type="text/css">
	.subcontainer{
	
		margin-top:100px;
		position:relative;
		margin-left: 200px;
	}
	.mainWrapper{
		width:1200px;
		margin: auto;
/* 		float:left; */
		
	}
	.main{
		width:1200px;
		height:600px;
		margin: auto;
/* 		float:left; */
	}
	
	.picture{
		width:600px;
		height:600px;
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
		height:600px;
		float:left;
	}
	.col-lg-10{
		border-radius: 4px;
		padding: 10px;
	}
	.table > tbody > tr > th{
		background-color:#ADD8E6;
		vertical-align: middle;
	}
	.table > tbody > tr > td{
		vertical-align: middle;
	}

	#imageeee{
		padding-top:200px;
		padding-bottom:150px;
		background-image: url("/camp/images/product_banner.jpg");
	}
</style>
</head>
<body>
<div id="imageeee">
		<div class="container">
			<div class="masthead-subheading"><h1>상품상세</h1></div>
		</div>
	</div>
	<input style="display:none" id="check" value="${check}"/>
<div class="subcontainer">
	<div class="mainWrapper"> <!-- 그림, 설명포함 -->
		<div class="camptitle">
				<h3>${product.product_name }</h3>
		</div>
		<div class="main">
			<div class="picture">
				<div class="pictop">
					<div class="thumbnail">
						<img src="${product.product_img }" alt="Lights" style="width: 75%; height: 390px;"
							id="result">
					</div>
				</div>
				<div class="picbottom">
					<div class="thumbnail"> 
						<img src="${product.product_img }" id="pic1" style="height: 120px">
					</div>
					<div class="thumbnail"> 
						<img src="${product.product_img2 }" id="pic2" style="height: 120px">
					</div>
					<div class="thumbnail"> 
						<img src="${product.product_img3 }" id="pic3" style="height: 120px">
					</div>
				</div>
			</div>
			<div class="content">
			<form role="form" class="form-horizontal"
				action="/camp/product_Buy/insert.do" method="get" name="myform">
				<div class="col-lg-10" id="font">
 				<input type="hidden" id="result" name="product_img" value="${product.product_img }">
				<input type="hidden" name="product_name" value="${product.product_name }">
				<input type="hidden" name="product_code" value="${product.product_code }">
					<table class="table" id="contentTable">
				<colgroup>
					<col style="width: 30%;">
					<col style="width: 70%;">
				</colgroup>
				<tbody class="tbody">
					<tr>
						<th scope="col">상품명</th>
						<td>${product.product_name }</td>
					</tr>
					<tr>
						<th scope="col">상품상세</th>
						<td>${product.product_content }</td>
					</tr>
					<tr>
						<th scope="col">가격</th>
						<td>${product.product_price }</td>
					</tr>
					<tr>
						<th scope="col">분류</th>
						<td>${product.category }</td>
					</tr>
					<tr>
						<th scope="col">구매수량</th>
						<td><input type="text" name="quantity" id="num" value="0"></td>
					</tr>
					<tr>
						<th scope="col">결제금액</th>
						<td>
							<input type="number" name="total" id="total" readonly="readonly" style="border: none" value="0">원
						</td>
					</tr>						
				</tbody>
			</table>

					<button type="submit" class="btn btn-primary btn-lg">결제하기</button>
				</div>
			</form>
			</div>
		</div>
		</div>
</div>

</body>
</html>