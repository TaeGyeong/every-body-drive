<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>travel</title>
	<link rel="icon" href="./img/favicon.png">
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
									<a class="nav-link dropdown-toggle" href="packages.jsp" id="navbarDropdown"
										data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										Drive Course
									</a>
									<div class="dropdown-menu" aria-laballedby="navbarDropdown">
										<a class="dropdown-item" href="themelist.jsp">Theme</a>
										<a class="dropdown-item" href="locationlist.jsp">Location</a>
									</div>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="blog.jsp" id="navbarDropdown"
										role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										Blog
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="blog.jsp"> blog</a>
										<a class="dropdown-item" href="single-blog.jsp">Single blog</a>
									</div>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="MapTest.jsp">Map Test</a>
								</li>
								<li>
									<a class="nav-link" href="submit.jsp">Submit</a>
								</li>
							</ul>
						</div>
						<a class="btn_1 d-none d-lg-block" href="#">Hot Line 052</a>
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
							<h2>상세보기</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->

	<!--================Blog Area =================-->
	<section class="blog_area single-post-area padding_top">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 posts-list">
					<div class="single-post">
						<div class="feature-img">

							<!-- 이미지 -->
							<img class="img-fluid" src="img/course_id/${course.courseId }.jpg" alt="">
						</div>
						<div class="blog_details">
							<h2>
								${course.courseName }
							</h2>
							<ul class="blog-info-link mt-3 mb-4">
								<li><i class="fa fa-globe"></i>
									<c:out value="${course.location }"></c:out>
								</li>
								<li><i class="ti-calendar"></i>
									<c:out value="${course.totalTime}"></c:out>분
								</li>
								<li><i class="ti-heart"></i>
									<c:out value="${course.heart }"></c:out>
								</li>
								<li><i class="far fa-comment-dots"></i>
									<c:out value="${course.evalCount }"></c:out>
								</li>
							</ul>
						</div>
					</div>
					<div class="navigation-top">
					</div>
					<div class="comment-form">
						<h4>평가하기</h4>
						<form action="insertEval" id="commentForm" method="post">
							<div class="row">
								<div class="col-12">
									<div class="switch-wrap d-flex justify-content-between">
										<div class="input-group-icon">
											<div class="form-select" id="default-select">
												<div class="icon"><i class="fa fa-star" aria-hidden="true"></i></div>
												<select name="star">
													<option value="5" selected>5</option>
													<option value="4">4</option>
													<option value="3">3</option>
													<option value="2">2</option>
													<option value="1">1</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-12">
									<div class="form-group">
										<textarea class="form-control w-100" name="comment" id="comment" cols="30"
											rows="9" placeholder="평가를 입력해주세요."></textarea>
									</div>
								</div>
							</div>
							<div>
								<input type="hidden" name="id" value="${course.courseId }">
							</div>
							<div class="form-group mt-3">
								<button type="submit" class="button button-contactForm btn_1">등록하기 <i
										class="flaticon-right-arrow"></i>
								</button>
							</div>
						</form>
					</div>
					<div class="comments-area">
						<h4>${course.evalCount } Comments</h4>
						<div class="comment-list">
							<c:forEach var="evaluation" items="${evaluation }">
								<div class="single-comment justify-content-between d-flex">
									<div class="user justify-content-between d-flex">
										<!-- 평가부분 받아서 넣기. -->
										<div class="desc">
											<p class="comment">
												${evaluation.text }
											</p>
											<div class="d-flex justify-content-between">
												<!-- 평가 별개수 표시. -->
												${evaluation.star }
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget search_widget">
							<h4 class="widget_title">Arrive map</h4>
							<form action="#">
								<div class="form-group">
									<div id="map" style="width:400;height:400px;"></div>
								</div>
								<button type="button"
									onClick="window.open('https://map.kakao.com/link/to/${course.courseName},${address[2]},${address[3]}')"
									class="button rounded-0 primary-bg text-white w-100 btn_1">도착지 길찾기</button>
							</form>
						</aside>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================Blog Area end =================-->

	<!-- Kakao Talk Script -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=de3ffd7118fa83df7b5c421e1967d64d"></script>
	<script>
		var container2 = document.getElementById('map');
		var options2 = {
			center: new kakao.maps.LatLng(${address[2] }, ${address[3] }),
			level: 3
		};
		var map = new kakao.maps.Map(container2, options2);
		var markerPosition = new kakao.maps.LatLng(${address[2] }, ${address[3] })
		var marker2 = new kakao.maps.Marker({
			position: markerPosition
		})
		marker2.setMap(map)
	</script>
	<!-- Kakao Talk Script end. -->


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

</html>