<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html >
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
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	     <!-- Core theme JS-->
	     <script src="/camp/common/js/scripts.js"></script>
	     <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	     <!-- * *                               SB Forms JS                               * *-->
	     <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	     <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	     <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</head>
<body>
	<div>
		<tiles:insertAttribute name="top"></tiles:insertAttribute>
	</div>
	<div>
		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>
	<div class="container-lg-fluid">
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>
		
</body>
</html>