<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="zxx">
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

    <!-- banner part start-->
    <section class="banner_part">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7">
                    <div class="banner_text">
                        <div class="banner_text_iner">
                            <h5>Best way to Drive</h5>
                            <h1>Drive For Everybody</h1>
                            <h2 style="color:white">모두의 드라이브</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- banner part start-->

    <!-- banner part start-->
    <section class="search_your_country">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="search_form">
                        <form action="courseSearchServlet" method="post">
                            <div class="form-row">
                                <div class="col-md-12">
                                    <div class="search_form_iner">
										<select name="location" class="custom_select" id="inlineFormCustomSelect">
                                            <option selected>지역</option>
                                            <option value="서울특별시">서울특별시</option>
                                            <option value="경기도">경기도</option>
                                            <option value="대전광역시">대전광역시</option>
                                            <option value="대구광역시">대구광역시</option>
                                            <option value="광주광역시">광주광역시</option>
                                            <option value="부산광역시">부산광역시</option>
                                            <option value="인천광역시">인천광역시</option>
                                            <option value="울산광역시">울산광역시</option>
                                            <option value="강원도">강원도</option>
                                            <option value="충청북도">충청북도</option>
                                            <option value="충청남도">충청남도</option>
                                            <option value="경상북도">경상북도</option>
                                            <option value="경상남도">경상남도</option>
                                            <option value="전라북도">전라북도</option>
                                            <option value="전라남도">전라남도</option>
                                            <option value="세종특별자치시">세종특별자치시</option>
                                            <option value="제주도">제주도</option>
                                        </select>
                                        <select name="theme" class="custom_select" id="inlineFormCustomSelect" required>
                                            <option selected>테마</option>
                                            <option value="공원">공원</option>
                                            <option value="카페">카페</option>
                                            <option value="데이트">데이트</option>
                                            <option value="명소">명소</option>
                                            <option value="바다/호수">바다/호수</option>
                                            <option value="봄">봄</option>
                                            <option value="여름">여름</option>
                                            <option value="가을">가을</option>
                                            <option value="겨울">겨울</option>
                                            <option value="당일치기">당일치기</option>
                                            <option value="산악">산악</option>
                                            <option value="새벽">새벽</option>
                                            <option value="야간">야간</option>
                                            <option value="초보">초보</option>
                                            <option value="혼자">혼자</option>
                                            <option value="주말">주말</option>
                                        </select>
                                        <input type="text" name="search" placeholder="검색어를 입력하세요."
                                        onfocus="this.placeholder = ''" onblur="this.placeholder = '검색어를 입력하세요.'" required
                                        class="single-input">
                                		<button type="submit" class="genric-btn success">SEARCH</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="single_donation_item">
                        <img src="img/icon/money_bag.svg" alt="#">
                        <h4>고객 맞춤형 검색의 편리함</h4>
                        <p>나만의 드라이브 코스를 알고 싶을 때, 테마별/지역별로 검색해보세요 ! 즉시 드라이브 코스를 추천해드립니다. </p>
                        <a href="#" class="read_btn">read more</a>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_donation_item">
                        <img src="img/icon/money_bag.svg" alt="#">
                        <h4>테마별/지역별 드라이브 코스 추천</h4>
                        <p>선호하는 테마별 드라이브 코스를 지역별로 검색해보세요! 단순한 드라이브가 아닌 새로운 드라이브 경험이 될거에요!</p>
                        <a href="#" class="read_btn">read more</a>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_donation_item">
                        <img src="img/icon/money_bag.svg" alt="#">
                        <h4>드라이브 코스 평가와 공유의 가치</h4>
                        <p>사용자 간 '나만의 드라이브 코스'를 공유해보세요! 그리고 다양한 코스를 평가해보세요! </p>
                        <a href="#" class="read_btn">read more</a>
                    </div>
                </div>
            </div>
        </div>
        <img src="img/animate_icon/Shape-1.png" alt="" class="feature_icon_1">
        <img src="img/animate_icon/Shape-2.png" alt="" class="feature_icon_2">
    </section>
    <!-- banner part start-->









    <!-- feature_part start-->
    <section class="feature_part padding_top">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-lg-7">
                    <div class="feature_img">
                        <img src="img/about_img.png" alt="">
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="feature_part_text">
                        <img src="img/section_tittle_img.png" alt="#">
                        <h2>Let's Drive for You !</h2>
                        <p>자동차는 있지만 어디로 드라이브를 가야할지 모르는 고객에게 맞춤형 드라이브 코스를 추천합니다! 드라이브 코스를 일일이 검색하는 것이 번거로웠던 만큼, 모두의 드라이브 서비스는 검색의 자유로움과 편리함을 제공할 수 있습니다.</p>
                        <span>Enjoy Your Drive course!</span>
                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <div class="feature_part_text_iner">
                                    <img src="img/icon/tour_icon_1.png" alt="">
                                    <h4>Theme</h4>
                                    <p>530 Places</p>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="feature_part_text_iner">
                                    <img src="img/icon/tour_icon_2.png" alt="">
                                    <h4>Location</h4>
                                    <p>530 Places</p>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="feature_part_text_iner">
                                    <img src="img/icon/tour_icon_3.png" alt="">
                                    <h4>Shared</h4>
                                    <p>130 Places</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <img src="img/animate_icon/Shape-1.png" alt="" class="feature_icon_1">
        <img src="img/animate_icon/Shape-2.png" alt="" class="feature_icon_2">
        <img src="img/animate_icon/Shape-3.png" alt="" class="feature_icon_3">
    </section>
    <!-- upcoming_event part start-->

    <!-- use sasu part end-->
    <section class="popular_place padding_top">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5">
                    <div class="section_tittle text-center">
                        <img src="img/section_tittle_img.png" alt="">
                        <h2>Most Popular <span>Drive Course</span> </h2>
                        <p>맞춤형 드라이브 코스로 새로운 여정을 떠나보세요! 당신의 삶에 새로운 가치가 더해질거에요! </p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/icon/place_icon_1.png" alt="">
                        <h4>엄태경</h4>
                        <p>Ajou University, Developer</p>
                        <a href="#" class="btn1">More Info</a>
                    </div>
                </div><div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/icon/place_icon_2.png" alt="">
                        <h4>정주현</h4>
                        <p>Ajou University, Developer</p>
                        <a href="#" class="btn1">More Info</a>
                    </div>
                </div><div class="col-lg-4 col-sm-6">
                    <div class="single_popular_place">
                        <img src="img/icon/place_icon_3.png" alt="">
                        <h4>박창현</h4>
                        <p>Ajou University, Developer</p>
                        <a href="#" class="btn1">More Info</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- use sasu part end-->

    <!--::footer_part start::-->
    <footer class="footer_part">
        <div class="container">
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