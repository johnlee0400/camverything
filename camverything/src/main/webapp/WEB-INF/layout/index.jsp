<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- <link rel="stylesheet" href="/erp/resources/common/css/main.css" /> -->
  <link rel="stylesheet" href="/erp/common/css/main.css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
	  body {
	    font: 20px Montserrat, sans-serif;
	    line-height: 1.8;
	    color: #f5f6f7;
	  }
	  p {font-size: 16px;}
	  .margin {margin-bottom: 45px;}
	  .bg-1 { 
	    background-color: #1abc9c; /* Green */
	    color: #ffffff;
	  }
	  .bg-2 { 
	    background-color: #474e5d; /* Dark Blue */
	    color: #ffffff;
	  }
	  .bg-3 { 
	    background-color: #ffffff; /* White */
	    color: #555555;
	  }
	  .bg-4 { 
	    background-color: #2f2f2f; /* Black Gray */
	    color: #fff;
	  }
	  .container-fluid {
	    padding-top: 70px;
	    padding-bottom: 70px;
	  }
	  .navbar {
	    padding-top: 15px;
	    padding-bottom: 15px;
	    border: 0;
	    border-radius: 0;
	    margin-bottom: 0;
	    font-size: 12px;
	    letter-spacing: 5px;
	  }
	  .navbar-nav  li a:hover {
	    color: #1abc9c !important;
	  }
	  
	
	  </style>
<title>Insert title here</title>
</head>
<body>
	<div>
		<!-- 이곳에 top화면을 연결하세요" -->
		 <tiles:insertAttribute name="top"></tiles:insertAttribute>
	</div>
	<!-- <div style="background-color: #edeef1;padding: 20px;height: 800px" id="main"> -->
		<!-- 이곳에 mainContent화면을 연결하세요" -->	
	<div>
		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>
	<div>
		<!-- 이곳에 footer화면을 연결하세요" -->
		 <tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>
	
	
</body>
</html>