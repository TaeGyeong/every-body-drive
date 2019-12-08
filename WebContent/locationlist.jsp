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
                                 <li class="nav-item">
                                    <a class="nav-link" href="MapTest.jsp">Map Test</a>
                                </li>
                                <li>
                                    <a class="nav-link" href="submit.jsp">Submit</a>
                                </li> 
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
							<h2>지역으로 코스찾기</h2>
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
                        <img src="img/location/seoul.png" alt="">
                        <h4>서울특별시</h4>
                        <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="서울특별시">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/location/kyunggi.jpg" height="75" alt="">
                        <h4>경기도</h4>
                        <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="경기도">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/location/incheon.jpg" height="75" alt="">
                        <h4>인천광역시</h4>
                        <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="인천광역시">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/location/kangwon.jpg" height="75" alt="">
                        <h4>강원도</h4>
                       <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="강원도">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                 <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/location/daejeon.jpg" height="75" alt="">
                        <h4>대전광역시</h4>
                       <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="대전광역시">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                    </div>
                    
                    <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/location/sejong.jpg" height="75" alt="">
                        <h4>세종시</h4>
                       <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="세종특별자치시">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                    </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/location/chungnam.png" height="75" alt="">
                        <h4>충청남도</h4>
                       <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="충청남도">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/location/chungbuk.png" height="75" alt="">
                        <h4>충청북도</h4>
                        <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="충청북도">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                 <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/location/daegu.jpg" height="75" alt="">
                        <h4>대구광역시</h4>
                        <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="대구광역시">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                    </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/location/gyeongnam.png" height="75" alt="">
                        <h4>경상남도</h4>
                        <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="경상남도">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/location/gyeongbuk.png" height="75" alt="">
                        <h4>경상북도</h4>
                        <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="경상북도">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/location/ulsan.jpg" height="75" alt="">
                        <h4>울산광역시</h4>
                        <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="울산광역시">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                     </div>
                 <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/location/gwangju.jpg" height="75" alt="">
                        <h4>광주광역시</h4>
                        <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="광주광역시">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                    </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/location/jeollabukdo.png" height="75" alt="">
                        <h4>전라북도</h4>
                        <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="전라북도">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/location/jeollanamdo.jpg" height="75" alt="">
                        <h4>전라남도</h4>
                       <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="전라남도">
	                        <button type="submit" class="genric-btn success radius">read more</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/location/jejudo.png" height="75" alt="">
                        <h4>제주도</h4>
                        <form action="locationControllerServlet" method="post">
							<input type="hidden" name="location" value="제주도">
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