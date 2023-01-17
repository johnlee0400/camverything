<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>용품판매 페이지</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript">
	category = "${category}"
	$(document).ready(function() {
		$("#category").val(category).attr("selected","selected");
		$("#category").change(function() {
			location.href="/camp/product/list.do?category="+encodeURI($(this).val())
		});
	});
</script>
<style type="text/css">
#category{
	float: right;
	margin-top: 50px;
}
</style>
</head>
<body>
<div id="imageeee">
	<div class="container">
		<div class="masthead-subheading"><h1>커뮤니티</h1></div>
	</div>
</div>
	<div class="container">
			 	<form action="">
						<select name="category" id="category">
								<optgroup label="용품목록"></optgroup>
								<option value="1" selected="selected">전체</option>
								<option value="텐트">텐트</option>
								<option value="테이블">테이블,의자</option>
								<option value="화로">화로,버너</option>
								<option value="랜턴">랜턴,조명</option>
								<option value="취사">취사,수납</option>
								<option value="차박">차박</option>
								<option value="소품">소품/기타</option>
								<optgroup label="먹거리"></optgroup>
								<option value="밀키트">밀키트</option>
								<option value="간편식">간편식</option>
						</select>
						</form>	
	</div>
	<section class="page-section bg-light" id="portfolio">
	
			
            <div class="container">
            	 
                <div class="text-center">
               
                    <h2 class="section-heading text-uppercase">캠핑 용품</h2>
                    <h3 class="section-subheading text-muted">당신의 선택을 응원합니다.</h3>
                    
                </div>
                <div class="row">
                <c:forEach var="productList" items="${productList }">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->                      
                        <div class="portfolio-item">           
                                <img class="img-fluid" src="/camp/images/img/portfolio/1.jpg" alt="..." />
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading"><a href="/camp/product/read.do?product_code=${productList.product_code }&state=READ">${productList.product_name }</a></div>
                                <div class="portfolio-caption-subheading text-muted">${productList.category }</div>
                            </div>
                        </div>
                    </div>
 				</c:forEach>
                </div>
            </div>
        </section>
 
	
</body>
</html>
