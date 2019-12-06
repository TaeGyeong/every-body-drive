<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
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
						<li><i class="fa fa-globe"></i><c:out value="${course.location }"></c:out></li>
						<li><i class="ti-calendar"></i><c:out value="${course.totalTime}"></c:out>분</li>
						<li><i class="ti-heart"></i><c:out value="${course.heart }"></c:out></li>
						<li><i class="far fa-comment-dots"></i><c:out value="${course.evalCount }"></c:out></li>
	                  </ul>
	               </div>
	            </div>
	            <div class="navigation-top">
	            </div>
	            <div class="comments-area">
	               <h4>${course.evalCount } Comments</h4>
	               <div class="comment-list">
	                  <div class="single-comment justify-content-between d-flex">
	                     <div class="user justify-content-between d-flex">
	                        <!-- 평가부분 받아서 넣기. -->
	                        <div class="desc">
	                           <p class="comment">
	                              Multiply sea night grass fourth day sea lesser rule open subdue female fill which them
	                              Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser
	                           </p>
	                           <div class="d-flex justify-content-between">
	                              <!-- 평가 별개수 표시. -->
	                           </div>
	                        </div>
	                     </div>
	                  </div>
	               </div>
	            </div>
	            
	            <div class="comment-form">
	               <h4>평가하기</h4>
	               <form class="form-contact comment_form" action="#" id="commentForm">
	                  <div class="row">
	                     <div class="col-12">
	                        <div class="form-group">
	                           <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9"
	                              placeholder="평가를 입력해주세요."></textarea>
	                        </div>
	                     </div>
	                     <div class="col-sm-6">
	                        <div class="form-group">
	                           <input class="form-control" name="name" id="name" type="text" placeholder="Name">
	                        </div>
	                     </div>
	                     <div class="col-sm-6">
	                        <div class="form-group">
	                           <input class="form-control" name="email" id="email" type="email" placeholder="Email">
	                        </div>
	                     </div>
	                     <div class="col-12">
	                        <div class="form-group">
	                           <input class="form-control" name="website" id="website" type="text" placeholder="Website">
	                        </div>
	                     </div>
	                  </div>
	                  <div class="form-group mt-3">
	                     <button type="submit" class="button button-contactForm btn_1">Send Message <i
	                           class="flaticon-right-arrow"></i> </button>
	                  </div>
	               </form>
	            </div>
	         </div>
	         <div class="col-lg-4">
	            <div class="blog_right_sidebar">
	               <aside class="single_sidebar_widget search_widget">
	               	  <h4 class="widget_title">Arrive map</h4>
	                  <form action="#">
	                     <div class="form-group">
	                     	<div id="map2" style="width:400;height:400px;"></div>
	                     </div>
	                     <button type="button" onClick="window.open('https://map.kakao.com/link/to/${course.courseName},${address[2]},${address[3]}')" class="button rounded-0 primary-bg text-white w-100 btn_1">도착지 길찾기</button>
	                  </form>
	               </aside>
	               <aside class="single_sidebar_widget post_category_widget">
	                  <h4 class="widget_title">Category</h4>
	                  <ul class="list cat-list">
	                     <li>
	                        <a href="#" class="d-flex">
	                           <p>Resaurant food</p>
	                           <p>(37)</p>
	                        </a>
	                     </li>
	                     <li>
	                        <a href="#" class="d-flex">
	                           <p>Travel news</p>
	                           <p>(10)</p>
	                        </a>
	                     </li>
	                     <li>
	                        <a href="#" class="d-flex">
	                           <p>Modern technology</p>
	                           <p>(03)</p>
	                        </a>
	                     </li>
	                     <li>
	                        <a href="#" class="d-flex">
	                           <p>Product</p>
	                           <p>(11)</p>
	                        </a>
	                     </li>
	                     <li>
	                        <a href="#" class="d-flex">
	                           <p>Inspiration</p>
	                           <p>(21)</p>
	                        </a>
	                     </li>
	                     <li>
	                        <a href="#" class="d-flex">
	                           <p>Health Care</p>
	                           <p>(21)</p>
	                        </a>
	                     </li>
	                  </ul>
	               </aside>
	               <aside class="single_sidebar_widget popular_post_widget">
	                  <h3 class="widget_title">Recent Post</h3>
	                  <div class="media post_item">
	                     <img src="img/post/post_1.png" alt="post">
	                     <div class="media-body">
	                        <a href="single-blog.html">
	                           <h3>From life was you fish...</h3>
	                        </a>
	                        <p>January 12, 2019</p>
	                     </div>
	                  </div>
	                  <div class="media post_item">
	                     <img src="img/post/post_2.png" alt="post">
	                     <div class="media-body">
	                        <a href="single-blog.html">
	                           <h3>The Amazing Hubble</h3>
	                        </a>
	                        <p>02 Hours ago</p>
	                     </div>
	                  </div>
	                  <div class="media post_item">
	                     <img src="img/post/post_3.png" alt="post">
	                     <div class="media-body">
	                        <a href="single-blog.html">
	                           <h3>Astronomy Or Astrology</h3>
	                        </a>
	                        <p>03 Hours ago</p>
	                     </div>
	                  </div>
	                  <div class="media post_item">
	                     <img src="img/post/post_4.png" alt="post">
	                     <div class="media-body">
	                        <a href="single-blog.html">
	                           <h3>Asteroids telescope</h3>
	                        </a>
	                        <p>01 Hours ago</p>
	                     </div>
	                  </div>
	               </aside>
	               <aside class="single_sidebar_widget tag_cloud_widget">
	                  <h4 class="widget_title">Tag Clouds</h4>
	                  <ul class="list">
	                     <li>
	                        <a href="#">project</a>
	                     </li>
	                     <li>
	                        <a href="#">love</a>
	                     </li>
	                     <li>
	                        <a href="#">technology</a>
	                     </li>
	                     <li>
	                        <a href="#">travel</a>
	                     </li>
	                     <li>
	                        <a href="#">restaurant</a>
	                     </li>
	                     <li>
	                        <a href="#">life style</a>
	                     </li>
	                     <li>
	                        <a href="#">design</a>
	                     </li>
	                     <li>
	                        <a href="#">illustration</a>
	                     </li>
	                  </ul>
	               </aside>
	               <aside class="single_sidebar_widget instagram_feeds">
	                  <h4 class="widget_title">Instagram Feeds</h4>
	                  <ul class="instagram_row flex-wrap">
	                     <li>
	                        <a href="#">
	                           <img class="img-fluid" src="img/post/post_5.png" alt="">
	                        </a>
	                     </li>
	                     <li>
	                        <a href="#">
	                           <img class="img-fluid" src="img/post/post_6.png" alt="">
	                        </a>
	                     </li>
	                     <li>
	                        <a href="#">
	                           <img class="img-fluid" src="img/post/post_7.png" alt="">
	                        </a>
	                     </li>
	                     <li>
	                        <a href="#">
	                           <img class="img-fluid" src="img/post/post_8.png" alt="">
	                        </a>
	                     </li>
	                     <li>
	                        <a href="#">
	                           <img class="img-fluid" src="img/post/post_9.png" alt="">
	                        </a>
	                     </li>
	                     <li>
	                        <a href="#">
	                           <img class="img-fluid" src="img/post/post_10.png" alt="">
	                        </a>
	                     </li>
	                  </ul>
	               </aside>
	               <aside class="single_sidebar_widget newsletter_widget">
	                  <h4 class="widget_title">Newsletter</h4>
	                  <form action="#">
	                     <div class="form-group">
	                        <input type="email" class="form-control" onfocus="this.placeholder = ''"
	                           onblur="this.placeholder = 'Enter email'" placeholder='Enter email' required>
	                     </div>
	                     <button class="button rounded-0 primary-bg text-white w-100 btn_1"
	                        type="submit">Subscribe</button>
	                  </form>
	               </aside>
	            </div>
	         </div>
	      </div>
	   </div>
	</section>
	<!--================Blog Area end =================-->

	<div id="map1" style="width:250px;height:200px;"></div>
	<br><hr><br>
	<div id="map2" style="width:250px;height:200px;"></div>
	
	
	<!-- Kakao Talk Script -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=de3ffd7118fa83df7b5c421e1967d64d"></script>
	<script>
		var container1 = document.getElementById('map1');
		var options1 = {
			center: new kakao.maps.LatLng(${address[0] }, ${address[1]}),
			level: 3
		};
		var map1 = new kakao.maps.Map(container1, options1);
		var markerPosition = new kakao.maps.LatLng(${address[0]}, ${address[1]})
		var marker1 = new kakao.maps.Marker({
			position: markerPosition
		})
		marker1.setMap(map1)
		///////////////////////////////////////////////////////////
		var container2 = document.getElementById('map2');
		var options2 = {
			center: new kakao.maps.LatLng(${address[2]}, ${address[3]}),
			level: 3
		};
		var map2 = new kakao.maps.Map(container2, options2);
		var markerPosition = new kakao.maps.LatLng(${address[2]}, ${address[3]})
		var marker2 = new kakao.maps.Marker({
			position: markerPosition
		})
		marker2.setMap(map2)
	</script>
	<!-- Kakao Talk Script end. -->
	<h1><c:out value="${course }"></c:out></h1>
	<h1><c:out value="${address }"></c:out></h1>
	
	
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