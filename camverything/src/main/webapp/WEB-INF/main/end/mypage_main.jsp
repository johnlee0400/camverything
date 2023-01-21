
<%@page import="com.multi.camp.login.LoginDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
	
	
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
        <!-- Core theme CSS (includes Bootstrap)-->
         <style>
         
         	#container2{
         		width : 600px;
         		margin : auto;
         		padding: 50px 20px;
         	}
         	table {
			    margin-left:auto; 
			    margin-right:auto;
			    text-align: center;
			    border: 1px;
				}
				
			table, tr, th {
			    
			    text-align: center;
			   	width: 300px;
			   	height: 50px;
				};	
				
			
         </style>
         
         <script>
        function MemberUpdate(){
		location.href="mypage_update";
			}
        function Memberdelete(){
        	location.href="/camp/main/mypage_delete.do?id=${user.id}";
        }
		</script>
    </head>
       <body>
       
       
    <div id="imageeee">
	<div class="container">
		<div class="masthead-subheading"><h1>mypage</h1></div>
	</div>
	</div>
        <!-- Page Content-->
        <div id="container2" class="container">
            <!-- Heading Row-->
            <div class="row">
                <div> <h1 style= "text-align:center; font:weight-light;">내정보</h1></div>
                    <div >
					<table>
						<tr>
						<th>아이디</th>
						<th>${user.id}</th>
						</tr>
						<tr>
						<th>이름</th>
						<th>${user.name}</th>
						</tr>
						<tr>
						<th>닉네임</th>
						<th>${user.nickname}</th>
						</tr>
						<tr>
						<th>핸드폰번호</th>
						<th>${user.tel}</th>
						</tr>
						<tr>
						<th>주소</th>
						<th>${user.addr}</th>
						</tr>
						<tr>
						<th>생년월일</th>
						<th>${user.birth}</th>
						</tr>
						<tr>
						<th>이메일</th>
						<th>${user.email}</th>
						</tr>
					</table>
                    </div>
          			  </div>
          			  <div style="text-align: center;">
          			  <button type="submit" class="btn btn-primary"id="button" style ="width :100px; higth : 20px; margin : auto;" onclick="MemberUpdate()" >내정보수정 </button>
          			  <button type="submit" class="btn btn-primary"id="button" style ="width :100px; higth : 20px; margin : auto;" 
          			  			onclick="Memberdelete()" >회원탈퇴 </button>
          			  			
          			  			<!-- if(confirm('정말 삭제하시겠습니까?')) -->
          			  </div>
                    </div>
        <!-- Footer-->
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
    </body>
</html>
