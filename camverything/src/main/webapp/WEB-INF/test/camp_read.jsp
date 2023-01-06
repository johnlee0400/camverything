<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- <link rel="stylesheet" href="/erp/resources/common/css/main.css" /> -->
  <link rel="stylesheet" href="/erp/common/css/main.css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script> 
  <style type="text/css">
  	h2{
  		text-align:center;
  	}
  	
  	/* #test{
  		border: 5px solid black;
  	} */
  	
  </style>
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
	  //=============================
	  $('.datepicker').datepicker();
	  
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
          		<img src="/camp/images/camp1.jpg" alt="Lights" style="width:100%" id="result">
          </div>
        </div>
        <!-- <a href="#" target="_blank"> -->
        <div class="col-lg-4">
        	 <div class="thumbnail">
          		<img src="/camp/images/camp1.jpg" alt="Lights" style="width:100%" id="pic1">
          	</div>
         </div>
          
        <!-- <a href="#" target="_blank"> -->
        <div class="col-lg-4">
        	<div class="thumbnail">
          		<img src="/camp/images/camp2.jpg" alt="Nature" style="width:100%" id="pic2">
          	</div>
        </div>
        
        <div class="col-lg-4">
        	<div class="thumbnail">
          		<img src="/camp/images/camp3.jpg" alt="Nature" style="width:100%" id="pic3">
          	</div>
        </div>
      </div>
	     <form role="form" class="form-horizontal" 
					action="/camp/res/insert.do" method="POST"
					name="myform">
	      <div class="col-lg-4" id="font">
	       <h2>인천청라국제도시 <br/>해변공원캠핑장</h2>
			  <p>청라국제도시의 해변공원 내에 위치한 도심 캠핑장 캠핑을 위해 이동하는 거리가 아까운 이들에게 최적인 도심지 캠핑장이다. </p>
			  <p>	인천 서구 첨단서로 190 (청라동)</p>
			  <p>	일반야영장</p>
			<p>예약넘버 <input type="text" name="res_no"></p>
			<p>사업자번호 <input type="text" name="business_no"></p>
			<p>아이디 <input type="text" name="id"></p>
			<p>체크인 <input type="text" name="checkin"></p>
			<!-- <p>체크아웃 <input type="text" name="checkout"></p> -->
			<p>이름 <input type="text" name="name"></p>
			
			<button type="submit" class="btn btn-primary btn-lg">예약하기</button>
	     </div>
  		</form>
 	 </div>
  </div>
 <hr>
<div class="container">
	<div class="well col-lg-8"><!--큰틀  -->
	   		<div class="col-lg-4"> <!-- 큰틀에포함됨1  -->
	   			<img src="/camp/images/camp4.jpg" alt="Nature" style="width:100%" id="pic3">
	   		</div>
	   		<div class="col-lg-6"> <!-- 큰틀에포함됨2  -->
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
	 			<img src="/camp/images/cal1.png" alt="Nature" style="width:100%">
			 </div>
		</div>
	 <div class="col-lg-6" style="height:500px">
	 		<img src="/camp/images/map1.jpg" alt="Nature" style="width:100%;height:100%;">
	 </div>
 </div>
</div>  
<hr> 
<div class="container">

<div class="datepicker"></div>
<input data-provide="datepicker">

<div class="input-group date" data-provide="datepicker-inline">
    <input type="text" class="form-control">
    <div class="input-group-addon">
        <span class="glyphicon glyphicon-th"></span>
    </div>
</div>
</div>
</body>
</html>


