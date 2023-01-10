<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>대충빨리제대로</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/camp/images/logoimg.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/camp/common/css/styles.css" rel="stylesheet" />
        <style type="text/css">
        	#topposi{
        		position: absolute;
        		top: -50px;
        		width: 600px; 
        	}
        	#contentposi{
        		position: relative;
        	}
        </style>
</head>
<body>
	<div id="topposi">
		<!-- 이곳에 top화면을 연결하세요" -->
		<tiles:insertAttribute name="top"></tiles:insertAttribute>
	</div>
	<!-- <div style="background-color: #edeef1;padding: 20px;height: 800px" id="main"> -->
	<!-- 이곳에 mainContent화면을 연결하세요" -->
	<div id="contentposi">
		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>
	<div>
		<!-- 이곳에 footer화면을 연결하세요" -->
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>
	
	
</body>
</html>