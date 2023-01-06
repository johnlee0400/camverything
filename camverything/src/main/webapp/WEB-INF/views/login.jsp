<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <title>login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<!--top윗부분  -->
	<div>
		<div id="topend" class ="col-lg-12">
			<div class="col-lg-10">
			</div>
			<div class="col-lg-2">
				<nav>
	                <ul class="nav navbar-nav" id="topendfont">                                                                                                                                     
	                    <li><a href="#">고객센터</a></li>
	                    <li><a href="#">로그인</a></li>
	                    <li><a href="#">회원가입</a></li>
	                </ul>
	            </nav>
            </div>
		</div>	
		<div id="top" class ="col-lg-12">
			<nav class="navbar-white id="navbar">
                        <!-- logo -->
                 <div class="navbar-header">
                        <div class="col-lg-5">
                            <div class="logo">
                            	<div class="col-lg-6">
	                               <a href="http://localhost:8088/camp/test/index_test"><img src="/camp/images/logo1.png" width="50" height="50" alt=""></a>
                            	</div>
                            	<div class="col-lg-6">
	                               <a href="/camp/test/index_test"><img src="/camp/images/ logo2_footer.png" width="100" height="50" alt=""></a>
                            	</div>
                              
                            </div>
                        </div>
                 </div>
                 <div class="col-lg-3">
                 	</div>
                    <div class="col-lg-4">
                            <!-- main-menu -->
                                <nav>
                                    <ul class="nav navbar-nav">                                                                                                                                     
                                        <li><a href="/camp/test/index_test">Home</a></li>
                                        <li><a href="/camp/test/camp_read">상세 검색</a></li>
                                        <li><a href="#">커뮤니티</a></li>
                                        <li><a href="#">용품구매</a></li>
                                        <li><a href="#">고객센터</a></li>
                                    </ul>
                                </nav>
                        </div>  
                       </nav> 
             </div>  
                                 
        </div>

<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">


            <h3 class="mb-5">Sign in</h3>
            <div class="form-outline mb-4">
              <input type="email" id="typeEmailX-2" class="form-control form-control-lg" placeholder="아이디" id="id" />
            </div>

            <div class="form-outline mb-4">
              <input type="password" id="typePasswordX-2" class="form-control form-control-lg" placeholder="패스워드" id="password"/>
            </div>
 			<div class="d-flex justify-content-between align-items-center">
            <div class="col-md-6 d-flex justify-content-center">
          <!-- Checkbox -->
          <div class="form-check mb-0 mb-md-0">
            <input class="form-check-input" type="checkbox" value="" id="loginCheck" checked />
            <label class="form-check-label" for="loginCheck"> Remember me </label>
          </div>
        </div>

        <div class="col-md-6 d-flex justify-content-center">
          <!-- Simple link -->
          <a href="#!">Forgot password?</a>
        </div>

            <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>

            <hr class="my-4">

            <button class="btn btn-lg btn-block btn-primary" style="background-color: #f9ea37;"
              type="submit"><i class="fab fa-google me-2" ></i> <p style="color: #000000">Sign in with kakaotalk</button>
            <button class="btn btn-lg btn-block btn-primary mb-2" style="background-color: #73c72f;"
              type="submit"><i class="fab fa-facebook-f me-2 " ></i>Sign in with naver</button>

          </div>
          <div>
              <p class="mb-0">Don't have an account? <a href="#!" class="text-white-50 fw-bold">Sign Up</a>
              </p>
            </div>
        </div>
      </div>
      </div>
      </div>
    </div>
  </div>
</section>
</html>