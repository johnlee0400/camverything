<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <title>login</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div id="imageeee">
	<div class="container">
		<div class="masthead-subheading"><h1>Sign in</h1></div>
	</div>
</div>
<form action="login.do" method="post">
<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem">
          <div class="card-body p-5 text-center">
            <h3 class="mb-5">Sign in</h3> 
            <div class="form-outline mb-4">
              <input type="text" id="typeEmailX-2" class="form-control form-control-lg" placeholder="아이디" name="id" />
            </div>

            <div class="form-outline mb-4">
              <input type="password" id="typePasswordX-2" class="form-control form-control-lg" placeholder="패스워드" name="pass"/>
             </div>
          <!-- Checkbox -->
          <div class="form">
            <input class="form-check-input" type="checkbox" value="" name="member_id_save" checked />
            <label class="form-check-label" for="member_id_save"> Remember me </label>
          </div>

          
          <!-- login button -->
          <div>
            <button class="btn btn-primary btn-block" type="submit" >Login</button>
           </div>
          <!-- resgister botton -->
          <div>
              <p class="mb-0">Don't have an account? <a href="/camp/main/insert.do" class="text-white-50 fw-bold">Sign Up</a>
              </p>
            </div>
            </div>
            </div>
            </div>
               </div>
          	  </div>
            </section>
            </form>
            

</body>
</html>