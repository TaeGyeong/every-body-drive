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

	<div id="map1" style="width:250px;height:200px;"></div>
	<br><hr><br>
	<div id="map2" style="width:250px;height:200px;"></div>
	
	
	<!-- Kakao Talk Script -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=de3ffd7118fa83df7b5c421e1967d64d"></script>
	<script>
		var container1 = document.getElementById('map1');
		var options1 = {
			center: new kakao.maps.LatLng(${address[0]}, ${address[1]}),
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
		
		function openRoute() {
			window.open("https://map.kakao.com/link/to/,37.402056,127.108212");
		}
	</script>
	<!-- Kakao Talk Script end. -->
	<button onClick="https://map.kakao.com/link/to/카카오판교오피스,37.402056,127.108212">길찾기</button>
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