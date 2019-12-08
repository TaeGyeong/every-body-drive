<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
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
      

      <div class="row">
        <div class="col-12">
          <h2 class="contact-title">나만의 드라이브 코스 등록하기</h2>
        </div>
        <div class="col-lg-8">
          <form class="form-contact contact_form" action="submitCourseServlet" method="post" id="submitForm"
            novalidate="novalidate">
            <div class="row">
              <div class="col-12">             
                <div class="form-group">
                  <input class="form-control" name="name" id="name" type="text" onfocus="this.placeholder = ''"
                    onblur="this.placeholder = '코스 이름을 입력하세요'" placeholder='코스 이름을 입력하세요'>
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
                  <input class="form-control" name="distance" id="distance" type="text" onfocus="this.placeholder = ''"
                    onblur="this.placeholder = '거리'" placeholder='거리(단위: km)'>
                </div>                
              </div>
                           
              <div class="col-sm-6">            
                <div class="form-group">
                  <input class="form-control" name="totaltime" id="totaltime" type="text" onfocus="this.placeholder = ''"
                    onblur="this.placeholder = '소요시간'" placeholder='소요시간(단위: 분)'>
                </div>
              </div>
              
            </div>
            
            <div class="button-group-area mt-40" style="text-align:center;">
              <button type="submit" class="button button-contactForm btn_1">Submit</button>
            </div>
            
            
          </form>
        </div>
        <div class="col-lg-4">
          <div class="media contact-info">
            <span class="contact-info__icon"><i class="ti-home"></i></span>
            <div class="media-body">
              <h3>Buttonwood, California.</h3>
              <p>Rosemead, CA 91770</p>
            </div>
          </div>
          <div class="media contact-info">
            <span class="contact-info__icon"><i class="ti-tablet"></i></span>
            <div class="media-body">
              <h3>00 (440) 9865 562</h3>
              <p>Mon to Fri 9am to 6pm</p>
            </div>
          </div>
          <div class="media contact-info">
            <span class="contact-info__icon"><i class="ti-email"></i></span>
            <div class="media-body">
              <h3>support@colorlib.com</h3>
              <p>Send us your query anytime!</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- ================ contact section end ================= -->

  <!--::footer_part start::-->
  <footer class="footer_part">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-lg-3">
                <div class="single_footer_part">
                    <h4>About Agency</h4>
                    <p>The world has become so fast paced that people don’t want 
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