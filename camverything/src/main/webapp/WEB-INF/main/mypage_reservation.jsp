
<%@page import="com.multi.camp.login.LoginDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE>
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
 <title>mypage</title>
  <link href="/camp/common/css/styles.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <meta charset="utf-8" />
        <title>mypage</title>
         <style>
        #imageeee{
			padding-top:200px;
			padding-bottom:150px;
			background-image: url("/camp/images/mypagemain.jpg");
		}	
	         	/*===여기서 부터 submenu ====  */
		.main {
			width: 1200px;
			margin: auto;
		}
		
		.mainstart{
		
			padding-top:100px;
		}
		
		ul, li {
			list-style: none;
			margin: 0;
			padding: 0;
			border: 0;
			outline: 0;
			font-weight: 400;
			font-style: inherit;
			font-size: 15px;
			font-family: 'S-Core Dream', 'notokr', sans-serif;
			vertical-align: baseline;
			color: #555;
		}
		
		
		.location {
			position:relative;
			width: 100%;
			float: left;
			background: #FFFFFF;
			height: 50px;
			border-bottom: #DDDDDD 1px solid;
		}
		.submenu{
			position: absolute;
			margin-left:360px;
			/* bottom: 10px; */
		}
		
		.submenu li {
			clear: both;
			width: 170px;
			border: #ccc 1px solid;
			height:50px;
			margin-top: 10px;
			box-sizing: border-box;
			display: inline-block;
			margin: 0 -3px;
			
			padding-top:15px;
			vertical-align: middle;
		    text-align: center;
		}
		
		.submenu a {
			color:black;
			text-decoration: none;
		}
		/* 여기까지 submenu  */
		
		.mainWrapper{
			padding-top:120px;
			margin:auto;
			width:1200px;
			height:auto;
			padding-bottom:200px;
		}
		
		
		#resTable{
			width:1200px;
			border-top:  #39517A 0.1rem solid;
			border-bottom:  #39517A 0.1rem solid;
			border-left:  #39517A 0.1rem solid;
			border-right:  #39517A 0.1rem solid;
		}
		
		/*bootstrap에 이부분 설정돼있어서 덮어씌우기용  */
		.table> :not(:first-child){
			border-top: #39517A 0.1rem solid;
		}
		.table > tbody > tr > th{
			background-color:#ADD8E6;
			vertical-align: middle;
			text-align: center;
			border-left:  #39517A 0.1rem solid;
		}
		.table > tbody > tr > td{
			vertical-align: middle;
			text-align: center;
			padding-top:20px;
			padding-bottom:20px;
			border-left:  #39517A 0.1rem solid;
		}
		
		#contentTable{
			border-top:  0;
			border-bottom:  0;
			border-left: 0;
			border-right:  #39517A 0.1rem solid;
		}
		
		#contentTable > tbody > tr > th{
			border: #ddd 0.1rem solid;
			background-color: white;
			padding:0;
		}
		
		#contentTable tr:nth-child(1) th {
    	border-top: 2px solid #e55450;
    	
		}
		#contentTable tr:nth-child(1) td {
	 	 	border-top: 2px solid #39517A;
		}
		
		#contentTable> :not(:first-child){
			border: #39517A 0.1rem solid;
		}
		
		.camptitle{
		font-family:'GimpoTitle00';
	    font-size: 28px;
	    color: #000;
	    line-height: 35px;
	    border-bottom: #39517A 2px solid;
	    padding: 0 0 10px 0;
	    font-weight: bold;
	    word-break: keep-all;
	    margin-bottom: 30px;
	    /* font-family: sans-serif; */
	}
	
	.btn {
		background-color: #39517A;
		color: white;
		width:100px;
		text-align:center;
	}
	</style>
         
    <script type="text/javascript">
	    $(document).ready(
				function() {
					/*=================submenu제어 ==================== */
					/*초기 자동 선택된 박스 */
					$("#active").css("background-color","#39517A");
					$("#active").children().css("color","white");
					
					/* 다른 게시판 박스 선택시  */
					$(".selectbox").on("mouseover", function() {
						/*  alert("in");  */
					/* 	$("#active").css("background-color","white");
						$("#active").children().css("color","black"); */
						$(this).css("background-color","#39517A");
						$(this).children().css("color","white");
					})
					$(".selectbox").on("mouseout", function() {
						/* alert("out"); */
						$(this).css("background-color","white");
						$(this).children().css("color","black");
					})
					
					//예약취소부분
					$(".btn").on("click", function() {
						let popOption = "width = 400px, height =200px, top=600px, left=700px, directoryies=no, location=no, status=no, toolbar=no, scrollbars=no";
						let openUrl = '/camp/main/mypagecancelpopup'
						window.open(openUrl,'pop',popOption);
						$.ajax({
							url:"/camp/main/mypagecancel",
							data:{"res_no":$(this).val()},
							success:function(data){
								console.log("예약삭제됨");
								location.reload();
							},
							error:function(error){
								console.log(error);
							}
					})
					
			})
				});
	    
    </script>
    </head>
       <body>
    <div id="imageeee">
	<div class="container">
		<div class="masthead-subheading"><h1>mypage</h1></div>
	</div>
	</div>
	<div class="location">
		<div class="submenu">
			<ul>
				<li class="selectbox"><a href="/camp/main/mypage" class="link">내 정보</a></li>
				<li id="active"><a href="/camp/main/mypagereservation" class="link">캠핑예약</a></li>
				<li class="selectbox"><a href="/camp/main/mypageproduct" class="link">구매용품</a></li>
			</ul>
		</div>
	</div>
	<div class="mainWrapper">
		<div class="camptitle">
				나의 캠핑장예약 신청현황<br/>
		</div>
		<table class="table" id="resTable">
				<colgroup>
					<col style="width: 7%;">
					<col style="width: 10%;">
					<col style="width: 40%;">
					<col style="width: 20%;">
					<col style="width: 20%;">
				</colgroup>
				<tbody class="tbody">
					<tr>
						<th scope="col">예약번호</th>
						<th scope="col">신청일</th>
						<th scope="col">예약내용</th>
						<th scope="col">결제금액</th>
						<th scope="col">신청취소</th>
					</tr>
				<c:forEach var="res" items="${reslist}">
					<tr class="content">
						<td scope="col">${res.res_no}</td>
						<td scope="col">${res.appli_date}</td>
						<td scope="col">${res.facltNm}<br/>${res.camp_loc} / ${res.bbq_option}<br/>${res.camp_date} / ${res.camp_period}</td>
						<td scope="col">${res.pay_price}원</td>
						<td scope="col"><button class="btn" value="${res.res_no}">예약취소</button>
					</tr>
				</c:forEach>
				</tbody>
			</table>
	</div>
        
    </body>
</html>
