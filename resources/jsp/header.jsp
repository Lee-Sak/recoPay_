<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<style>
#zzzz {

    width:100px;

 	background-color: rgba( 0, 0, 0, 0.2 );

    border: none;

    color:#fff;

    padding: 15px 0;

    text-align: center;

    text-decoration: none;

    display: inline-block;

    font-size: 15px;

    margin: 4px;

    cursor: pointer;

	transition: 0.4s;
}
#zzzz:hover {
	opacity: 1;
	background-color: #000000;
	color: white;
	border: none;
}


</style>
<meta charset="UTF-8">
<title>Header</title>
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
                        <a href="<%=request.getContextPath() %>/index" class="nav-brand"><img src="<%=request.getContextPath() %>/resources/img/core-img/logo.png" alt=""></a>

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
                                    <li><a href="<%=request.getContextPath() %>/index">Home</a></li>
                                    <li><a href="<%=request.getContextPath() %>/perform">??????</a>
                                    	<ul class="dropdown">
                                    		<li><a href="<%=request.getContextPath() %>/perform/intro">????????????</a></li>
                                    		<li><a href="<%=request.getContextPath() %>/perform/genre">??????</a></li>
                                    		<li><a href="<%=request.getContextPath() %>/perform/rest">??????</a></li>
                                    	</ul>
                                    </li>
                                    <li><a href="<%=request.getContextPath() %>/reservation">??????</a>
                                    	<ul class="dropdown">
                                    		<li><a href="<%=request.getContextPath() %>/reservation/schedule">?????? ??????</a></li>
                                    		<li><a href="<%=request.getContextPath() %>/reservation/select">?????? ??????</a></li>
                                    		<li><a href="<%=request.getContextPath() %>/reservation/ticketCheck">?????? ?????? ??? ??????</a></li>
                                    	</ul>
                                    </li>
                                    <li><a href="<%=request.getContextPath() %>/theater">??????</a>
                                   		<ul class="dropdown">
                                    		<li><a href="<%=request.getContextPath() %>/theater/list">????????? ??????</a></li>
                                    		<li><a href="<%=request.getContextPath() %>/theater/map">????????? ???</a></li>
                                    	</ul>
                                    </li>
                                    <li><a href="<%=request.getContextPath() %>/event/list">Event</a>
                                    	<ul class="dropdown">
                                    		<li><a href="<%=request.getContextPath() %>/event/list">?????????</a></li>
                                    	</ul>
                                    </li>

                                    <li><a href="<%=request.getContextPath() %>/servicecenter/notice/notice">????????????</a>

                                    	<ul class="dropdown">
                                    		<li><a href="<%=request.getContextPath() %>/servicecenter/notice/notice">????????????</a></li>
                                    		<li><a href="<%=request.getContextPath() %>/servicecenter/qna/qna">1:1??????</a></li>
                                    		<li><a href="<%=request.getContextPath() %>/servicecenter/faq/faq">???????????? ??????</a></li>
                                    	</ul>
                                    </li>
                                    <li><a href="<%=request.getContextPath() %>/introduce">??????</a>
                                    	<ul class="dropdown">
                                    		<li><a href="<%=request.getContextPath() %>/introduce/introduce">?????????</a></li>
                                    		<li><a href="<%=request.getContextPath() %>/introduce/chart">?????????</a></li>
                                    		<li><a href="<%=request.getContextPath() %>/introduce/homeintro">RecoPAY ??????</a></li>
                                    	</ul>
                                    </li>
                                    <sec:authorize access="isAuthenticated()">
                                    <li><a href="<%=request.getContextPath() %>/reservation/mypage">mypage</a>
                                    </li>
                                    </sec:authorize>
                                </ul>
								
								<sec:authorize access="isAuthenticated()">
								<!-- Login/Register & Cart Button -->
                                <div class="login-register-cart-button d-flex align-items-center" style="margin-left: 30px; width: 265px;">
                                    <!-- Login/Register -->
                                    <div class="login-register-btn mr-50" style="width: 100%">
                                    	<sec:authentication property="principal.username" var="user_id" />
                                    	<p style="color:white; display: inline-block;">${user_id } ???, ???????????????.</p>
										<form action="${pageContext.request.contextPath }/login/logout" method='post' style="width: 40%; display: inline-block;">
										<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
										<button id="zzzz" class="">Logout</button>
                                        </form>
                                    </div>
                                </div>
                                </sec:authorize>
								
								
								
									
								
								<sec:authorize access="isAnonymous()">
                                <!-- Login/Register & Cart Button -->
                                <div class="login-register-cart-button d-flex align-items-center">
                                    <!-- Login/Register -->
                                    <div class="login-register-btn mr-50">
                                        <a href="<%=request.getContextPath() %>/login/login" id="loginBtn">Login / Register</a>
                                    </div>
                                </div>
                                </sec:authorize>
                               
                            </div>
                            <!-- Nav End -->


                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

        
    
</body>
</html>