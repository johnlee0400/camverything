<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>


<title>Bootstrap Theme Simply Me</title>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 
<style type="text/css">
	#topend{
	
		background-color: orange;
	    position: relative;
	    width: 100%;
	}
		#topendfont{
		 	height:30px;
			text-align:center;
			font-size: 10px;
			color: black;
			width: 100%;
		}
	
	#top{
		background-color: white;
	}
	
.container{
	padding-left: 0px;
	padding-right: 0px;
}

.container-lg-fluid {
	padding-left: 0px;
	padding-right: 0px;
}
</style>
</head>
<body>
	
<!--top윗부분  -->
		<div id="topend" class ="col-lg-12">
			<div class="col-lg-10">
			</div>
			<div class="col-lg-2">
				<nav>
	                <ul class="nav navbar-nav" id="topendfont">                                                                                                                                     
	                    <li><a href="/camp/service.do">고객센터</a></li>
	                    <li><a href="/camp/test/login.do">로그인</a></li>
	                    <li><a href="/camp/main/insert.do">회원가입</a></li>
	                </ul>
	            </nav>
            </div>
		</div>	
		<div id="top" class ="col-lg-12">
			<nav class="navbar-white id="navbar">
                        logo
                 <div class="navbar-header">
                        <div class="col-lg-5">
                            <div class="logo">
                            	<div class="col-lg-6">
	                               <a href="http://localhost:8088/camp/test/index"><img src="/camp/images/logo1.png" width="50" height="50" alt=""></a>
                            	</div>
                            	<div class="col-lg-6">
	                               <a href="/camp/test/index"><img src="/camp/images/ logo2_footer.png" width="100" height="50" alt=""></a>
                            	</div>
                              
                            </div>
                        </div>
                 </div>
                 <div class="col-lg-3">
                 	</div>
                    <div class="col-lg-4">
                            main-menu
                                <nav>
                                    <ul class="nav navbar-nav">                                                                                                                                     
                                        <li><a href="/camp/test/index">Home</a></li>
                                        <li><a href="/camp/test/search">상세 검색</a></li>
                                        <li><a href="/camp/board/list.do?category=all">커뮤니티</a></li>
                                        <li><a href="/camp/camping/list.do">캠핑장목록</a></li>
                                        <li><a href="/camp/test/product">용품구매</a></li>
                                        <li><a href="/camp/service.do">고객센터</a></li>
                                    </ul>
                                </nav>
                        </div>  
                       </nav> 
             </div>  





</body>
</html>