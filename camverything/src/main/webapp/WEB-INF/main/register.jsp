<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
 
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="/camp/common/css/registercss.css" rel="stylesheet" />

	<!-- 기존 부트스트랩 -->
	<!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> -->
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
     
	<script type="text/javascript">
	$(document).ready(function(){ 
		$("#myid").on("blur",function(){
			var querydata = {"id":$("#myid").val()}
			
			if($("#myid").val().length<4){//글자수 체크
				console.log("test" + querydata)
				$("#checkVal").text("4글자 이상 입력해주세요");
				return false;
			}else{//ajax 아이디 중복확인
				$.ajax({
					url:"/camp/ajax",
					type:"get",
					data:querydata,
					success:success_run1,
					error:error_run
				})//end ajax
			}
		})//end click
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
				if ($("#myid").val() == "") {
					alert("아이디를 입력해주세요");
					return false;
				}
				if ($("#pass").val() == "") {
					alert("비밀번호를 입력해주세요");
					return false;
				}
				if ($("#name").val() == "") {
					alert("이름을 입력해주세요");
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
				if ($("#birth").val() == "") {
					alert("생년월일을 입력해주세요");
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
		
		
		})//document끝지점
		
		
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
	<div class="text-center font-italic">
		<h2>SIGN UP</h2>
		<h5>회원가입</h5>
	</div>
	<div class="container-fluid d-flex justify-content-around ">
			
			<form role="form" class="form-horizontal"	action="/camp/main/insert.do" 
				method="POST"	name="myform">
				<fieldset>
					<div id="legend">
					</div>
					<!-- 이미지 삽입부분 : 우선 주석처리, 나중에 활용하게 되면 넣기
					<div class="form-group" style="padding: 40px">
						<p class="centered">
							<img src="/camverything/static/images/logo.png" 
							 id="userImage" style="width: 100px"> 
						</p>
						<div>
							<input type="file" name="userImage"
								onchange="document.getElementById('userImage').src = window.URL.createObjectURL(this.files[0])"
								accept="image/*">
						</div>
					</div> -->
					
					<div class="form-group" >
						<!-- 아이디-->
						
						<label class="col-sm-4 col-sm-4 control-label" for="id">아이디</label>
						<div class="col-sm-7" 
>
							<input type="text" id="myid" name="id"
							 class="form-control" 
								minlength="4" placeholder="4글자 이상 입력하세요" >
							<div id="checkVal" style="color: red; ">${msg }</div> 
						</div>
						<!--버튼으로 체크할 경우 <div class="col-sm-2">
							<button type="button" name="idcheck" id="idcheck" 
							class="btn btn-round btn-primary form-control">
							아이디중복확인</button>
						</div> -->
						
					</div>
					
					<!-- 패스워드 -->
					
					
					</script>
					<div class="form-group">
						<!-- 패스워드-->
						<label class="control-label col-sm-4" for="pass">비밀번호</label>
						<div class="col-sm-7">
							<input type="password" id="pass" name="pass" minlength="8"
								placeholder="8글자 이상 입력하세요" class="form-control" >
							<div id="checkPassVal1" style="color: red; font-size:14px"></div>
						</div>
					</div>
						<div class="form-group">
						<label class="control-label col-sm-4" for="pass">비밀번호 확인</label>
						<div class="col-sm-7">
							<input type="password" id="pass2" minlength="8"
								placeholder="비밀번호 확인" class="form-control" >
							<div id="checkPassVal2" style="color: red; font-size:14px"></div>
							<!-- <div class="alert alert-success " id="PassRight" style="color: green; font-size: 14px;">비밀번호 일치</div>
							<div class="alert alert-danger" id="PassWrong" style="color: red; font-size: 14px; ">비밀번호 불일치</div> -->
						</div> 
						
					</div>
					
					
					<div class="form-group">
						<!-- 이름-->
						<label class="control-label col-sm-4" for="name">이름</label>
						<div class="col-sm-7">
							<input type="text" id="name" name="name"
								placeholder="이름" class="form-control" minlength="3" >
						</div>
					</div>
								
					<div class="form-group">
						<label class="col-sm-4 col-sm-4 control-label">우편번호</label>
						<div class="col-sm-4" >
							<input type="text" class="form-control" name="zonecode" id="zonecode" >
						</div>
						<div class="col-sm-4" style="float:right">
							<button type="button" class="btn btn-round btn-info btn-sm form-control"
							onclick="findAddr()">우편번호 검색</button>
						</div>
					</div>
					<div class="form-group">	
						<!-- 주소-->
						<label class="col-sm-4 col-sm-4 control-label" for="addr"></label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="addr" name="addr" placeholder="주소"  >	
						</div>
					</div>	
					<div class="form-group">			
						<label class="col-sm-4 col-sm-4 control-label"></label>
						<div class="col-sm-8" >
							<input type="text" class="form-control" name="detailaddr" id="detailaddr"
							placeholder="상세주소를 입력하세요">
						</div>
					
					</div>
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
					
					<div class="form-group">
						<!-- 핸드폰-->
						<label class="col-sm-4 col-sm-4 control-label" for="tel">핸드폰번호</label>
						<div class="col-sm-7"> 
							<input type="text" id="tel" name="tel" class="form-control" placeholder="예)010-1234-5670"
							onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');" maxlength="13">
							
						</div>
					</div>
										
					<div class="form-group">
						<!-- 닉네임-->
						<label class="control-label col-sm-4" for="nickname">닉네임</label>
						<div class="col-sm-7">
							<input type="text" id="nick1" name="nickname" 
							placeholder="두 글자 이상 입력하세요"
								class="form-control" minlength="2" >
							<div id="checkNickVal" style="color: red; font-size: 14px; ">${msg2 }</div>
						</div>
						<!--버튼으로 체크할 경우 <div class="col-sm-2">
							<button type="button" name="nickcheck" id="nickcheck" 
							class="btn btn-round btn-primary form-control">
							닉네임중복확인</button>
						</div> -->
						 
					</div>
					
					
					
					<div class="form-group">
						
						<!-- 생년월일-->
						<label class="col-sm-4 col-sm-4 control-label" for="birth">생년월일</label>
						<div class="col-sm-7">
							<input type="text" id="birth" name="birth" class="form-control" 
							maxlength = "6" minlength="6" placeholder="예)730110" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
							<div id="birthCheck" style="color: red; font-size: 14px;"></div>
						</div>
						
					</div>
					<div class="form-group">
						<!-- 이메일-->
						<label class="col-sm-4 col-sm-4 control-label" for="email">이메일</label>
						<div class="col-sm-7" >
							<input type="text" id="email" name="email" class="form-control" >
							
							<!--이메일 뒷부분 선택하게 할 경우
							<select name="mail" class="form-control" >
								 <option value="type">직접 입력</option>
								<option>@naver.com</option>
								<option>@hanmail.net</option> -->
								
							</select>
						</div>
					</div>
					
					
					<div class="form-group">
						<!-- Button -->
						<div class="col-sm-3 col-sm-offset-6">
							<input type="submit" value="가입하기" class="btn btn-success"
							id="registerbtn"/>
						</div>
					</div>
				</fieldset>
		</form>
			<!-- <div><a href="/camverything/join/insert.do">회원목록보기</a></div> -->
	</div>
	
</body>
</html>
	
