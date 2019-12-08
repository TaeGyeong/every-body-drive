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

    <!-- banner part start-->
    <section class="banner_part">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7">
                    <div class="banner_text">
                        <div class="banner_text_iner">
                            <h5>Best way to Drive</h5>
                            <h1>Drive Course <br> For Everyone</h1>
                            <h2 style="color:white">����� ����̺�</h2>
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
                                            <option selected>����</option>
                                            <option value="����Ư����">����Ư����</option>
                                            <option value="��⵵">��⵵</option>
                                            <option value="����������">����������</option>
                                            <option value="�뱸������">�뱸������</option>
                                            <option value="���ֱ�����">���ֱ�����</option>
                                            <option value="�λ걤����">�λ걤����</option>
                                            <option value="��õ������">��õ������</option>
                                            <option value="��걤����">��걤����</option>
                                            <option value="������">������</option>
                                            <option value="��û�ϵ�">��û�ϵ�</option>
                                            <option value="��û����">��û����</option>
                                            <option value="���ϵ�">���ϵ�</option>
                                            <option value="��󳲵�">��󳲵�</option>
                                            <option value="����ϵ�">����ϵ�</option>
                                            <option value="���󳲵�">���󳲵�</option>
                                            <option value="����Ư����ġ��">����Ư����ġ��</option>
                                            <option value="���ֵ�">���ֵ�</option>
                                        </select>
                                        <select name="theme" class="custom_select" id="inlineFormCustomSelect" required>
                                            <option selected>�׸�</option>
                                            <option value="����">����</option>
                                            <option value="ī��">ī��</option>
                                            <option value="����Ʈ">����Ʈ</option>
                                            <option value="���">���</option>
                                            <option value="�ٴ�/ȣ��">�ٴ�/ȣ��</option>
                                            <option value="��">��</option>
                                            <option value="����">����</option>
                                            <option value="����">����</option>
                                            <option value="�ܿ�">�ܿ�</option>
                                            <option value="����ġ��">����ġ��</option>
                                            <option value="���">���</option>
                                            <option value="����">����</option>
                                            <option value="�߰�">�߰�</option>
                                            <option value="�ʺ�">�ʺ�</option>
                                            <option value="ȥ��">ȥ��</option>
                                            <option value="�ָ�">�ָ�</option>
                                        </select>
                                        <input type="text" name="search" placeholder="�˻�� �Է��ϼ���."
                                        onfocus="this.placeholder = ''" onblur="this.placeholder = '�˻�� �Է��ϼ���.'" required
                                        class="single-input">
                                		<button type="submit" class="genric-btn success">SEARCH</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- banner part start-->
    <!-- blog post part start-->
    <section class="blog_part padding_top">
        <div class="container">
            <div class="row">
	            <c:forEach var="course" items="${listCourse }">
		            <div class="col-lg-4 col-sm-4">
	                    <div class="single_blog_part">
	                        <form action="viewDetail" id="detail${course.courseId }" method="post">
								<img src="img/course_id/${course.courseId}.jpg" height=250,
									width=300 alt="" style="cursor:pointer" onclick="document.getElementById('detail${course.courseId }').submit();">
								<input type="hidden" name="courseId" value="${course.courseId }">
							</form>
	                        <div class="blog_text">
	                            <h2><c:out value="${course.courseName}"></c:out></h2>
	                            <p><c:out value="${course.location}"></c:out></p>
	                            <p><c:out value="${course.dist}"></c:out> km</p>
	                            <ul>
	                                <li>
	                                    <i class="ti-calendar"></i>
	                                    <p><c:out value="${course.totalTime}"></c:out>��</p>
	                                </li>
	                                <li>
	                                    <i class="ti-heart"></i>
	                                    <!-- �̺κп� ���߿� star rate ���� ����. -->
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
<!--         <img src="img/overlay_2.png" alt="#" class="footer_overlay"> -->
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