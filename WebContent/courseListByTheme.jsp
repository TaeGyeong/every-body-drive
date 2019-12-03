<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
							<h2>
								<c:out value="${theme}"></c:out>
							</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
    <!-- breadcrumb start-->
    <!-- blog post part start-->
    <section class="blog_part padding_top">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="section_tittle">
                        <img src="img/section_tittle_img.png" alt="">
                        <h2>${theme } 테마목록</h2>
                    </div>
                </div>
            </div>
            <div class="row">
	            <c:forEach var="course" items="${listCourse}">
		            <div class="col-lg-4 col-sm-4">
	                    <div class="single_blog_part">
	                        <img src="" alt="">
	                        <div class="blog_text">
	                            <h2><c:out value="${course.courseName}"></c:out></h2>
	                            <p><c:out value="${course.location}"></c:out></p>
	                            <p><c:out value="${course.dist}"></c:out> km</p>
	                            <ul>
	                                <li>
	                                    <i class="ti-calendar"></i>
	                                    <p><c:out value="${course.totalTime}"></c:out>분</p>
	                                </li>
	                                <li>
	                                    <i class="ti-heart"></i>
	                                    <!-- 이부분에 나중에 star rate 넣을 예정. -->
	                                </li>
	                                <li>
	                                    <i class="far fa-comment-dots"></i>
	                                    <p>10</p>
	                                </li>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
					<!-- <div type="hidden"><c:out value="${course.courseId}"></c:out></div> -->
				</c:forEach>
            </div>
        </div>
    </section>
    <!-- blog post part end-->
    
    
	
</body>
</html>