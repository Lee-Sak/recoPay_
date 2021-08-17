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
    <title>Introduce</title>

    <!-- Favicon -->
    <link rel="icon" href="<%=request.getContextPath()%>/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/style.css">

</head>

<body>
	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
	
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(<%=request.getContextPath() %>/img/bg-img/bg-3.jpg);">
        <div class="bradcumbContent">
            <p>어서오시라는거지~</p>
            <h2>인 사 말</h2>
        </div>    
    </section>
    <!-- ##### Breadcumb Area End ##### -->
    
       <!-- ##### Miscellaneous Area Start ##### -->
    <section class="miscellaneous-area section-padding-100-0">
        <div class="container">
			<div class="row">
				<!-- ***** Weeks Top ***** -->
				<div class="col-12 col-lg-6">
					<div class="weeks-top-area mb-100">
						<div class="section-heading text-left mb-50 wow fadeInUp" data-wow-delay="50ms">
							<p>made by recopay</p>
							<h2>팀원소개</h2>
						</div>

						<!-- Single Top Item -->
						<div class="single-top-item d-flex wow fadeInUp" data-wow-delay="100ms">
							<div class="thumbnail">
								<img src="<%=request.getContextPath() %>/img/bg-img/angelparrot.gif" alt="">
							</div>
							<div class="content-">
								<h6>공석원</h6>
								<p>Gong SukWon</p>
							</div>
						</div>

						<!-- Single Top Item -->
						<div class="single-top-item d-flex wow fadeInUp" data-wow-delay="150ms">
							<div class="thumbnail">
								<img src="<%=request.getContextPath() %>/img/bg-img/partyparrt.gif" alt="">
							</div>
							<div class="content-">
								<h6>임장호</h6>
								<p>Im JangHo</p>
							</div>
						</div>

						<!-- Single Top Item -->
						<div class="single-top-item d-flex wow fadeInUp" data-wow-delay="200ms">
							<div class="thumbnail">
								<img src="<%=request.getContextPath() %>/img/bg-img/dogeparrot.gif" alt="">
							</div>
							<div class="content-">
								<h6>이 삭</h6>
								<p>Lee Sak</p>
							</div>
						</div>

						<!-- Single Top Item -->
						<div class="single-top-item d-flex wow fadeInUp" data-wow-delay="250ms">
							<div class="thumbnail">
								<img src="<%=request.getContextPath() %>/img/bg-img/partyblob.gif" alt="">
							</div>
							<div class="content-">
								<h6>박새별</h6>
								<p>Park SaeByeol</p>
							</div>
						</div>

						<!-- Single Top Item -->
						<div class="single-top-item d-flex wow fadeInUp" data-wow-delay="300ms">
							<div class="thumbnail">
								<img src="<%=request.getContextPath() %>/img/bg-img/quadparrot.gif" alt="">
							</div>
							<div class="content-">
								<h6>강태민</h6>
								<p>Kang TaeMin</p>
							</div>
						</div>

					</div>
				</div>

				<div class="col-12 col-lg-6">
					<div class="weeks-top-area mb-100">
						<div class="section-heading text-left mb-50 wow fadeInUp" data-wow-delay="50ms">
							<h3>RecoPAY</h3>
							<p>
							<h5>API를 활용한 연극 예매 반응형 웹 사이트</h5>
							<hr>
							파트 소개<br>
							<hr/>
							기획 : 팀원 전체<br>
							연극 Part: 이 삭<br>
							예매 Part: 임장호, 이 삭, 공석원<br>
							극장 Part: 공석원<br>
							고객센터 Part: 강태민<br>
							Event Part: 공석원<br>
							로그인/회원가입, Security: 박새별, 이 삭<br>
							<hr/>
							한달정도의 기간동안 진행된 팀프로젝트로 각자 맡은 파트별로 잘 수행하고 서로 부족한 부분을 채워주며 많은 시행착오가 있었지만 성공적으로 끝낼 수 있었습니다.
							</p>
						</div>

					</div>
				</div>
			</div>
		</div>
    </section>
    <!-- ##### Miscellaneous Area End ##### -->
    
    <!-- ##### Featured Artist Area Start ##### -->
    <section class="featured-artist-area section-padding-100 bg-img bg-overlay bg-fixed" style="background-image: url(<%=request.getContextPath() %>/img/bg-img/bg-4.jpg);">
        <div class="container">
            <div class="row align-items-end">
                <div class="col-12 col-md-5 col-lg-4">
                    <div class="featured-artist-thumb">
                        <img src="<%=request.getContextPath() %>/img/bg-img/recopaylogo.png" alt="">
                    </div>
                </div>
                <div class="col-12 col-md-7 col-lg-8">
                    <div class="featured-artist-content" style='margin-bottom: 100px'>
                        <!-- Section Heading -->
                        <div class="section-heading white text-left mb-30">
                            <h2>RECOPAY</h2>
                        </div>
                        <h5 style="color: white;">RecoPAY에 오신것을 환영합니다. RecoPAY와 함께 즐거운 연극을 관람하고 행복한 추억을 만들어 보세요.</h5>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Featured Artist Area End ##### -->
 

 	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>
</body>

</html>