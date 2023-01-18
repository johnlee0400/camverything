
<%@page import="com.multi.camp.login.LoginDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>

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
         	
         	#table{
         		width : 300px;
         		margin : 0px auto;
         		padding: 20px;
         	}
         	#button{
         		width :100px;
         		higth : 20px;
         		margin : auto;
         	}
         </style>
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
                    <div  style="text-align: center;">
                    <p> 아이디 : </p>
                    
                    </div>
          			  </div>
          			  <div style="text-align: center;">
          			  <button type="submit" class="btn btn-primary"id="button" onclick ="location.href='/main/mypage_update.do'" >내정보수정 </button>
          			  </div>
                    </div>
            <!-- Content Row-->
            <div id = "container2" class="container">
            <div class="row gx-6 gx-lg-6">
                <div class="col-md-6 mb-6">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title" style ="text-align:center;">예약정보</h2>
                            <p class="card-text"></p>
                        </div>
                        <div class="card-footer" style ="text-align:center;"><a class="btn btn-primary btn-sm" href="#!" >More Info</a></div>
                    </div>
                </div>
                <div class="col-md-6 mb-6">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title"style ="text-align:center;">구매내역</h2>
                            <p class="card-text"></p>
                        </div>
                        <div class="card-footer" style ="text-align:center;"><a class="btn btn-primary btn-sm" href="#!" style ="text-align:center;">More Info</a></div>
                    </div>
                </div>
                </div>
            </div>
        <!-- Footer-->
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
    </body>
</html>
