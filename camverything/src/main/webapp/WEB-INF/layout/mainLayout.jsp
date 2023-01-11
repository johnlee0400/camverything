<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="/camp/common/css/styles.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	/* Remove the navbar's default margin-bottom and rounded borders */
	.navbar {
		margin-bottom: 0;
		border-radius: 0;	
	}
	body{
		color: black;
	}
	/*  #toparea{
		padding: 30px;
	}  */
	/* body{
		background-color: #edeef1
	} */
	.main{
		position:absolute;
		top:500px;
	}
#imageeee {
  padding-top: 10.5rem;
  padding-bottom: 15rem;
  text-align: center;
  color: #fff;
  background-image: url("/camp/images/img/bg/board.jpg");
  background-repeat: no-repeat;
  background-attachment: scroll;
  background-position: center center;
  background-size: cover;
}</style>
<title>Insert title here</title>
</head>
<body>
	<div>
		<!-- 이곳에 top화면을 dsd연결하세요" -->
		<tiles:insertAttribute name="top"></tiles:insertAttribute>
	</div>
		
	<div class="main">
	      <!-- 이곳에 menu화면을 연결하세요" -->
	      <tiles:insertAttribute name="menu"></tiles:insertAttribute>
 	</div>
 	<div>
 		<!-- 이곳에 content화면을 연결하세요" -->	
 		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>
	
</body>
</html>




