<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="zxx">

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
							<h2>테마로 코스찾기</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
    <!-- breadcrumb start-->

    <!-- popular place part start-->
    <section class="popular_place padding_top">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5">
                    <div class="section_tittle text-center">
                        <img src="img/section_tittle_img.png" alt="">
                        <h2>테마<span>목록</span> </h2>
                    </div>
                </div>
            </div>	
            <div class="row justify-content-center">
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/cafe.png" alt="">
                        <h4>카페</h4>
                        <p>cafe</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="카페">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/park.png" alt="">
                        <h4>공원</h4>
                        <p>park</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="공원">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/camera.png" alt="">
                        <h4>명소</h4>
                        <p>Famous Place</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="명소">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/sakura.png" alt="">
                        <h4>봄</h4>
                        <p>Spring</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="봄">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/ice-cream.png" alt="">
                        <h4>여름</h4>
                        <p>Summer</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="여름">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/dry-leaf.png" alt="">
                        <h4>가을</h4>
                        <p>Fall</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="가을">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/igloo.png" alt="">
                        <h4>겨울</h4>
                        <p>winter</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="겨울">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/couple.png" alt="">
                        <h4>데이트</h4>
                        <p>date drive</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="데이트">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/24-hours.png" alt="">
                        <h4>당일치기</h4>
                        <p>one day trip</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="당일치기">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/calm.png" alt="">
                        <h4>바다 & 호수</h4>
                        <p>sea & lake</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="바다/호수">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/mountain.png" alt="">
                        <h4>산악</h4>
                        <p>Mountain</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="산악">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/stars.png" alt="">
                        <h4>새벽</h4>
                        <p>dawn</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="새벽">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/moon.png" alt="">
                        <h4>야간</h4>
                        <p>night</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="야간">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/sunrise.png" alt="">
                        <h4>일출 & 일몰</h4>
                        <p>sunrise & sunset</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="일출/일몰">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/luggage.png" alt="">
                        <h4>주말</h4>
                        <p>weekend</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="주말">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/driving.png" alt="">
                        <h4>초보</h4>
                        <p>beginner</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="초보">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/theme/driver.png" alt="">
                        <h4>혼자</h4>
                        <p>by oneself</p>
                        <form action="themeControllerServlet" method="post">
							<input type="hidden" name="theme" value="혼자">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>        
            </div>
        </div>
    </section>
    <!-- popular place part end-->

    <!-- blog post part start-->
    <section class="blog_part padding_top">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="section_tittle">
                        <img src="img/section_tittle_img.png" alt="">
                        <h2>our blog</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit 
                        sed  do eiusmod tempor incididunt ut</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="single_blog_part">
                        <img src="img/blog/blog_1.png" alt="">
                        <div class="blog_text">
                            <h2>Luxerious Car Rental</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, 
                            sed do eiusmod tempor incididunt ut labore et dolore magna 
                            aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                            <ul>
                                <li>
                                    <i class="ti-calendar"></i>
                                    <p>13th Dec</p>
                                </li>
                                <li>
                                    <i class="ti-heart"></i>
                                    <p>15</p>
                                </li>
                                <li>
                                    <i class="far fa-comment-dots"></i>
                                    <p>10</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_blog_part">
                        <img src="img/blog/blog_2.png" alt="">
                        <div class="blog_text">
                            <h2>Luxerious Car Rental</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, 
                            sed do eiusmod tempor incididunt ut labore et dolore magna 
                            aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                            <ul>
                                <li>
                                    <i class="ti-calendar"></i>
                                    <p>13th Dec</p>
                                </li>
                                <li>
                                    <i class="ti-heart"></i>
                                    <p>15</p>
                                </li>
                                <li>
                                    <i class="far fa-comment-dots"></i>
                                    <p>10</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_blog_part">
                        <img src="img/blog/blog_3.png" alt="">
                        <div class="blog_text">
                            <h2>Luxerious Car Rental</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, 
                            sed do eiusmod tempor incididunt ut labore et dolore magna 
                            aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                            <ul>
                                <li>
                                    <i class="ti-calendar"></i>
                                    <p>13th Dec</p>
                                </li>
                                <li>
                                    <i class="ti-heart"></i>
                                    <p>15</p>
                                </li>
                                <li>
                                    <i class="far fa-comment-dots"></i>
                                    <p>10</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <img src="img/overlay_1.png" alt="#" class="blog_img">
    </section>
    <!-- blog post part end-->

	<!--::footer_part start::-->
    <footer class="footer_part">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-lg-3">
                    <div class="single_footer_part">
                        <h4>About Agency</h4>
                        <p>The world has become so fast paced that people don占쏙옙t want 
                        to stand by reading a page of information, they would much 
                        rather look at a presentation and understand the message. 
                        It has come to a point where images</p>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="single_footer_part">
                        <h4>Navigation Links</h4>
                        <ul class="list-unstyled">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Features</a></li>
                            <li><a href="#">Services</a></li>
                            <li><a href="#">Portfolio</a></li>
                            <li><a href="#">team</a></li>
                            <li><a href="#">Pricing</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="single_footer_part">
                        <h4>Newsletter</h4>
                        <p>Heaven fruitful doesn't over lesser in days. Appear creeping seasons deve behold bearing days
                            open
                        </p>
                        <div id="mc_embed_signup">
                            <form target="_blank"
                                action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                method="get" class="subscribe_form relative mail_part">
                                <input type="email" name="email" id="newsletter-form-email" placeholder="Email Address"
                                    class="placeholder hide-on-focus" onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = ' Email Address '">
                                <button type="submit" name="submit" id="newsletter-submit"
                                    class="email_icon newsletter-submit button-contactForm"><i
                                        class="far fa-paper-plane"></i></button>
                                <div class="mt-10 info"></div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="single_footer_part">
                        <h4>Instafeed</h4>
                        <div class="footer_img">
                            <a href="#"><img src="img/footer_img/footer_1.png" alt=""></a>
                            <a href="#"><img src="img/footer_img/footer_2.png" alt=""></a>
                            <a href="#"><img src="img/footer_img/footer_3.png" alt=""></a>
                            <a href="#"><img src="img/footer_img/footer_4.png" alt=""></a>
                            <a href="#"><img src="img/footer_img/footer_5.png" alt=""></a>
                            <a href="#"><img src="img/footer_img/footer_6.png" alt=""></a>
                            <a href="#"><img src="img/footer_img/footer_7.png" alt=""></a>
                            <a href="#"><img src="img/footer_img/footer_8.png" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-lg-8">
                    <div class="copyright_text">
                        <P><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></P>
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
        <img src="img/overlay_2.png" alt="#" class="footer_overlay">
    </footer>
    <!--::footer_part end::-->

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