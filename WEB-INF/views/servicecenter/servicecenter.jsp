<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>고객센터</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="resources/style.css">

</head>

<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="lds-ellipsis">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
        <!-- Navbar Area -->
        <div class="oneMusic-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="oneMusicNav">

                        <!-- Nav brand -->
                        <a href="index" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                           <div class="classynav">
                                <ul>
                                    <li><a href="/recopay/index">Home</a></li>
                                    <li><a href="/recopay/perform">연극</a>
                                    	<ul class="dropdown">
                                    		<li><a href="/recopay/perform/intro">연극소개</a></li>
                                    		<li><a href="">장르</a></li>
                                    		<li><a href="">후기</a></li>
                                    	</ul>
                                    </li>
                                    <li><a href="reservation">예매</a>
                                    	<ul class="dropdown">
                                    		<li><a href="/recopay/reservation/schedule">연극 일정</a></li>
                                    		<li><a href="/recopay/reservation">연극 예매</a></li>
                                    		<li><a href="/recopay/reservation/ticketCheck">예매 확인 및 취소</a></li>
                                    	</ul>
                                    </li>
                                    <li><a href="blog">극장</a>
                                   		<ul class="dropdown">
                                    		<li><a href="">공연장 정보</a></li>
                                    		<li><a href="">오시는 길</a></li>
                                    	</ul>
                                    </li>
                                    <li><a href="contact">Event</a>
                                    	<ul class="dropdown">
                                    		<li><a href="">할인</a></li>
                                    		<li><a href="">진행중인 이벤트</a></li>
                                    		<li><a href="">종료된 이벤트</a></li>
                                    	</ul>
                                    </li>
                                    <li><a href="contact">고객센터</a>
                                    	<ul class="dropdown">
                                    		<li><a href="<%=request.getContextPath() %>/servicecenter/notice/notice">공지사항</a></li>
                                    		<li><a href="<%=request.getContextPath() %>/servicecenter/qna/qna">1대1문의</a></li>
                                    		<li><a href="<%=request.getContextPath() %>/servicecenter/faq/faq">자주묻는질문</a></li>
                                    	</ul>
                                    </li>
                                    <li><a href="contact">소개</a>
                                    	<ul class="dropdown">
                                    		<li><a href="">인사말</a></li>
                                    		<li><a href="">조직도</a></li>
                                    		<li><a href="">RecoPAY 소개</a></li>
                                    	</ul>
                                    </li>
                                </ul>

                                <!-- Login/Register & Cart Button -->
                                <div class="login-register-cart-button d-flex align-items-center">
                                    <!-- Login/Register -->
                                    <div class="login-register-btn mr-50">
                                        <a href="login" id="loginBtn">Login / Register</a>
                                    </div>

                                    <!-- Cart Button -->
                                    <div class="cart-btn">
                                        <p><span class="icon-shopping-cart"></span> <span class="quantity">1</span></p>
                                    </div>
                                </div>
                            </div>
                            <!-- Nav End -->

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb.jpg);">
        <div class="bradcumbContent">
            <p>안녕하세요 Recopay 고객센터입니다</p>
            <h2>무엇을 도와 드릴까요?</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Contact Area Start ##### -->
    <section class="contact-area section-padding-100-0">
        <div class="container">
            <div class="row">

                <div class="col-12 col-lg-3">
                    <div class="contact-content mb-100">
                        <!-- Title -->
                        <div class="contact-title mb-50">
                            <h5>Recopay</h5>
                        </div>

                        <!-- Single Contact Info -->
                        <div class="single-contact-info d-flex align-items-center">
                            <div class="icon mr-30">
                                <span class="icon-placeholder"></span>                          
                            </div>
                           <p><a href="<%=request.getContextPath() %>/servicecenter/notice/notice">공지사항</a></p>
                        </div>

                        <!-- Single Contact Info -->
                        <div class="single-contact-info d-flex align-items-center">
                            <div class="icon mr-30">
                                <span class="icon-smartphone"></span>
                            </div>
                          <p><a href="<%=request.getContextPath() %>/servicecenter/qna/qna">1대1문의</a></p>
                        </div>

                        <!-- Single Contact Info -->
                        <div class="single-contact-info d-flex align-items-center">
                            <div class="icon mr-30">
                                <span class="icon-mail"></span>
                            </div>
                          <p><a href="<%=request.getContextPath() %>/servicecenter/faq/faq">자주묻는질문</a></p>
                        </div>

                        <!-- Contact Social Info -->
                        <div class="contact-social-info mt-50">
                            <a href="#" data-toggle="tooltip" data-placement="top" title="Pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="top" title="Dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="top" title="Behance"><i class="fa fa-behance" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="top" title="Linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        </div>

                    </div>
                </div>

   <div id="RecopayHead" role="banner">

		    <div class="cs_head">

		        <h1 class="tit_cs"><a href="" class="bg_cs cs_logo"><span class="ir_wa">고객센터</span></a></h1>
		        <h2 class="screen_out">검색</h2>

                <div id="searchBox" class="wrap_search">
                    <form id="Search" class="sform_comm" name="search" method="get" autocomplete="off" onsubmit="searchBoxBeforeSubmitFunc(this)">
                        <fieldset class="fld_inside opt_on">                      
                            <div class="box_searchbar">
                                <label class="lab_keyword" for="qTop" id="labKeyword">궁금한 점이 있다면 도움말을 검색해 보세요.</label>
                                <div>
                                    <input id="qTop" class="tf_keyword" type="text" name="q" autocomplete="off" title="검색어 입력" value="">
                                                                        <button id="daumBtnSearch" class="ico_search btn_search" type="submit"><span class="ir_wa">검색</span></button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
				<div class="suggestBox box_sub" style="display: none;"><div class="baseBox bg"></div>
		    </div>
	    </div>
            </div>
        </div>
        <div class="item_arae">
					<ul>	
						<li class="item_01"><a href="" target="_blank"><i></i>예매문의</a></li>										
						<li class="item_02"><a href="" target="_self"><i></i>극장문의</a></li>
						<li class="item_03"><a href="" target="_self"><i></i>이벤트 문의</a></li>
					</ul>
				</div>
    </section>
    <!-- ##### Contact Area End ##### -->

    <!-- ##### Contact Area Start ##### -->
    <section class="contact-area section-padding-0-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <p>See whatâs new</p>
                        <h2>Get In Touch</h2>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <!-- Contact Form Area -->
                    <div class="contact-form-area">
                        <form action="#" method="post">
                            <div class="row">
                                <div class="col-md-6 col-lg-4">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="name" placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4">
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="email" placeholder="E-mail">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="subject" placeholder="Subject">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                    </div>
                                </div>
                                <div class="col-12 text-center">
                                    <button class="btn oneMusic-btn mt-30" type="submit">Send <i class="fa fa-angle-double-right"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Contact Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row d-flex flex-wrap align-items-center">
                <div class="col-12 col-md-6">
                    <a href="#"><img src="img/core-img/logo.png" alt=""></a>
                    <p class="copywrite-text"><a href="#"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>

                <div class="col-12 col-md-6">
                    <div class="footer-nav">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Albums</a></li>
                            <li><a href="#">Events</a></li>
                            <li><a href="#">News</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>