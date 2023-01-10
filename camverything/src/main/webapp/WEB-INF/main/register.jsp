
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="/WEB-INF/include/top.jsp"%> 
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
						<label class="control-label col-sm-3" for="id">아이디</label>
						<div class="col-sm-3">
							<input type="text" id="id" name="id"
								placeholder="아이디" class="form-control" 
								minlength="5"  >
							
						</div>
						<span id="checkVal" style="color: red;"></span>
					</div>
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
							<input type="text" class="form-control" name="zipcode"
								id="zipcode" >
						</div>
						<div class="col-sm-2">
							<button type="button"
								class="btn btn-round btn-primary form-control">우편번호 검색</button>
						</div>
					</div>
					<div class="form-group">
						<!-- 주소-->
						<label class="control-label col-sm-3" for="addr">주소</label>
						<div class="col-sm-6">
							<input type="text" id="addr" name="addr" placeholder="주소" class="form-control" >
							
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 col-sm-3 control-label"></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="detailaddr" id="detailaddr"
							placeholder="상세주소를 입력하세요">
						</div>
					
					</div>
					
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
				</div>					
					<div class="form-group">
						<!-- 닉네임-->
						<label class="control-label col-sm-3" for="nickname">닉네임</label>
						<div class="col-sm-3">
							<input type="text" id="nick" name="nickname" 
							placeholder="두 글자 이상 입력하세요"
								class="form-control" minlength="2" >

						</div>
					</div>
					<div class="form-group">
						<!-- 생년월일-->
						<label class="control-label col-sm-3" for="birth">생년월일 6자리</label>
						<div class="col-sm-3">
							<input type="text" id="ssn" name="birth" class="form-control" size="6">

						</div>
					</div>
					<div class="form-group">
						<!-- 이메일-->
						<label class="control-label col-sm-3" for="email" >이메일</label>
						<div class="col-sm-3" >
							<input type="text" id="email" name="email" class="form-control" >
							<select name="mail" class="form-control" >
								<option>@naver.com</option>
								<option>@hanmail.net</option>
								<option>직접 입력</option> <!-- 직접 입력 선택하면 입력 칸으로 어떻게 넘어가게 할지..? -->
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