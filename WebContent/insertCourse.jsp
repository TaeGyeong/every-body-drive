<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="zxx">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
						<a class="navbar-brand" href="index.html"> <img
							src="img/logo.png" alt="logo">
						</a>
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="menu_icon"><i class="fas fa-bars"></i></span>
						</button>

						<div class="collapse navbar-collapse main-menu-item"
							id="navbarSupportedContent">
							<ul class="navbar-nav">
								<li class="nav-item"><a class="nav-link" href="index.html">Home</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="about.html">about</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="packages.html">packages</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="blog.html"
									id="navbarDropdown" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> Blog </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="blog.html"> blog</a> <a
											class="dropdown-item" href="single-blog.html">Single blog</a>
									</div></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="blog.html"
									id="navbarDropdown1" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> pages </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown1">
										<a class="dropdown-item" href="elements.html">Elements</a>
									</div></li>
								<li class="nav-item"><a class="nav-link"
									href="contact.html">Contact</a></li>
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
					<div class="breadcrumb_iner text-center"></div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->

	<!-- Start Sample Area -->
	<section class="sample-text-area">
		<div class="container box_1170">
			<h3 class="text-heading">코스 등록하기</h3>
			<p class="sample-text"></p>
		</div>
	</section>
	<!-- End Sample Area -->
	<!-- Start Align Area -->
	<div class="whole-wrap">
		<div class="container box_1170">
			<div class="section-top-border">
				<div class="row">
					<div class="col-lg-8 col-md-8">
						<form action="#">
							<div class="mt-10">
								<input type="text" name="first_name" placeholder="First Name"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = '코스 이름'" required
									class="single-input">
							</div>
							<div class="input-group-icon mt-10">
								<div class="icon">
									<i class="fa fa-globe" aria-hidden="true"></i>
								</div>
								<div class="form-select" id="default-select_1">
									<select>
										<option value="0">서울특별시</option>
										<option value="1">인천광역시</option>
										<option value="2">세종특별자치시</option>
										<option value="3">대전광역시</option>
										<option value="4">대구광역시</option>
										<option value="5">울산광역시</option>
										<option value="6">광주광역시</option>
										<option value="7">부산광역시</option>
										<option value="8">경기도</option>
										<option value="9">강원도</option>
										<option value="10">충청북도</option>
										<option value="11">충청남도</option>
										<option value="12">전라북도</option>
										<option value="13">전라남도</option>
										<option value="14">경상북도</option>
										<option value="15">경상남도</option>
										<option value="16">제주도</option>
									</select>
								</div>
							</div>
							<div class="mt-10">
								<input type="text" name="last_name" placeholder="Last Name"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Last Name'" required
									class="single-input">
							</div>
							<div class="mt-10">
								<input type="email" name="EMAIL" placeholder="Email address"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Email address'" required
									class="single-input">
							</div>
							<div class="input-group-icon mt-10">
								<div class="icon">
									<i class="fa fa-thumb-tack" aria-hidden="true"></i>
								</div>
								<input type="text" name="address" placeholder="Address"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Address'" required
									class="single-input">
							</div>
							<div class="input-group-icon mt-10">
								<div class="icon">
									<i class="fa fa-plane" aria-hidden="true"></i>
								</div>
								<div class="form-select" id="default-select">
									<select>
										<option value=" 1">테마선택</option>
										<option value="1">Dhaka</option>
										<option value="1">Dilli</option>
										<option value="1">Newyork</option>
										<option value="1">Islamabad</option>
									</select>
								</div>
							</div>
							<div class="mt-10">
								<textarea class="single-textarea" placeholder="Message"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Message'" required></textarea>
							</div>
							<!-- For Gradient Border Use -->
							<div class="mt-10">
								<div class="primary-input">
									<input id="primary-input" type="text" name="first_name"
										placeholder="Primary color" onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Primary color'"> <label
										for="primary-input"></label>
								</div>
							</div>
							<div class="mt-10">
								<input type="text" name="first_name" placeholder="Primary color"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Primary color'" required
									class="single-input-primary">
							</div>
							<div class="mt-10">
								<input type="text" name="first_name" placeholder="Accent color"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Accent color'" required
									class="single-input-accent">
							</div>
							<div class="mt-10">
								<input type="text" name="first_name"
									placeholder="Secondary color" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Secondary color'" required
									class="single-input-secondary">
							</div>
						</form>
					</div>
					<div class="col-lg-3 col-md-4 mt-sm-30">
						<div class="single-element-widget">
							<h3 class="mb-30">Switches</h3>
							<div class="switch-wrap d-flex justify-content-between">
								<p>01. Sample Switch</p>
								<div class="primary-switch">
									<input type="checkbox" id="default-switch"> <label
										for="default-switch"></label>
								</div>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>02. Primary Color Switch</p>
								<div class="primary-switch">
									<input type="checkbox" id="primary-switch" checked> <label
										for="primary-switch"></label>
								</div>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>03. Confirm Color Switch</p>
								<div class="confirm-switch">
									<input type="checkbox" id="confirm-switch" checked> <label
										for="confirm-switch"></label>
								</div>
							</div>
						</div>
						<div class="single-element-widget mt-30">
							<h3 class="mb-30">Selectboxes</h3>
							<div class="default-select" id="default-select_2">
								<select>
									<option value=" 1">English</option>
									<option value="1">Spanish</option>
									<option value="1">Arabic</option>
									<option value="1">Portuguise</option>
									<option value="1">Bengali</option>
								</select>
							</div>
						</div>


						<div class="single-element-widget mt-30">
							<h3 class="mb-30">Checkboxes</h3>
							<div class="switch-wrap d-flex justify-content-between">
								<p>01. Sample Checkbox</p>
								<div class="primary-checkbox">
									<input type="checkbox" id="default-checkbox"> <label
										for="default-checkbox"></label>
								</div>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>02. Primary Color Checkbox</p>
								<div class="primary-checkbox">
									<input type="checkbox" id="primary-checkbox" checked> <label
										for="primary-checkbox"></label>
								</div>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>03. Confirm Color Checkbox</p>
								<div class="confirm-checkbox">
									<input type="checkbox" id="confirm-checkbox"> <label
										for="confirm-checkbox"></label>
								</div>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>04. Disabled Checkbox</p>
								<div class="disabled-checkbox">
									<input type="checkbox" id="disabled-checkbox" disabled>
									<label for="disabled-checkbox"></label>
								</div>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>05. Disabled Checkbox active</p>
								<div class="disabled-checkbox">
									<input type="checkbox" id="disabled-checkbox-active" checked
										disabled> <label for="disabled-checkbox-active"></label>
								</div>
							</div>
						</div>
						<div class="single-element-widget mt-30">
							<h3 class="mb-30">Radios</h3>
							<div class="switch-wrap d-flex justify-content-between">
								<p>01. Sample radio</p>
								<div class="primary-radio">
									<input type="checkbox" id="default-radio"> <label
										for="default-radio"></label>
								</div>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>02. Primary Color radio</p>
								<div class="primary-radio">
									<input type="checkbox" id="primary-radio" checked> <label
										for="primary-radio"></label>
								</div>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>03. Confirm Color radio</p>
								<div class="confirm-radio">
									<input type="checkbox" id="confirm-radio" checked> <label
										for="confirm-radio"></label>
								</div>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>04. Disabled radio</p>
								<div class="disabled-radio">
									<input type="checkbox" id="disabled-radio" disabled> <label
										for="disabled-radio"></label>
								</div>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>05. Disabled radio active</p>
								<div class="disabled-radio">
									<input type="checkbox" id="disabled-radio-active" checked
										disabled> <label for="disabled-radio-active"></label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Align Area -->

	<!--::footer_part start::-->
	<footer class="footer_part">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3">
					<div class="single_footer_part">
						<h4>About Agency</h4>
						<p>The world has become so fast paced that people don’t want
							to stand by reading a page of information, they would much rather
							look at a presentation and understand the message. It has come to
							a point where images</p>
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
						<p>Heaven fruitful doesn't over lesser in days. Appear
							creeping seasons deve behold bearing days open</p>
						<div id="mc_embed_signup">
							<form target="_blank"
								action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
								method="get" class="subscribe_form relative mail_part">
								<input type="email" name="email" id="newsletter-form-email"
									placeholder="Email Address" class="placeholder hide-on-focus"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = ' Email Address '">
								<button type="submit" name="submit" id="newsletter-submit"
									class="email_icon newsletter-submit button-contactForm">
									<i class="far fa-paper-plane"></i>
								</button>
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
						<P>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="ti-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</P>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="footer_icon social_icon">
						<ul class="list-unstyled">
							<li><a href="#" class="single_social_icon"><i
									class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" class="single_social_icon"><i
									class="fab fa-twitter"></i></a></li>
							<li><a href="#" class="single_social_icon"><i
									class="fas fa-globe"></i></a></li>
							<li><a href="#" class="single_social_icon"><i
									class="fab fa-behance"></i></a></li>
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