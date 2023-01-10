<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script> 
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
		console.log(num);
		$('#total').val(num);
	})
})
</script>
</head>
<body>
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
				action="" method="POST" name="myform">
				<div class="col-lg-4" id="font">
					<h2>
						상품명 : ${product.product_name }
					</h2>
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

					<button type="submit" class="btn btn-primary btn-lg">예약하기</button>
				</div>
			</form>
		</div>
	</div>
	<hr>

</body>
</html>