<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>RecoPAY</title>

    <!-- Favicon -->
    <link rel="icon" href="<%=request.getContextPath() %>/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/style.css">

	<script src="${pageContext.request.contextPath }/js/select.js"></script>

</head>
<style>
.ev-img {
	margin-bottom: 10px;
	width: 49%;
	display: inline-block;
}

.res {
min-width : 100% !important;
}

.resbtn {
margin-bottom: 10px !important;
}
</style>
<body>

	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
	
	<!-- <script type="text/javascript">
        var naver_id_login = new naver_id_login("oH9DaoWLy8tPxy8Q46Pb", "http://localhost:8090/recopay"); // 역시 마찬가지로 'localhost'가 포함된 CallBack URL
        
        // 접근 토큰 값 출력
        alert(naver_id_login.oauthParams.access_token);
        
        // 네이버 사용자 프로필 조회
        naver_id_login.get_naver_userprofile("naverSignInCallback()");
        
        // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
        function naverSignInCallback() {
            alert(naver_id_login.getProfileData('email'));
            alert(naver_id_login.getProfileData('nickname'));
            alert(naver_id_login.getProfileData('profile_image'));
        }
    </script>-->
	
	
    <!-- ##### Hero Area Start ##### -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel">
        
            <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/bg-1.jpg);"></div>
                <!-- Slide Content -->
                <div class="container">
        	       <div class="row">
                        <div class="col-12">
                            <div class="hero-slides-content text-center">
                                <h6 data-animation="fadeInUp" data-delay="100ms">Recommand & Reservation</h6>
                                <h2 data-animation="fadeInUp" data-delay="300ms">Welcome RecoPAY<span>Welcome RECOPAY</span></h2>
                                <a data-animation="fadeInUp" data-delay="500ms" href="<%=request.getContextPath() %>/reservation/select" class="btn oneMusic-btn mt-50">예매하러 가기 <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/bg-2.jpg);"></div>
                <!-- Slide Content -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="hero-slides-content text-center">
                                <h6 data-animation="fadeInUp" data-delay="100ms">Recommand & Reservation</h6>
                                <h2 data-animation="fadeInUp" data-delay="300ms">Welcome RecoPAY<span>Welcome RECOPAY</span></h2>
                                <a data-animation="fadeInUp" data-delay="500ms" href="<%=request.getContextPath() %>/perform/intro" class="btn oneMusic-btn mt-50">연극 소개보기 <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Latest Albums Area Start ##### -->
    <section class="latest-albums-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <p>이런 연극들은 어떤가요?</p>
                        <h2>최 신 작</h2>
                    </div>
                </div>
            </div>


			<div class="row">
				<!-- 공연 리스트  -->
				<c:choose>
					<c:when test="${empty list || fn:length(list) == 0 }">
						<a>공연 리스트 0</a>
					</c:when>
					<c:otherwise>
					<div class="col-12">
						<div class="albums-slideshow owl-carousel">
							<c:forEach var="dto" items="${list }" varStatus="vs" begin="0" end="9">
							<c:if test="${dto.state eq '공연중' }">
								<div class="single-album" id="a${vs.index}">
									<div class="single-album-area wow fadeInUp"
										data-wow-delay="100ms">
										<div class="album-thumb">
											<a href="${pageContext.request.contextPath }/perform/intro/${dto.uid}">
												<img src="${dto.poster}" alt="">
											</a>
										</div>
										<div class="album-info">
											<a href="#">
												<h5>${dto.name }</h5>
											</a>
		
											<!--  link to theater page -->
											<a href="${pageContext.request.contextPath }/theater/view/${dto.fcltynm}">
												<p>${dto.fcltynm }</p>
											</a>
		
										</div>
										<div class="oneMusic-buttons-area resbtn">
											<a href="${pageContext.request.contextPath }/reservation/reservation/${dto.uid}" class="btn oneMusic-btn btn-2 res">예매하기<i class="fa fa-angle-double-right"></i></a>
										</div>
										<div class="oneMusic-buttons-area mb-100 ">
											<a href="${pageContext.request.contextPath }/perform/intro/${dto.uid}" class="btn oneMusic-btn btn res">연극소개<i class="fa fa-angle-double-right"></i></a>
										</div>
									</div>
								</div>
							</c:if>
							</c:forEach>
						</div>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
        </div>
    </section>
    <!-- ##### Latest Albums Area End ##### -->

    <!-- ##### Buy Now Area Start ##### -->
    <section class="oneMusic-buy-now-area has-fluid bg-gray section-padding-100">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <p>이것만은 지켜주세요</p>
                        <h2>연 극 관 람</h2>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="accordions mb-100" id="accordion" role="tablist" aria-multiselectable="true">
                        <!-- single accordian area -->
                        <div class="panel single-accordion">
                            <h6><a role="button" class="" aria-expanded="true" aria-controls="collapseOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">연극 에티켓을 지켜주세요!
                                    <span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                    <span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                    </a></h6>
                            <div id="collapseOne" class="accordion-content collapse show">
                                <p>1. 연극 시작 전 입장하기<br>2. 공연장 내에서 휴대폰 열지 않기<br>3. 옆 사람과 대화하지 말기<br>4. 음식물 섭취하지 않기<br>5. 사진이나 영상 촬영하지 않기<br>6. 앞 좌석 발로 차지 않기<br>7. 공연이 끝나면 박수와 환호로 호응해주기</p>
                            </div>
                        </div>
                        <!-- single accordian area -->
                        <div class="panel single-accordion">
                            <h6>
                                <a role="button" class="collapsed" aria-expanded="true" aria-controls="collapseTwo" data-parent="#accordion" data-toggle="collapse" href="#collapseTwo">미취학 아동 동반시 관람 가능한 나이를 확인하시고 관람해주세요
                                        <span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                        <span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                        </a>
                            </h6>
                            <div id="collapseTwo" class="accordion-content collapse">
                                <p>일반적인 연극의 경우 가족물이 아닌 경우 보통'8세 이상 입장가'입니다.<br>이는 공연을 이해할 수 있는 연령대도 고려하거니와, 공연의 내용에 따라, 12세 / 15세 / 19세 등 입장 가능등급이 분류됩니다.</p>
                            </div>
                        </div>
                        <!-- single accordian area -->
                        <div class="panel single-accordion">
                            <h6>
                                <a role="button" aria-expanded="true" aria-controls="collapseThree" class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapseThree">꽃다발, 선물 등 부피가 큰 물건은 로비에 맡겨두세요.
                                        <span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                        <span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                    </a>
                            </h6>
                            <div id="collapseThree" class="accordion-content collapse">
                                <p>공연 출연진이나 스텝중에 지인이 있으신 분들은 꽃다발이나 선물 등을 준비해오시기도 하는데요<br>공연중에 부스럭거리는 소리가 타인에게 방해되오니 로비에 맡겨두시고 공연 종료후에 찾아서 전달해주시면 됩니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
            	
				<div class="col-12 col-lg-6">
                    <div class="oneMusic-tabs-content">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link" id="tab--1" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false">타인의 감상을 배려하는 예절</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="tab--2" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false">드레스 코드?</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" id="tab--3" data-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="true">어쩔수 없이 늦었다면?</a>
                            </li>
                        </ul>

                        <div class="tab-content mb-100" id="myTabContent">
                            <div class="tab-pane fade" id="tab1" role="tabpanel" aria-labelledby="tab--1">
                                <div class="oneMusic-tab-content">
                                    <!-- Tab Text -->
                                    <div class="oneMusic-tab-text">
                                        <p>하지 말아야 할 행동 : 옆사람과 소곤거리기, 부채질, 공연중에 전화받으며 밖으로 나가기, 신발을 벗고 관람하는 행위 등<br>특별한 날을 맞아 즐기러 오신 분들을 위해 위 사항들만 지켜주신다면, 많은 분들께서 더 뜻깊은 날을 보내실 수 있을겁니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="tab--2">
                                <div class="oneMusic-tab-content">
                                    <!-- Tab Text -->
                                    <div class="oneMusic-tab-text">
                                        <p>관람하실 때 드레스코드는 신경쓰지 않으셔도 됩니다. 청바지를 입으셔도 되구요<br>그러나, 딱딱거리는 하이힐 소리는 타인의 관람에 방해가 되오니 조심스럽게 걸어주시길 바랍니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade show active" id="tab3" role="tabpanel" aria-labelledby="tab--3">
                                <div class="oneMusic-tab-content">
                                    <!-- Tab Text -->
                                    <div class="oneMusic-tab-text">
                                        <p>공연이 시작되고 나면 원칙적으로 입장이 불가능합니다. <br>그러나, 하우스매니저 또는 하우스 어셔(극장 안내 도우미) 분들께서 출입문 앞에서 잠시 기다려달라고 요청드린 후 공연의 흐름에 따라 막이 전환되는 타이밍이나 공연의 흐름을 방해하지 않을 타이밍에 입장시켜드립니다.<br>이때는 자신의 좌석을 찾기보다는 출입문에 가까운 좌석에 앉으시어 관람하시다가 2막 시작되기전 인터미션에 자신의 좌석으로 이동하시는 것이 바람직합니다. 그러니, 늦지 않는 것이 제일 좋습니다.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>


        </div>
    </section>
    <!-- ##### Buy Now Area End ##### -->

    <!-- ##### Featured Artist Area Start ##### -->
    <section class="featured-artist-area section-padding-100 bg-img bg-overlay bg-fixed" style="background-image: url(img/bg-img/bg-4.jpg);">
		<div class="container">
			<div class="row align-items-end">
				<div class="col-12 col-md-5 col-lg-4">
					<div class="featured-artist-thumb">
						<img
							src="<%=request.getContextPath()%>/img/bg-img/recopaylogo.png"
							alt="">
					</div>
				</div>
				<div class="col-12 col-md-7 col-lg-8">
					<div class="featured-artist-content" style='margin-bottom: 100px'>
						<!-- Section Heading -->
						<div class="section-heading white text-left mb-30">
							<h2>RECOPAY</h2>
						</div>
						<h5 style="color: white;">RecoPAY에 오신것을 환영합니다. RecoPAY와 함께
							즐거운 연극을 관람하고 행복한 추억을 만들어 보세요.</h5>
					</div>
				</div>
			</div>
		</div>
	</section>
    <!-- ##### Featured Artist Area End ##### -->

    <!-- ##### Miscellaneous Area Start ##### -->
    <section class="miscellaneous-area section-padding-100-0" style="margin-bottom: 30px;">
        <div class="container">
            <div class="row">
                <div class="img-event">
                	<img alt="" src="<%=request.getContextPath()%>/img/bg-img/event1.jpg" class="ev-img">
                	<img alt="" src="<%=request.getContextPath()%>/img/bg-img/event2.png" class="ev-img">
                	<img alt="" src="<%=request.getContextPath()%>/img/bg-img/event3.jpg" class="ev-img">
                	<img alt="" src="<%=request.getContextPath()%>/img/bg-img/event4.png" class="ev-img">
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Miscellaneous Area End ##### -->
    
	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>
	
</body>

</html>