<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<title>Bootstrap Theme Simply Me</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

 
 
<style type="text/css">
.festival-info:hover .festival-caption {
  border: 1px solid #c4c4c4  !important;;
  border-top: transparent !important;
}

/* line 9, C:/Users/SPN Graphics/Desktop/hotel_up/Hotel_HTML/assets/scss/_room.scss */
.festival-info:hover .festival-img img {
  transform: rotate(1deg) scale(1.1) !important;
  /*그림확대비율*/
}

/* line 14, C:/Users/SPN Graphics/Desktop/hotel_up/Hotel_HTML/assets/scss/_room.scss */
.festival-info .festival-img {
  overflow: hidden !important;
}

/* line 16, C:/Users/SPN Graphics/Desktop/hotel_up/Hotel_HTML/assets/scss/_room.scss */
.festival-info .festival-img img {
  width: 100% !important;
  transform: rotate(0deg) scale(1) !important;
  -webkit-transition: all 0.6s ease-out 0s !important;
  -moz-transition: all 0.6s ease-out 0s !important;
  -ms-transition: all 0.6s ease-out 0s;
  -o-transition: all 0.6s ease-out 0s;
  transition: all 0.6s ease-out 0s;
}

/* line 22, C:/Users/SPN Graphics/Desktop/hotel_up/Hotel_HTML/assets/scss/_room.scss */
.festival-info .festival-caption {
  padding: 33px 20px 33px 30px !important;
  box-shadow: 1.395px 19.951px 38px 0px rgba(0, 0, 0, 0.05) !important;
  border: 1px solid transparent !important;
  border-radius: 0 0 5px 5px !important;
  border-top: 0 !important;
  -webkit-transition: all 0.3s ease-out 0s !important;
  -moz-transition: all 0.3s ease-out 0s !important;
  -ms-transition: all 0.3s ease-out 0s !important;
  -o-transition: all 0.3s ease-out 0s !important;
  transition: all 0.3s ease-out 0s !important;
}

/* line 31, C:/Users/SPN Graphics/Desktop/hotel_up/Hotel_HTML/assets/scss/_room.scss */
.festival-info .festival-caption:hover h3 a {
  color: #dca73a !important;
}

/* line 36, C:/Users/SPN Graphics/Desktop/hotel_up/Hotel_HTML/assets/scss/_room.scss */
.festival-info .festival-caption h3 {
  color: #112e41  !important;
  font-size: 25px !important;
  font-weight: 600 !important;
  margin-bottom: 19px !important;
  /*글자관련*/
}
.font-back-tittle {
  position: relative !important;
  text-align: center !important;
}

/* line 79, C:/Users/SPN Graphics/Desktop/hotel_up/Hotel_HTML/assets/scss/_room.scss */
.font-back-tittle .archivment-front {
  position: relative !important;
  z-index: 9 !important;
}

/* line 83, C:/Users/SPN Graphics/Desktop/hotel_up/Hotel_HTML/assets/scss/_room.scss */
.font-back-tittle .archivment-front h3 {
  color: #112e41 !important;
  font-size: 50px !important;
  font-weight: 700 !important;
  font-family: 'Noto Serif', serif !important;
}

@media (max-width: 767px) {
  /* line 83, C:/Users/SPN Graphics/Desktop/hotel_up/Hotel_HTML/assets/scss/_room.scss */
  .font-back-tittle .archivment-front h3 {
    font-size: 37px  !important;
  }
}

/* line 92, C:/Users/SPN Graphics/Desktop/hotel_up/Hotel_HTML/assets/scss/_room.scss */
.font-back-tittle h3.archivment-back {
  position: absolute;
  top: 50%;
  transform: translateY(-56%);
  font-size: 130px;
  font-family: 'Snell Roundhand';
  font-style: italic;
  right: 0;
  left: 0;
  margin: 0 auto;
  font-family: 'Noto Serif', serif;
  color: rgba(17, 46, 65, 0.031);
}

@media (max-width: 767px) {
  /* line 92, C:/Users/SPN Graphics/Desktop/hotel_up/Hotel_HTML/assets/scss/_room.scss */
  .font-back-tittle h3.archivment-back {
    transform: translateY(-56%) !important;
  }
}

@media only screen and (min-width: 768px) and (max-width: 991px) {
  /* line 92, C:/Users/SPN Graphics/Desktop/hotel_up/Hotel_HTML/assets/scss/_room.scss */
  .font-back-tittle h3.archivment-back {
    font-size: 93px !important;
  }
}

@media (max-width: 767px) {
  /* line 92, C:/Users/SPN Graphics/Desktop/hotel_up/Hotel_HTML/assets/scss/_room.scss */
  .font-back-tittle h3.archivment-back {
    font-size: 48px !important;
  }
}

/* line 114, C:/Users/SPN Graphics/Desktop/hotel_up/Hotel_HTML/assets/scss/_room.scss */
.font-back-tittle img {
  position: absolute;
  top: 50%;
  transform: translateY(-56%);
  right: 0;
  left: 0;
  margin: 0 auto;
}
.carousel-inner img {/* make all photos black and white */
  width: 100%; /* Set width to 100% */
  margin: auto;
}

.carousel-caption h3 {
  color: #fff !important;
}

@media (max-width: 600px) {
  .carousel-caption {
    display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
  }
}
</style>
</head>
<body>

<div class="container-lg-fluid">
		<div class="col-xl-15">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="/camp/images/test.jpg" alt="New York">
						<div class="carousel-caption">
							<h3>To Travel is ti Live.</h3>
							<!-- 여행하는 것이 곧 삶이다. -->
							<p>- Hans Christian Andersen -</p>
						</div>
					</div>

					<div class="item">
						<img src="/camp/images/test.jpg" alt="Chicago">
						<div class="carousel-caption">
							<h3>Travel and change of place inpact new vigor to the mind.</h3>
							<!-- 여행이나 장소를 바꾸는 것은 마음에 새로운 활기를 준다 -->
							<p>- Seneca -</p>
						</div>
					</div>

					<div class="item">
						<img src="/camp/images/test.jpg" alt="Los Angeles">
						<div class="carousel-caption">
							<h3>Traveling - it leaves you speechless, then tyens you into a storyteller.</h3>
							<!-- 여행은 당신으로 하여금 할말을 잃게 만든후,스토리텔러로 변화시켜준다. -->
							<p>- Ibn Battuta -</p>
						</div>
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
</div>
<div class="container-lg text-center">
	<div class="col-sm-12">
	<div class="text-center">
		<p>공지사항란</p>
	</div>
		<div class="row" >
			<div class="col-sm-4" >
				<p>공지사항1</p>
				<br> <img src="/camp/images/logo.png" alt="Random Name">
			</div>
			<div class="col-sm-4">
				<p>공지사항2</p>
				<br> <img src="/camp/images/logo.png" alt="Random Name">
			</div>
			<div class="col-sm-4">
				<p>공지사항3</p>
				<br> <img src="/camp/images/logo.png" alt="Random Name">
			</div>
		</div>
	</div>
</div>

	<div class="container-fluid bg-2 text-center">
		<form class="navbar-form navbar-center" action="/action_page.php">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search"
					name="search">
			</div>
			<button type="submit" class="btn btn-default">Search</button>
		</form>
	</div>

	<section class="room-area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<!--font-back-tittle  -->
					<div class="font-back-tittle mb-45">
						<div class="archivment-front">
							<h3>축제</h3>
						</div>
						<h3 class="archivment-back">Festival</h3>
					</div>
				</div>
			</div>
			<div class="row col-lg-12">
				<div class="col-lg-3">
					<!-- Single Room -->
					<div class="festival-info mb-50">
						<div class="festival-img">
							<a href="#"><img src="/camp/images/fes_1.jpg" alt=""></a>
						</div>
						<div class="festival-caption">
							<h3>
								<a href="#">양주 눈꽃 축제</a>
							</h3>
							<div class="per-night">
								<span>11000원 <span>(평일)대인</span></span> <span>2022. 12.
									23.(금)~2023. 2. 19.(일)</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-lg-3 col-md-3">
					<!-- Single Room -->
					<div class="festival-info mb-50">
						<div class="festival-img">
							<a href="#"><img src="/camp/images/fes_1.jpg" alt=""></a>
						</div>
						<div class="festival-caption">
							<h3>
								<a href="#">양주 눈꽃 축제</a>
							</h3>
							<div class="per-night">
								<span>11000원 <span>(평일)대인</span></span> <span>2022. 12.
									23.(금)~2023. 2. 19.(일)</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-lg-3 col-md-3">
					<!-- Single Room -->
					<div class="festival-info mb-50">
						<div class="festival-img">
							<a href="#"><img src="/camp/images/fes_1.jpg" alt=""></a>
						</div>
						<div class="festival-caption">
							<h3>
								<a href="#">양주 눈꽃 축제</a>
							</h3>
							<div class="per-night">
								<span>11000원 <span>(평일)대인</span></span> <span>2022. 12.
									23.(금)~2023. 2. 19.(일)</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-lg-3 col-md-3">
					<!-- Single Room -->
					<div class="festival-info mb-50">
						<div class="festival-img">
							<a href="#"><img src="/camp/images/fes_1.jpg" alt=""></a>
						</div>
						<div class="festival-caption">
							<h3>
								<a href="#">양주 눈꽃 축제</a>
							</h3>
							<div class="per-night">
								<span>11000원 <span>(평일)대인</span></span> <span>2022. 12.
									23.(금)~2023. 2. 19.(일)</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>