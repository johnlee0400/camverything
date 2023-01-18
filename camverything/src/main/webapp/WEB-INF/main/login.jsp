<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <title>login</title>
<link rel="stylesheet" href="/camp/common/css/login.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div id="imageeee">
	<div class="container">
		<div class="masthead-subheading"><h1>Login</h1></div>
	</div>
</div>
<form action="login.do" method="post">
<p class="tip"></p>
<div class="cont">
  <div class="form sign-in">
    <h2>Login</h2>
    <label>
      <span>Id</span>
      <input type="text" name="id" />
    </label>
    <label>
      <span>Password</span>
      <input type="password" name="pass"/>
    </label>
    <button type="submit" class="submit" >Login</button>
    <button type="button" class="fb-btn" onclick ="location.href='/camp/main/insert.do'">Sign up</button>
  </div>
  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--in">
        <h2>One of us?</h2>
        <p>If you already has an account, just sign in. We've missed you!</p>
      </div>
      </div>
      </div>
	</div>
            </form>
</body>
</html>