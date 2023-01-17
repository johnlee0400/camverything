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
		  $("#result").attr("src","/camp/images/camp1.jpg");
	  })
	  $("#pic2").on("click", function() {
		 /*  alert("hihih"); */
		  $("#result").attr("src","/camp/images/camp2.jpg");
	  })
	  $("#pic3").on("click", function() {
		 /*  alert("hihih"); */
		  $("#result").attr("src","/camp/images/camp3.jpg");
	  })
})
$(document).ready(function() {
	$('#num').on('keyup', function() {
		var num = (${product.product_price }*$('#num').val());
		$('#total').val(num);
	})
})
</script>
<style type="text/css">
	.subcontainer{
	
		margin-top:100px;
		position:relative;
		margin-left: 200px;
	}
	.mainWrapper{
		width:1000px;
/* 		float:left; */
		
	}
	.main{
		width:1000px;
		height:600px;
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
		width:400px;
		height:600px;
		float:left;
	}
</style>
</head>
<body>
<div id="imageeee">
		<div class="container">
			<div class="masthead-subheading"><h1></h1></div>
		</div>
	</div>
<div class="subcontainer">
	<div class="mainWrapper"> <!-- 그림, 설명포함 -->
		<div class="camptitle">
				<h3>상품상세</h3>
		</div>
		<div class="main">
			<div class="picture">
				<div class="pictop">
					<div class="thumbnail">
						<img src="/camp/images/camp1.jpg" alt="Lights" style="width: 100%"
							id="result">
					</div>
				</div>
				<div class="picbottom">
					<div class="thumbnail"> 
						<img src="/camp/images/camp1.jpg" id="pic1">
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
			<form role="form" class="form-horizontal"
				action="" method="POST" name="myform">
				<div class="col-lg-10" id="font">
					<h5>
						상품명 : ${product.product_name }
					</h5>
					<p>${product.product_content }</p>
					<p>가격 : ${product.product_price }</p>
					<p>종류 : ${product.category }</p>
					<p>재고량 : ${product.quantity }</p>
					<p>
						구매수량 : <input type="text" name="num" id="num">
					</p>
					<p>
<!-- 						total price : <div id="total" name="total"></div> -->
						total price : <input type="number" name="total" id="total" readonly="readonly" style="border: none">
					</p>

					<button type="submit" class="btn btn-primary btn-lg">결제하기</button>
				</div>
			</form>
			</div>
		</div>
		</div>
</div>

</body>
</html>