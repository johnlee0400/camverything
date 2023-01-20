<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
 
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <title>login</title>
	<title>Insert title here</title>
	<link href="/camp/common/css/registercss.css" rel="stylesheet" />
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<!-- 회원가입 유효성 검사 -->
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
				
				location.href="/camp/main/insert.do"				
				return true;
			});
		
		
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
			$("#checkVal").html("<h6>" + txt + "</h6>")
		}
		function error_run(obj, msg, statusMsg) {
			
		}
		function success_run2(txt2) {
			//alert(txt)
			$("#checkNickVal").html("<h6>" + txt2 + "</h6>")
		}
		function error_run1(obj, msg2, statusMsg2) {

		}
	</script>
	
</head>
	
<body>
	<script>/* 버튼으로 이동 */
	$(document).ready(function() {
		document.querySelector('.img__btn').addEventListener('click', function() {
		  document.querySelector('.cont').classList.toggle('s--signup');
		});
	});
	</script>
	<form action="/camp/login.do" method="post">
	
		<div class="cont"  style="margin-top: 200px">
		  <div class="form sign-in">
		    <h2>Login</h2>
		    <label>
	      		<span>아이디</span>
	      		<input type="text" name="loginid" />
	    	</label>
	    	<label>
			      <span>비밀번호</span>
			      <input type="password" name="loginpass"/>
	    	</label>
		    
		    <button type="submit" class="submit">로그인</button>
		  </div>
		 
	 
	  <div class="sub-cont">
	    <div class="img">
	    <div class="img__text m--up">
	        <h2>처음이라면?</h2>
	        <p>함께해요!</p>
	        
	      </div>
	      <div class="img__text m--in">
	        <h2>계정이 있다면?</h2>
	        <p>로그인하세요.기다렸어요!</p>
	      </div>
	      <div class="img__btn">
	        <span class="m--up">회원가입</span>
	        <span class="m--in">로그인</span>
	      </div>
	    </div>
	    <div class="form sign-up" style="overflow:scroll;">
	      <h2>Join! Let's go Camping</h2>
	      <!-- 아이디 -->
	      <label for="id">
	        <span>아이디</span>
	        <input type="text" id="myid" name="id" placeholder="4글자 이상 입력하세요"/> 
	      </label>
	      <div id="checkVal" style="color: red; text-align: center;">${msg }</div> 
	      
	      <!-- 비밀번호 -->
	      <label>
	        <span>비밀번호</span>
	        <input type="password" id="pass" 
	        name="pass" placeholder="8글자 이상 입력하세요" />
	      </label>
	      <div id="checkPassVal1" style="color: red; font-size:14px; text-align: center;"></div>
	      
	      <label>
	        <span>비밀번호 확인</span>
	        <input type="password" id="pass2"/>
	      </label>
	      <div id="checkPassVal2" style="color: red; font-size:14px; text-align: center;"></div>
	      
	      
	      <label>
	        <span>이름</span>
	        <input type="text" id="name" name="name"/>
	      </label>
	      <label>
	        <span>우편번호</span>
	        <input type="text" name="zonecode" id="zonecode"/>
	      </label>
	      <button type="button" onclick="findAddr()" style="background:#B5AA99">우편번호 검색</button>
	
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
	      <label>
	        <span>주소</span>
	        <input type="text" id="addr" name="addr" placeholder="주소" />
	      </label>
	      <label>
	        <span>상세주소</span>
	        <input type="text" name="detailaddr" id="detailaddr" placeholder="상세주소를 입력하세요"/>
	      </label>
	      <label>
	        <span>핸드폰</span>
	        <input type="text" id="tel" name="tel" placeholder="예)010-1234-5670"
				onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');"/>
	      </label>
	      <label>
	        <span>닉네임</span>
	        <input type="text" id="nick1" name="nickname" placeholder="두 글자 이상 입력하세요"/>
	      </label>
	      <div id="checkNickVal" style="color: red; font-size: 14px; text-align: center;">${msg2 }</div>
	      
	       <label>
	        <span>생년월일</span>
	        <input type="text" id="birth" name="birth"
				placeholder="예)730110" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
	      </label>
	       <label>
	        <span>이메일</span>
	        <input type="email" id="email" name="email"/>
	      </label>
	      <button type="button" class="submit" id="registerbtn">가입하기</button>
	      
	    </div>
	  </div>
	</div>
</form>
	
</body>
</html>
	