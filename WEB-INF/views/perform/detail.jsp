<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>Perform Detail</title>

<!-- Favicon -->
<link rel="icon" href="<%=request.getContextPath()%>/img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/style.css">

<script language=JavaScript>
	var pfid = '<c:out value="${list[0].id}"/>';
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/js/detail.js"></script>

<style>
.td0 {
	width: 1000px;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	font-size: 20pt;
}

th, td {
	padding: 5px;
}
</style>
</head>

<body>

	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
	<!-- ##### Breadcumb Area Start ##### -->
	<section class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(<%=request.getContextPath()%>/img/bg-img/bg-2.jpg);">

	</section>

	<section
		class="oneMusic-buy-now-area has-fluid bg-gray section-padding-100">
		<div class="container-fluid" >
			<div class="row">
				<div class="col-12">
					<div class="section-heading style-2" style="margin: 0 0 0 0">
						<h2>${list[0].name }</h2>
					</div>
					<div style="margin: 40px 0 0 0"
						class="load-more-btn text-center wow fadeInUp"
						data-wow-delay="300ms">
						<button id="buta" type="button" class="btn oneMusic-btn" onclick="location.href='${pageContext.request.contextPath}/reservation/reservation/${list[0].uid}'">
							예매처 바로가기 <i class="fa fa-angle-double-right" ></i>
						</button>
					</div>
				</div>
			</div>

			<div style="margin: 40px 0 0 0" class="row">
				<!-- Single Album Area -->
				<c:choose>
					<c:when test="${empty list || fn:length(list) == 0 }">
					</c:when>
					<c:otherwise>

						<div class="col-12 col-sm-6 col-md-4 col-lg-2">
							<div class="single-album-area wow fadeInUp"
								data-wow-delay="100ms">
								<div class="album-thumb">
									<a
										href="${pageContext.request.contextPath }/perform/intro/${list[0].uid}">
										<img src="${list[0].poster}" alt="">
									</a>
									<!-- Album Price 
                            <div class="album-price">
                                <p>$0.90</p>
                            </div> -->
									<!-- Play Icon 
                            <div class="play-icon">
                                <a href="#" class="video--play--btn"><span class="icon-play-button"></span></a>
                            </div>-->
								</div>
							</div>
						</div>
					</c:otherwise>
				</c:choose>

				<div class="section-heading style-2" style="text-align: left">
					<table id="demoXML"></table>
				</div>
			</div>
			<div style="text-align: center; ">
				<button id="buta2" type="button" class="btn oneMusic-btn" onclick="location.href='${pageContext.request.contextPath }/perform/intro'">
					목록보기<i class="fa fa-angle-double-right"></i>
				</button>
			</div>
			
			<div style="text-align: center; margin:40px 0 0 0">
			
				<button id="introbutton" type="button" class="btn oneMusic-btn" style="background-color:black; color:white">
					소개<i class="fa fa-angle-double-right"></i>
				</button>
		
		
				<button id="facbutton" type="button" class="btn oneMusic-btn">
					공연시설<i class="fa fa-angle-double-right"></i>
				</button>
				
				<hr><hr><hr>
				<div id="introimg">
				
				</div>
				
				<div id="faclity" style="display:none;" >
					<div id="facname" style="font-size:30px"></div>
					<br>
					<p id="theater_num">공연장 수</p>
					<br>
					<p id="theater_feature">시설 특성</p>
					<br>
					<p id="theater_openyear">개관 연도</p>
					<br>
					<p id="theater_seat_num">객석 수</p>
					<br>
					<p id="theater_phone">전화번호</p>
					<br>
					<p id="theater_addr">주소</p>
					<br>
					
					<br><br>
					<!-- ##### google map ##### -->
					<div id="googleMap" style="width: 70%; height: 400px; margin:auto"></div>
		
		
					<!-- ##### Import google map ##### -->
					<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAz5nIT_54PG7ke2yMKUiqwKR86mVMwJgk&callback=initMap"></script>
				</div>
			</div>

		</div>


	</section>

	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>

</body>
</html>