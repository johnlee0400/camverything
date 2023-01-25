<%@page import="org.springframework.context.annotation.Import"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<title>Bootstrap Theme Simply Me</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//팝업창
		//1
		let popOption1 = "width = 450px, height =491px, top=200px, left=200px, directoryies=no, location=no, status=no, toolbar=no, scrollbars=no, resizable=no";
			let openUrl1 = '/camp/main/popup1'
			window.open(openUrl1,'pop1',popOption1);
		//2
		let popOption2 = "width = 450px, height =491px, top=200px, left=700px, directoryies=no, location=no, status=no, toolbar=no, scrollbars=no, resizable=no";
			let openUrl2 = '/camp/main/popup2'
			window.open(openUrl2,'pop2',popOption2);
		//3
		let popOption3 = "width = 550px, height =591px, top=200px, left=1200px, directoryies=no, location=no, status=no, toolbar=no, scrollbars=no, resizable=no";
			let openUrl3 = '/camp/main/popup3'
			window.open(openUrl3,'pop3',popOption3);
		
		//
		$(".selectbox").change(function() {
			var sel = $(".selectbox option:selected").val();
			if (sel == "1") {
				$("#search").keydown(function(key) {
					if(key.keyCode == 13){
						var data =  $("#search").val()
						var sel = $(".selectbox option:selected").val();
		 				location.href="/camp/camping/search.do?search="+encodeURI($("#search").val());
					}else{
						$("#sub").click(function() {
							var data =  $("#search").val()
							var sel = $(".selectbox option:selected").val();
			 				location.href="/camp/camping/search.do?search="+encodeURI($("#search").val());
						})
					}
				
				})
			} else {
				$("#search").keydown(function(key) {
					if(key.keyCode == 13){
						var data =  $("#search").val()
						var sel = $(".selectbox option:selected").val();
		 				location.href="/camp/product/search.do?search="+encodeURI($("#search").val());
					}else{
						$("#sub").click(function() {
							var data =  $("#search").val()
							var sel = $(".selectbox option:selected").val();
			 				location.href="/camp/product/search.do?search="+encodeURI($("#search").val());
						})
					}
				})
			}
		})
	})
</script>
<style type="text/css">
.search {
	position: relative;
	width: 300px;
}

.search_bar {
	width: 100%;
	border: 1px solid #bbb;
	border-radius: 8px;
	padding: 10px 12px;
	font-size: 14px;
	color: black;
}

#wrap {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.selectbox {
	width: 250px;
	color: black;
	margin-bottom: 15px;
	padding: 5px 20px 5px 5px;
	border-radius: 4px;
}

#sub{
	margin-top: 15px;
}
#banner-area {
    background: #eceef6;
    padding: 40px 0;
}
#banner-area .lb {
    padding-left : 5%;
    width: 45%;
}
#banner-area .lc {
    padding-left : 5%;
    width: 45%;
}
#banner-area .lb h2 {
    background: url(/camp/images/공지.png) no-repeat;
    padding: 0 0 0 40px;
    margin: 0;
    font-size: 1.3rem;
}
#banner-area .lc h2 {
    background: url(/camp/images/메인공지.svg) no-repeat;
    padding: 0 0 0 40px;
    margin: 0;
    font-size: 1.3rem;
}
.fl {
    float: left;
}
#공지사항{
    text-decoration: none;
    color: #000;
}
#banner-area .lb .notice_title {
    display: inline-block;
    width: 100%;
    margin-bottom: 10px;
}
#banner-area .lc .notice_title {
    display: inline-block;
    width: 100%;
    margin-bottom: 10px;
}
#banner-area .notice {
    height: 28px;
    line-height: 28px;
    font-size: .9rem;
    padding-left: 40px;
}
.m-wrap {
    width: 1200px;
    margin: 0 auto;
}
.clear {
    clear: both;
}
#banner-area .lb .more {
    margin-top: 5px;
}
.fr {
    float: right;
}
</style>
</head>
<body>
 <header class="masthead">
            <div class="container">
                <div class="masthead-subheading">캠브리띵</div>
                <div class="masthead-heading text-uppercase">캠핑의 모든것</div>
                	<div class="container-fluid bg-2 text-center">
		<div id="wrap">
			<div id="form">
				<select class="selectbox" name="selectbox">
					<option selected disabled="disabled">검색할 목록을 선택해주세요.</option>
					<option value="1">캠핑장 목록</option>
					<option value="2">캠핑용품 목록</option>
				</select> 
				<input class="search_bar" type="text"
					placeholder="검색할 키워드를 입력해 주세요" name="search" id="search"> 
				<input class="btn btn-primary btn-xl text-uppercase" type="submit" id="sub" value="search">
			</div>
		</div>
	</div>
            </div>
        </header>
        <!-- Services-->
	<div id="banner-area">
		<div class="m-wrap">
			<div class="fl lb">
				<div class="notice_title">
					<h2 class="fl">알려드립니다</h2>
					<a href="/camp/service/list.do?category=공지사항" class="fr more"
						original-title="더 보기"> <svg x="0px" y="0px"
							viewBox="0 0 42 42" style="enable-background: new 0 0 42 42;"
							xml:space="preserve" width="16px" height="16px">
							<polygon
								points="42,20 22,20 22,0 20,0 20,20 0,20 0,22 20,22 20,42 22,42 22,22 42,22 "
								fill="#888"></polygon></svg>
					</a>
				</div>
				<c:forEach var="indexnotice" items="${indexnotice }" begin="0" end="3">
					<div class="notice">
						<a id="공지사항"
							href="/camp/service/read.do?service_no=${indexnotice.service_no }&state=READ">
							${indexnotice.service_title}</a>
					</div>
				</c:forEach>
			</div>
			<div class="fl lc">
				<div class="notice_title">
					<h2 class="fl">정보공유 게시판</h2>
					<a href="/camp/board/list.do?category=정보공유" class="fr more"
						original-title="더 보기"> <svg x="0px" y="0px"
							viewBox="0 0 42 42" style="enable-background: new 0 0 42 42;"
							xml:space="preserve" width="16px" height="16px">
							<polygon
								points="42,20 22,20 22,0 20,0 20,20 0,20 0,22 20,22 20,42 22,42 22,22 42,22 "
								fill="#888"></polygon></svg>
					</a>
				</div>
				<c:forEach var="indexboard" items="${indexboard }" begin="0" end="3">
					<div class="notice">
						<a id="공지사항"
							href="/camp/board/read.do?board_no=${indexboard.board_no }&state=READ">
							${indexboard.title}</a>
					</div>
				</c:forEach>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!-- Portfolio Grid-->
        <section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">가볼만한 축제정보</h2>
                    <h3 class="section-subheading text-muted">지금 시기에 즐길 수 있는 축제 정보입니다.</h3>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="/camp/images/축제/산천어축제.jpg" alt="..."/>
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">화천 산천어축제</div>
                                <div class="portfolio-caption-subheading text-muted">01/07(토) ~ 01/29(일)</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 2-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal2">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="/camp/images/축제/빙어축제.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">양평 빙어축제</div>
                                <div class="portfolio-caption-subheading text-muted">01/06(금) ~ 02/19(일)</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 3-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal3">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="/camp/images/축제/칠갑산축제.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">칠갑산 얼음분수축제</div>
                                <div class="portfolio-caption-subheading text-muted">01/01(일) ~ 02/12(일)</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <!-- Portfolio item 4-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal4">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="/camp/images/축제/얼음공주.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">흥미진진 얼음공주</div>
                                <div class="portfolio-caption-subheading text-muted">01/13(금) ~ 03/01(수)</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <!-- Portfolio item 5-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal5">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="/camp/images/축제/썰매축제.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">포천 썰매축제</div>
                                <div class="portfolio-caption-subheading text-muted">22/12/30(금) ~ 23/02/12(일)</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <!-- Portfolio item 6-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal6">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="/camp/images/축제/빛축제.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">부산 희망드림 빛축제</div>
                                <div class="portfolio-caption-subheading text-muted">22/12/05(월) ~ 23/02/28(화)</div>
                            </div>
                        </div>
                    </div>
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
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">화천 산천어축제</h2>
                                    <p class="item-intro text-muted">01/07(토) ~ 01/29(일)</p>
                                    <a href="https://www.narafestival.com/01_icenara/"><img class="img-fluid d-block mx-auto" src="/camp/images/축제/산천어축제.jpg" alt="..." /></a>
                                    <p>세계가 주목한 이색 겨울축제! 강원도 화천에서 열리는 얼음나라 화천산천어축제는 2011년 미국 CNN이 선정한 ‘겨울의 7대불가사의’ 중 하나로 꼽힌 이색 겨울축제이다. 물 맑기로 유명한 화천천이 겨울 추위에 꽁꽁 
                                    얼어붙는 매년 1월에 축제가 열리며, 얼음낚시로 ‘계곡의 여왕’이라 불리는 산천어를 잡을 수 있다. 남녀노소 누구나 쉽고 재미있게 산천어 얼음낚시의 손맛을 즐길 수 있어서 매년 100만 명 이상이 방문하고 있다. 
                                    산천어축제의 최대 묘미는 직접 잡은 산천어를 그 자리에서 맛볼 수 있다는 점이다. 300마리를 한꺼번에 구울 수 있는 초대형 구이통을 이용해서 노릇노릇 맛있게 산천어를 구워 먹을 수 있으며, 회센터에서 먹기 좋게 회를 떠서 싱싱한 산천어의 맛을 즐길 수도 있다. 
                                    얼음낚시 이외에도 루어낚시, 수상낚시, 산천어 맨손잡기 체험도 할 수 있다. 아이들이 좋아하는 얼음 미끄럼틀과 눈썰매, 봅슬레이, 피겨스케이트, 얼음축구 등 재미있는 체험도 가능하다.</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>주소:</strong>
                                            강원도 화천군 화천읍 산천어길137
                                        </li>
                                        <li>
                                            <strong>전화 번호:</strong>
                                            1688-3005
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 2 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="/camp/images/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">양평 백동저수지 빙어축제</h2>
                                    <p class="item-intro text-muted">01/06(금) ~ 02/19(일)</p>
                                    <a href="http://www.lakefestival.co.kr/"><img class="img-fluid d-block mx-auto" src="/camp/images/축제/빙어축제.jpg" alt="..." /></a>
                                    <p><양평빙어축제>는 1월 6일 부터 2월 19일까지 백동저수지에서 개최된다.양평의 깊은 산중에 자리잡은 백동저수지는 1992년을 시작으로 매년 빙어자원을 꾸준히 조성하여, 수려한 경관과 함께 빙어낚시의 명소로 자리매김하고 있다.
                                     빙어낚시는 물론이고, 드넓은 얼음공간에서 다양한 겨울놀이를 온 가족과 함께 즐길 수 있다.</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>주소:</strong>
                                             경기도 양평군 단월면 덕수리 22-3
                                        </li>
                                        <li>
                                            <strong>전화 번호:</strong>
                                            010-4209-7694
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 3 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="/camp/images/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">칠갑산 얼음분수 축제</h2>
                                    <p class="item-intro text-muted">01/01(일) ~ 02/12(일)</p>
                                    <a href="http://www.alpsvill.com/"><img class="img-fluid d-block mx-auto" src="/camp/images/축제/칠갑산축제.jpg" alt="..." /></a>
                                    <p>“동화나라 친구들 모여라~!“ 커다란 얼음분수로 만들어 놓은 알프스성에 동화나라 캐릭터들이 모두 모여 함께하는 칠갑산 겨울왕국. 
                                    알프스마을에 까만 어둠이 내리면 반짝반짝 은하수 별빛아래 화려한 옷으로 갈아입는 야간개장. 아이들에게 소중한 추억을 남기고 연인들에게는 
                                    겨울철 데이트 코스로 안성맞춤. 5분 거리에는 1박2일 촬영지로 유명한 전국 최장의 천장호 출렁다리. 겨울엔 칠갑산겨울왕국! 칠갑산 얼음분수축제에 놀러가자.</p>
                                    <ul class="list-inline">
                                    	<li>
                                            <strong>요금:</strong>
                                            8000원(온라인 예매가)
                                        </li>
                                        <li>
                                            <strong>주소:</strong>
                                            33349 충남 청양군 정산면 천장리 164-1
                                        </li>
                                        <li>
                                            <strong>전화 번호:</strong>
                                            041-942-0797~8
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 4 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="/camp/images/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">흥미진진 얼음 공주</h2>
                                    <p class="item-intro text-muted">01/13(금) ~ 03/01(수)</p>
                                    <a href="http://www.xn--ob0bw38bk8aoxc.com/default/"><img class="img-fluid d-block mx-auto" src="/camp/images/축제/얼음공주.jpg" alt="..." /></a>
                                    <p>충청남도 공주시 유구천에서 열리는 "제1회 흥미진진얼음공주"축제는 겨울 축제의 하나로서, 올해 첫1회를 맞이하는 이색 겨울축제이다, 그동안의 얼음낚시 축제가 강원도와 경기도 북부지역에서만 개최되었는데 
                                    2023년 01월 충청남도 공주에서 얼음축제(얼음낚시와 기타놀이등)가 개최가 되며, 유네스코 세계유산의 도시 공주시에는 마곡사, 공산성 등 유명 관광지도 둘러볼 수 있다.가족단위 연인 모두가 쉽고 재미있게 
                                    얼음 송어낚시를 즐길 수 있는 축제이다. 흥미진진얼음공주 축제는 얼음낚시 이외에도 송어 맨손잡기, 전통썰매, 기타체험부스를 통하여 겨울 문화를 체험도 할 수 있다.</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>주소:</strong>
                                            충청남도 공주시 사곡면 호계리 356
                                        </li>
                                        <li>
                                            <strong>전화 번호:</strong>
                                            041-841-0725
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 5 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="/camp/images/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">포천 산정호수 썰매축제</h2>
                                    <p class="item-intro text-muted">22/12/30(금) ~ 23/02/12(일)</p>
                                    <a href="http://www.sjlake.co.kr/default/info/event4.php"><img class="img-fluid d-block mx-auto" src="/camp/images/축제/썰매축제.jpg" alt="..." /></a>
                                    <p>제98회 포천 산정호수 썰매축제는 마을주민이 직접 기획하고 운영하는 축제로 마을 주민들의 마음과 정성을 담아 방문하시는분들에게 특별한 추억을 만들어 드리고자 산정호수만의 
                                    겨울놀이로 추억의 얼음썰매,산정호수에서만 탈수 있는 오리썰매,펭귄썰매,푸우썰매,로맨스자전거,러버덕기차등 체험을 준비하였다. 가족, 연인, 친구와 함께 산정호수 풍경도 감상하고 체험을 통해 즐거운 추억을 만들어 가길 바란다.</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>주소:</strong>
                                            경기도 포천시 영북면 산정호수로 411번길 104
                                        </li>
                                        <li>
                                            <strong>전화 번호:</strong>
                                            010-3024-6222
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 6 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="/camp/images/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">부산 희망드립 빛축제(무료)</h2>
                                    <p class="item-intro text-muted">22/12/05(월) ~ 23/02/28(화)</p>
                                    <a href="https://www.busanjin.go.kr/index.busanjin?menuCd=DOM_000001003003007000"><img class="img-fluid d-block mx-auto" src="/camp/images/축제/빛축제.jpg" alt="..." /></a>
                                    <p>부산의 대표 도심공원인 부산시민공원에서 부산진구청, 부산시민공원, 부산국립국악원 3개 기관이 협력하여 제3회 부산 희망 드림 빛축제를 개최하였다. '부산의 꿈과 희망의 빛을 모아 세계로'라는 
                                    주제로 2030부산세계박람회 유치 기원 등 테마를 구성하여 다양한 빛 시설물과 함께 특색있는 볼거리를 제공한다.</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>주소:</strong>
                                            부산시민공원 남1문~북문
                                        </li>
                                        <li>
                                            <strong>전화번호:</strong>
                                            051-605-4522
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>