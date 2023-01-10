<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
 
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	
	
 </head>
	
<body>
	<h4>회원 가입</h4>
	<div class="container-fluid">
			
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
					
					<div class="form-group">
						<!-- 아이디-->
						<script type="text/javascript">
						$(document).ready(function(){//아이디 중복확인 ajax
							$("#idcheck").on("click",function(){
								var querydata = {"id":$("#id1").val()}
								$.ajax({
									url:"/camp/ajax",
									type:"get",
									data:querydata,
									success:success_run1,
									error:error_run
								})//end ajax
							})//end click
						})//end ready
						//ajax요청
						function success_run1(txt){
							//alert(txt)
							$("#checkVal").html("<h5>"+txt+"</h5>")
						}
						function error_run(obj,msg,statusMsg) {
							
						}
						</script>
						<label class="col-sm-3 col-sm-3 control-label" for="id">아이디</label>
						<div class="col-sm-3">
							<input type="text" id="id1" name="id"
							 class="form-control" 
								minlength="5"  >
							
						</div>
						<div class="col-sm-2">
							<button type="button" name="idcheck" id="idcheck" 
							class="btn btn-round btn-primary form-control">
							아이디중복확인</button>
							
						</div>
						<div id="checkVal" style="color: red; ">${msg }</div> 
					</div>
					
					<!-- 패스워드 -->
					
					
					</script>
					<div class="form-group">
						<!-- 패스워드-->
						<label class="control-label col-sm-3" for="pass">비밀번호</label>
						<div class="col-sm-3">
							<input type="text" id="pass" name="pass"
								placeholder="패스워드" class="form-control" >

						</div>
						 
					</div>
					 
					<!-- 비밀번호 확인 집어넣기--> 
					<div class="form-group">
						
						<label class="control-label col-sm-3" for="pass">비밀번호 확인</label>
						<div class="col-sm-3">
							<input type="text" id="pass2" name="pass"
								placeholder="패스워드" class="form-control" >
						</div> 
					
					</div>
					
					
					<div class="form-group">
						<!-- 이름-->
						<label class="control-label col-sm-3" for="name">이름</label>
						<div class="col-sm-3">
							<input type="text" id="orgname" name="name"
								placeholder="이름" class="form-control" minlength="3" >
						</div>
					</div>
								
					<div class="form-group">
						<label class="col-sm-3 col-sm-3 control-label">우편번호</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" name="zonecode" id="zonecode" >
						</div>
						<div class="col-sm-2">
							<button type="button" class="btn btn-round btn-primary form-control"
							onclick="findAddr()">우편번호 검색</button>
						</div>
					</div>
					<div class="form-group">
						<!-- 주소-->
						<label class="control-label col-sm-3" for="addr">주소</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="addr" name="addr" placeholder="주소"  >	
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 col-sm-3 control-label"></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="detailaddr" id="detailaddr"
							placeholder="상세주소를 입력하세요">
						</div>
					
					</div>
					<!-- 카카오 주소찾기 : 팝업이 안뜸...?-->	
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
						<label class="control-label col-sm-3" for="tel">핸드폰번호</label>
						<div>
						 <div class="col-sm-3"> 
							<input type="text" id="tel" name="tel" class="form-control" size="3" >
							<!-- 
							<input type="text" id="tel" name="tel2"	class="form-control" size="4" >
							<input type="text" id="tel" name="tel3" class="form-control" size="4" > -->
						</div>
					</div>
													
					<div class="form-group">
						<!-- 닉네임-->
						<script type="text/javascript">
						$(document).ready(function(){//닉네임 중복확인 ajax
							$("#nickcheck").on("onclick",function(){
								var querydata = {"nickname":$("#nick1").val()}
								$.ajax({
									url:"/camp/ajaxnick",
									type:"get",
									data:querydata,
									success:success_run2,
									error:error_run1
								})//end ajax
							})//end click
						})//end ready
						//ajax요청
						function success_run2(txt2){
							//alert(txt)
							$("#checkNickVal").html("<h5>"+txt2+"</h5>")
						}
						function error_run1(obj,msg2,statusMsg2) {
							
						}
						</script>
						<label class="col-sm-3 col-sm-3 control-label" for="nickname">닉네임</label>
						<div class="col-sm-3">
							<input type="text" id="nick1" name="nick" 
							placeholder="두 글자 이상 입력하세요"
								class="form-control" minlength="2" >
						</div>
						<div class="col-sm-2">
							<button type="button" name="nickcheck" id="nickcheck" 
							class="btn btn-round btn-primary form-control">
							닉네임중복확인</button>
						</div>
						<div id="checkNickVal" style="color: red; ">${msg2 }</div> 
					</div>
					
					
					
					<div class="form-group">
						<!-- <script type="text/javascript">
							function checkBirth(birth){
								//길이확인
								if(birth.length<6 || birth.length>6){
									alert("6자리로 입력하세요");
								}else{
									alert("완료");
								}
							}
						</script> -->
						<!-- 생년월일-->
						<label class="control-label col-sm-3" for="birth">생년월일 6자리</label>
						<div class="col-sm-3">
							<input type="text" id="ssn" name="birth" class="form-control" size="6">

						</div>
					</div>
					<div class="form-group">
						<!-- 이메일-->
						<label class="control-label col-sm-3" for="email">이메일</label>
						<div class="col-sm-3" >
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
						<div class="col-sm-5 col-sm-offset-2">
							<input type="submit" value="가입하기" class="btn btn-success"/>
						</div>
					</div>
				</fieldset>
		</form>
			<!-- <div><a href="/camverything/join/insert.do">회원목록보기</a></div> -->
	</div>
	
</body>
</html>
	<%@ include file="/WEB-INF/include/footer.jsp"%> 
