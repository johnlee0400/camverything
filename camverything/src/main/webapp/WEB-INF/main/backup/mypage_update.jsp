<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
  <link href="/camp/common/css/styles.css" rel="stylesheet" />
	<!-- 기존 부트스트랩 -->
	<!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> -->
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<style>
	
	#input{
		text-align:center; 
		display:block; 
		margin: 0 auto;
	}
	table {
    margin-left:auto; 
    margin-right:auto;
    text-align: center;
    border: 1px solid #444444;
    border-collapse: collapse;
	}
	th,td {
	width : 400px;
    height : 50px;
	border: 1px solid #444444;
	padding: 10px;
	
	}
	</style>

	
	
	<script >
	$(document).ready(function(){ 
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
<div id="imageeee">
	<div class="container">
		<div class="masthead-subheading"><h1>Login</h1></div>
	</div>
	</div>
	<div class="text-center font-italic">
		<h2>내정보수정</h2>
	</div>
<!-- 	<div class="container-fluid d-flex justify-content-around "> -->
			<form role="form" class="form-horizontal"	action="/camp/main/mypage_update.do" method="POST" name="mypageupdate">
				<fieldset>
					<!-- 변경되면 안되는 항목 -->
					<!-- 아이디 -->
					<table>  
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
							<input type="text" class="form-control col-sm-1 col-lg-1" name="zonecode" id="zonecode" >
							<button type="button" class="btn btn-primary col-sm-3 col-lg-3" onclick="findAddr()">우편번호 검색</button>
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
					</table>
						<div class="form-group" >
						<!-- Button -->
						<div style="text-align: center;">
							<input type="submit" value="수정하기"   class="btn btn-primary"/>

						</div>
					</div>
				
			     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
			</fieldset>
		</form>
</body>
</html>
	
