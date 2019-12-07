<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>travel</title>
	<link rel="icon" href="img/favicon.png">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- animate CSS -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- owl carousel CSS -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<!-- font awesome CSS -->
	<link rel="stylesheet" href="css/all.css">
	<!-- flaticon CSS -->
	<link rel="stylesheet" href="css/flaticon.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<!-- font awesome CSS -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- swiper CSS -->
	<link rel="stylesheet" href="css/slick.css">
	<!-- style CSS -->
	<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<!--::header part start::-->
    <header class="main_menu home_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="index.jsp"> <img src="img/logo.png" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="menu_icon"><i class="fas fa-bars"></i></span>
                        </button>
                        <div class="collapse navbar-collapse main-menu-item" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.jsp">Home</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Drive Course
                                    </a>
                                    <div class="dropdown-menu" aria-laballedby="navbarDropdown">
                                        <a class="dropdown-item" href="themelist.jsp">Theme</a>
                                        <a class="dropdown-item" href="locationlist.jsp">Location</a>
                                    </div>
                                </li>
                                <li>
                                    <a class="nav-link" href="submit.jsp">Submit</a>
                                </li>
                                <!-- <li>
                                    <a class="nav-link" href="test.jsp">submit test</a>
                                </li> -->
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header part end-->
	<!-- breadcrumb start-->
	<section class="breadcrumb breadcrumb_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner text-center">
						<div class="breadcrumb_iner_item">
							<h2>드라이브 코스 등록하기</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->

	<!-- ================ contact section start ================= -->
	<section class="contact-section padding_top">
		<div class="container">
			<form class="form-contact contact_form" action="submitCourseServlet" method="post" id="submitForm"
				novalidate="novalidate">
				<div class="row">
					<div class="col-12">
						<h2 class="contact-title">나만의 드라이브 코스 등록하기</h2>
					</div>
					<div class="col-lg-12">
						<div class="row">
							<div class="col-12">
								<div class="form-group">
									<input class="form-control" name="name" id="name" type="text"
										onfocus="this.placeholder = ''" onblur="this.placeholder = '코스 이름을 입력하세요'"
										placeholder='코스 이름을 입력하세요'>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<select class="form-control" name="location" id="location">
										<option value="" selected disabled> 지역을 선택하세요 </option>
										<option value="강원도">강원도</option>
										<option value="경기도">경기도</option>
										<option value="경상남도">경상남도</option>
										<option value="경상북도">경상북도</option>
										<option value="광주광역시">광주광역시</option>
										<option value="대구광역시">대구광역시</option>
										<option value="대전광역시">대전광역시</option>
										<option value="부산광역시">부산광역시</option>
										<option value="서울특별시">서울특별시</option>
										<option value="세종특별자치시">세종특별자치시</option>
										<option value="울산광역시">울산광역시</option>
										<option value="인천광역시">인천광역시</option>
										<option value="전라남도">전라남도</option>
										<option value="전라북도">전라북도</option>
										<option value="제주도">제주도</option>
										<option value="충청남도">충청남도</option>
										<option value="충청북도">충청북도</option>
									</select>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<select class="form-control" name="theme" id="theme">
										<option value="" selected disabled> 테마를 선택하세요 </option>
										<option value="봄">봄</option>
										<option value="여름">여름</option>
										<option value="가을">가을</option>
										<option value="겨울">겨울</option>
										<option value="공원">공원</option>
										<option value="데이트">데이트</option>
										<option value="당일치기">당일치기</option>
										<option value="명소">명소</option>
										<option value="바다/호수">바다/호수</option>
										<option value="산악">산악</option>
										<option value="새벽">새벽</option>
										<option value="야간">야간</option>
										<option value="일출/일몰">일출/일몰</option>
										<option value="주말">주말</option>
										<option value="초보">초보</option>
										<option value="카페">카페</option>
										<option value="혼자">혼자</option>
									</select>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<input class="form-control" name="distance" id="distance" type="text"
										onfocus="this.placeholder = ''" onblur="this.placeholder = '거리'"
										placeholder='거리(단위: km)'>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<input class="form-control" name="totaltime" id="totaltime" type="text"
										onfocus="this.placeholder = ''" onblur="this.placeholder = '소요시간'"
										placeholder='소요시간(단위: 분)'>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="row">
							<div class="col-sm-6">
								<div class="blog_right_sidebar">
									<aside class="single_sidebar_widget search_widget">
										<h4 class="widget_title">출발지</h4>
										<p>지도를 움직여 출발지를 설정하세요.</p>
										<div class="form-group">
											<div onClick="getInfo1();" id="mapStart" style="width:100%;height:200px;">
											</div>
										</div>
									</aside>
								</div>
								<input type="hidden" id="start_lat" name="start_lat"></input>
								<input type="hidden" id="start_lng" name="start_lng"></input>
							</div>
							<div class="col-sm-6">
								<div class="blog_right_sidebar">
									<aside class="single_sidebar_widget search_widget">
										<h4 class="widget_title">도착지</h4>
										<p>지도를 움직여 도착지를 설정하세요.</p>
										<div class="form-group">
											<div onClick="getInfo2();" id="mapEnd" style="width:100%;height:200px;">
											</div>
										</div>
									</aside>
								</div>
								<input type="hidden" id="end_lat" name="end_lat"></input>
								<input type="hidden" id="end_lng" name="end_lng"></input>
							</div>
						</div>
					</div>
					<div class="col-lg-5"></div>
					<div class="col-lg-4">
						<div class="button-group-area mt-40">
							<button type="submit" class="button button-contactForm btn_1">Submit</button>
						</div>
					</div>
					<div class="col-lg-3"></div>
				</div>
			</form>
		</div>
	</section>
	<!-- ================ contact section end ================= -->
	<!-- Kakao Map -->
	<!--::footer_part start::-->
	<footer class="footer_part">
		<div class="container">
			
			<hr>
			<div class="row">
				<div class="col-lg-8">
					<div class="copyright_text">
						<P>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>document.write(new Date().getFullYear());</script> All rights reserved | This
							template is made with <i class="ti-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</P>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="footer_icon social_icon">
						<ul class="list-unstyled">
							<li><a href="#" class="single_social_icon"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" class="single_social_icon"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" class="single_social_icon"><i class="fas fa-globe"></i></a></li>
							<li><a href="#" class="single_social_icon"><i class="fab fa-behance"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
<!-- 		<img src="img/overlay_2.png" alt="#" class="footer_overlay"> -->
	</footer>


	<!-- 카카오 지도 관련 JavaScript -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=de3ffd7118fa83df7b5c421e1967d64d"></script>
	<script>
		var mapContainer1 = document.getElementById('mapStart'), // 지도를 표시할 div 
			mapOption1 = {
				center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				level: 3 // 지도의 확대 레벨
			};
		var mapContainer2 = document.getElementById('mapEnd'), // 지도를 표시할 div 
			mapOption2 = {
				center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				level: 3 // 지도의 확대 레벨
			};

		var map1 = new kakao.maps.Map(mapContainer1, mapOption1); // 지도를 생성합니다
		var map2 = new kakao.maps.Map(mapContainer2, mapOption2); // 지도를 생성합니다
		// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
		var mapTypeControl1 = new kakao.maps.MapTypeControl();
		var mapTypeControl2 = new kakao.maps.MapTypeControl();
		// 지도 타입 컨트롤을 지도에 표시합니다
		map1.addControl(mapTypeControl1, kakao.maps.ControlPosition.TOPRIGHT);
		map2.addControl(mapTypeControl2, kakao.maps.ControlPosition.TOPRIGHT);
		var markers1 = [];
		var markers2 = [];
		function getInfo1() {
			for (var i = 0; i < markers1.length; i++) {
				markers1[i].setMap(null);
			}
			var center1 = map1.getCenter();
			var markerPosition1 = new kakao.maps.LatLng(center1.getLat(), center1.getLng());
			marker1 = new kakao.maps.Marker({
				position: markerPosition1
			});
			marker1.setMap(map1);
			markers1.push(marker1);
			var a = document.getElementById("start_lat");
			var b = document.getElementById("start_lng");
			a.value = center1.getLat();
			b.value = center1.getLng();
		}
		function getInfo2() {
			for (var i = 0; i < markers2.length; i++) {
				markers2[i].setMap(null);
			}
			var center2 = map2.getCenter();
			var markerPosition2 = new kakao.maps.LatLng(center2.getLat(), center2.getLng());
			marker2 = new kakao.maps.Marker({
				position: markerPosition2
			});
			marker2.setMap(map2);
			markers2.push(marker2);
			var c = document.getElementById("end_lat");
			var d = document.getElementById("end_lng");
			c.value = center2.getLat();
			d.value = center2.getLng();
		}
	</script>
	<!-- 카카오 지도 관련 JavaScript END -->

	<!-- jquery plugins here-->
	<!-- jquery -->
	<script src="js/jquery-1.12.1.min.js"></script>
	<!-- popper js -->
	<script src="js/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- easing js -->
	<script src="js/jquery.magnific-popup.js"></script>




	<!-- particles js -->
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<!-- slick js -->
	<script src="js/slick.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/contact.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.form.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/mail-script.js"></script>
	<!-- custom js -->
	<script src="js/custom.js"></script>
</body>