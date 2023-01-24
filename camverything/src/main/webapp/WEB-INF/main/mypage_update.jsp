
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
			width:600px;
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
			padding-top:10px;
			padding-bottom:10px;
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
	
	.tableWrapper{
		position: relative;
		width:600px;
		margin:auto;
	}
	
	#update{
		position:absolute;
		width:200px;
		right:0;
		padding-top:10px;
		padding-bottom:10px;
	}
	#cancel{
		position:absolute;
		padding-top:10px;
		padding-bottom:10px;
		width:200px;
		left:0;
	}
	#zonecode{
		width:240px;
		float:left;
		margin-right:10px;
	}
	#zonebtn{
		width:140px;
		float:left;
	}
	
	</style>
         
    <script type="text/javascript">
    function MemberCancel(){
    			window.location.href ="/camp/main/mypage";
			}
    function MemberUpdate(){
		    	let popOption = "width = 400px, height =200px, top=400px, left=700px, directoryies=no, location=no, status=no, toolbar=no, scrollbars=no";
				let openUrl = '/camp/main/mypageinfoupdatepopup'
				window.open(openUrl,'pop',popOption);
    	
    			document.getElementById('frm').submit();
			}
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
					
					$("#nick1").on("blur",function(){
						var querydata = {"nickname":$("#nick1").val()}
						if($("#nick1").val().length<2){
							$("#checkNickVal").text("2글자 이상 입력해주세요");
							return false;
						}else{
							$.ajax({
								url:"/camp/ajaxnick",
								type:"get",
								data:querydata,
								success:success_run2,
								error:error_run1
							})//end ajax
						}
					})//end click
					//null값 체크
					$("#birth").on("blur",function(){//생년월일 길이 확인
						var querydata = {"birth":$("#birth").val()}
						if($("#birth").val().length<2){
							$("#birthCheck").text("6글자로 입력해주세요");
							return false;
						}else if($("#birth").val().length==6){
							$("#birthCheck").text("입력완료");
						}
					})//end click
					$("#registerbtn").on("click", function() {
							//alert('test~~~~~'+$("#myid").val())
							if ($("#pass").val() == "") {
								alert("비밀번호를 입력해주세요");
								return false;
							}
							if ($("#zonecode").val() == "") {
								alert("우편번호 검색을 해주세요");
								return false;
							}
							if ($("#detailaddr").val() == "") {
								alert("상세주소를 입력해주세요");
								return false;
							}
							if ($("#tel").val() == "") {
								alert("핸드폰번호를 입력해주세요");
								return false;
							}
							if ($("#nick1").val() == "") {
								alert("닉네임을 입력해주세요");
								return false;
							}
							if ($("#email").val() == "") {
								alert("이메일을 입력해주세요");
								return false;
							}
							return true;
						});
					//아이디 유효한 값 아닐 때 못 넘어가게 하는 거
					
					//비밀번호 확인하는 거 체크하기
					
					$("#pass").on("blur",function(){//비밀번호 글자수 체크
						var querydata = {"pass":$("#pass").val()}
						if($("#pass").val().length<8){
							$("#checkPassVal1").text("8글자 이상 입력해주세요");
							return false;
						}else{
							$("#checkPassVal1").text("입력완료");
						}
					})//end click
					
					$("#pass2").on("blur",function(){//비밀번호 중복확인
						var pwd1=$("#pass").val();
			            var pwd2=$("#pass2").val();
			            
			            if(pwd1 != "" || pwd2 != ""){
			       			if(pwd1 == pwd2){
			       				$("#checkPassVal2").text("비밀번호 일치");
			       			}else{
			       				$("#checkPassVal2").text("비밀번호 불일치");
			       				return false;
				       			}
			       			}
					})//end click
					
				});//document 끝
	    
			  //유효성 검사 메시지들
				function success_run1(txt) {
					//alert(txt)
					$("#checkVal").html("<h5>" + txt + "</h5>")
				}
				function error_run(obj, msg, statusMsg) {
					
				}
				function success_run2(txt2) {
					//alert(txt)
					$("#checkNickVal").html("<h5>" + txt2 + "</h5>")
				}
				function error_run1(obj, msg2, statusMsg2) {
		
				}
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
				<li id="active"><a href="/camp/main/mypage" class="link">내 정보</a></li>
				<li class="selectbox"><a href="/camp/main/mypagereservation" class="link">캠핑예약</a></li>
				<li class="selectbox"><a href="/camp/main/mypageproduct" class="link">구매용품</a></li>
			</ul>
		</div>
	</div>
	<div class="mainWrapper">
		<div class="camptitle">
				나의 정보<br/>
		</div>
		<div class="tableWrapper">
		<form role="form" class="form-horizontal"	action="/camp/main/mypage_update.do" method="POST" name="mypageupdate">
		
		<table class="table" id="resTable">
				<colgroup>
					<col style="width: 30%;">
					<col style="width: 80%;">
					
				</colgroup>
				<tbody class="tbody">
					<tr>
					<th>
						<label class="control-label col-sm-6" >아이디</label>
					</th>
					<td>
						<input type="hidden" name="id" value="${user.id}">${user.id}
					</td>
					</tr>
					<!-- 이름-->
					<tr>
						<th>
						<label class="control-label col-sm-6">이름</label>
						</th>
						<td>
						<input type="hidden" name="name" value="${user.name}">${user.name}
						</td>
					</tr>
					<!-- 생년월일-->
					<tr>
						<th>
						<label class="col-sm-4 col-sm-6 control-label" name="birth">생년월일</label>
						</th>
						<td>
						<input type="hidden" name="birth" value="${user.birth}">${user.birth}
						</td>
					</tr>
					
					
					<!--  변경가능한 항목 -->
					<!-- 패스워드 -->
					<tr>
						<th>
						<label class="control-label col-sm-6" for="pass">비밀번호</label>
						</th>
						<td>
							<input type="password" id="pass" name="pass" minlength="8"
								placeholder="8글자 이상 입력하세요" class="form-control"  >
							<div id="checkPassVal1" style="color: red; font-size:14px;" ></div>
						</td>
					</tr>
					<tr>
						<th>
						<label class="control-label col-sm-6" for="pass">비밀번호 확인</label>
						</th>
						<td>
							<input type="password" id="pass2" minlength="8"
								placeholder="비밀번호 확인" class="form-control" >
							<div id="checkPassVal2" style="color: red; font-size:14px"></div>
						</td>
					</tr>	

						
							<!-- <div class="alert alert-success " id="PassRight" style="color: green; font-size: 14px;">비밀번호 일치</div>
							<div class="alert alert-danger" id="PassWrong" style="color: red; font-size: 14px; ">비밀번호 불일치</div> -->
							
					<tr>
						<th>
						<label class="col-sm-6 control-label">우편번호</label>
						</th>
						<td>
						<div>
							<input type="text" name="zonecode" class="form-control" id="zonecode">
							<button type="button" class="btn btn-primary" onclick="findAddr()" id="zonebtn">우편번호 검색</button>
						</div>
						</td>
						</tr>
						
					<tr>
						<th>
						<!-- 주소-->
						<label class="col-sm-6 col-sm-6 control-label" for="addr">주소</label>
						</th>
						<td>
							<input type="text" class="form-control" id="addr" name="addr" placeholder="주소"  >
						</td>
					<tr>
						<th>
						<label class="col-sm-6 col-sm-6 control-label" for ="detailaddr" >주소2</label>
						</th>
						<td>
							<input type="text" class="form-control" name="detailaddr" id="detailaddr"
							placeholder="상세주소를 입력하세요" >
					<!-- 카카오 주소찾기 -->	
					<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
					<script>
					function findAddr(){
						new daum.Postcode({
					        oncomplete: function(data) {
					        	document.querySelector("#zonecode").value = data.zonecode;
					            document.querySelector("#addr").value = data.address
					        }
					    }).open();
					 }
					</script>
					</td>
					<tr>
						<th>
						<!-- 핸드폰-->
						<label class="col-sm-6 col-sm-6 control-label" for="tel">핸드폰번호</label>
						</th>
						<td>
						<div class="col-sm-6"> 
							<input type="text" id="tel" name="tel" class="form-control" placeholder=" 예)010-1234-5670"
							 onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');" maxlength="13">
						</div>
						</td>
					</tr>
					<tr>
						<!-- 닉네임-->
						<th>
						<label class="control-label col-sm-6" for="nickname">닉네임</label>
						</th>
						<td>
							<div class="col-sm-6">
							<input type="text" id="nickname" name="nickname" 
							placeholder="두 글자 이상 입력하세요"
								class="form-control" minlength="2" >
								</div>
							<div id="checkNickVal" style="color: red; font-size: 14px; ">${msg2 }</div>
						</td>
						<!--버튼으로 체크할 경우 <div class="col-sm-2">
							<button type="button" name="nickcheck" id="nickcheck" 
							class="btn btn-round btn-primary form-control">
							닉네임중복확인</button>
						</div> --> 
					</tr>
					
					<tr>
						<!-- 이메일-->
						<th>
						<label class="col-sm-6 col-sm-6 control-label" for="email">이메일</label>
						</th>
						<td>
						<div>
							<input type="text" id="email" name="email" class="form-control" >
							
							<!--이메일 뒷부분 선택하게 할 경우
							<select name="mail" class="form-control" >
								 <option value="type">직접 입력</option>
								<option>@naver.com</option>
								<option>@hanmail.net</option> 
								</select>
								-->
						</div>
						</td>
						</tr>
							</tbody>
			</table>
		
	<div style="width:600px">
    	<button class="btn" onclick="MemberUpdate()" id="update">수정완료</button>
          			  			<!-- if(confirm('정말 삭제하시겠습니까?')) -->
    </div>  
     </form>     			  			
    	<button class="btn" onclick="MemberCancel()" id="cancel">취소하기</button>
    </div>  
	</div>
    
    </body>
</html>
