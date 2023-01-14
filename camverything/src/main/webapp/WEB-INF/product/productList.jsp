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
<script type="text/javascript">
	$(document).ready(function() {
		$(".portfolio-hover").each(function() {
			$(this).click(function() {
				var text = $(".modal-body").text();
				console.log(text);
				var text2 = $(".modal-body").children();
				var text3 = text2.removeData;
				$.ajax({
					url: "/product/ajax/list.do",
					type: "get",
					data:{
						"category":category
					},
					success:function(data){
						mydata = "";
						for(i=0;i<data.length;i++){
							mydata = mydata+"<h2 class='text-uppercase'>"+data[i].product_name+"</h2>"
						}
						$(".modal-body").empty();
						$(".modal-body").append(mydata);
						
					}
				})
			})
		})
	})
</script>
<style type="text/css">

</style>
</head>
<body>
<div id="imageeee">
	<div class="container">
		<div class="masthead-subheading"><h1>커뮤니티</h1></div>
	</div>
</div>
	<div class="container">
		<h3>캠핑용품</h3>
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
		<div class="row">
<%-- 		<c:forEach var="productList" items="${productList }"> --%>
<!-- 				<div class="col-xs-2"> -->
<!-- 				<img src="/camp/images/camp3.jpg" width="150" height="150"> -->
<%-- 					<h3><a href="/camp/product/read.do?product_code=${productList.product_code }&state=READ">${productList.product_name }</a></h3> --%>
<!-- 					<div id="product_code" style="display: none"></div> -->
<%-- 					가격 :${productList.product_price } --%>
<%-- 					수량 : ${productList.quantity } --%>
<!-- 					<hr/> -->
<%-- 					상품설명 : ${productList.product_content }<br /> --%>
<%-- 					분류 : ${productList.category } --%>
<!-- 				</div> -->
<%-- 			</c:forEach> --%>
		</div>
	</div>
	<section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">캠핑 용품 리스트</h2>
                    <h3 class="section-subheading text-muted">당신의 선택을 응원합니다.</h3>
                </div>
                <div class="row">
                <c:forEach var="productList" items="${productList }">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->
                        
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="/camp/images/img/portfolio/1.jpg" alt="..." />
                            </a>
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
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="/camp/images/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body"> <!-- ajax 노드 시작지점 -->
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">제목</h2>
                                    <p class="item-intro text-muted">부제목 혹은 카테고리</p>
                                    <img class="img-fluid d-block mx-auto" src="/camp/images/img/portfolio/1.jpg" alt="..." />
                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Threads
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Illustration
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="/camp/common/js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	
</body>
</html>
