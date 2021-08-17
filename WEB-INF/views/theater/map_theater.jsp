<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>Theater map</title>

<!-- Favicon -->
<link rel="icon"
	href="<%=request.getContextPath()%>/resources/img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/style.css">


<link rel="stylesheet" type="text/css"
	href="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.css">
<link rel="stylesheet" type="text/css"
	href="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/calender/dist/tui-calendar.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/calender/css/default.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/calender/css/icons.css">

<!-- ##### Import ajax ##### -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/js/theatermap.js"></script>


</head>

<style>
.boldFont {
	font-weight: bolder;
	display: inline-block;
	font-size: 18px;
	
}

</style>

<body>
	<script>
	
				

		endLocationY = <%= Float.parseFloat(request.getParameter("lat")) %>
		endLocationX = <%= Float.parseFloat(request.getParameter("lng")) %>
		
		
	</script>
	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
	<!-- ##### Breadcumb Area Start ##### -->
	<section class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(<%=request.getContextPath()%>/resources/img/bg-img/bg-2.jpg);">
		<div class="bradcumbContent">
			<p>공연장 정보</p>
			<h2>공 연 장 길 찾 기</h2>
		</div>
	</section>

	<section class="contact-area section-padding-100-0">
		<div class="container">
			<div class="row">

				<div class="col-12 col-lg-3">
					<div class="contact-content mb-100">
						<!-- Title -->
						<div class="contact-title mb-50">
							<h5>공연장 정보</h5>
						</div>

						<!-- Single Contact Info -->
						<div class="single-contact-info d-flex align-items-center">
							<div class="icon mr-30">
								<span class="icon-placeholder"></span>
							</div>
							<p>
								<a href="<%=request.getContextPath()%>/reservation/schedule">공연장
									정보</a>
							</p>
						</div>

						<!-- Single Contact Info -->
						<div class="single-contact-info d-flex align-items-center">
							<div class="icon mr-30">
								<span class="icon-smartphone"></span>
							</div>
							<p>
								<a href="<%=request.getContextPath()%>/reservation/select">오시는
									길</a>
							</p>
						</div>
					</div>
				</div>
				
				<div class="col-12 col-lg-9">
					<div id="googleMap"
						style="width: 100%; height: 720px; display: block;"></div>
	
					<!-- ##### Import google map ##### -->
					<script
						src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAz5nIT_54PG7ke2yMKUiqwKR86mVMwJgk&callback=initMap"></script>
	
					<div style="width: 100%; display: inline-block;">
					<p id="totalDistance" class="boldFont"></p> 
					<br>
					<p id="payment" class="boldFont">총 요금 : </p>
					<br>
					<p id="totalTime" class="boldFont">소요 시간 : </p>
					<br>
					<p id="firstStartStation"class="boldFont">출발역 : </p>
					<br>
					<p id="lastEndStation"class="boldFont">도착역 : </p>
					<br>
					<p id="totalStationCount"class="boldFont">몇 정거장? : </p>
					<br>
					
					</div>
					<br><br><br>
				</div>
			</div>
		</div>
	</section>
				
	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>
</body>

</html>