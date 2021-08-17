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
    <title>Reservation</title>

    <!-- Favicon -->
    <link rel="icon" href="<%=request.getContextPath() %>/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/reservation.css">


</head>

<body>

	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
	
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(<%=request.getContextPath() %>/img/bg-img/bg-1.jpg);">
        <div class="bradcumbContent">
            <p>예매하시겠습니까 고갱님?</p>
            <h2>예매</h2>
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
							<h5>Reservation</h5>
						</div>

						<!-- Single Contact Info -->
						<div class="single-contact-info d-flex align-items-center">
							<div class="icon mr-30">
								<span class="icon-placeholder"></span>
							</div>
							<p>
								<a href="<%=request.getContextPath() %>/reservation/schedule">연극 일정</a>
							</p>
						</div>

						<!-- Single Contact Info -->
						<div class="single-contact-info d-flex align-items-center">
							<div class="icon mr-30">
								<span class="icon-smartphone"></span>
							</div>
							<p>
								<a href="<%=request.getContextPath() %>/reservation/">연극 예매</a>
							</p>
						</div>

						<!-- Single Contact Info -->
						<div class="single-contact-info d-flex align-items-center">
							<div class="icon mr-30">
								<span class="icon-mail"></span>
							</div>
							<p>
								<a href="<%=request.getContextPath() %>/reservation/ticketCheck">예매 확인 및 취소</a>
							</p>
						</div>

					</div>
				</div>

				<div class="col-12 col-lg-9">
					<!-- ##### Google Maps ##### -->
					<div class="map-area mb-100">
						<div class="reserve-container">
							<div class="movie-part">
								<div class="reserve-title">연극</div>
								<div class="sort-wrapper">
									<div class="sort-rate sort-selected">예매율순</div>
									<div class="sort-korean">가나다순</div>
								</div>
								<div class="movie-list">연극 목록 가져오기</div>
							</div>
							<div class="theater-part">
								<div class="reserve-title">극장</div>
								<div></div>
							</div>
							<div class="day-part">
								<div class="reserve-title">날짜</div>
								<div class="reserve-date"></div>
							</div>
							<div class="time-part">
								<div class="reserve-title">시간</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- ##### Contact Area End ##### -->
	<script src="${pageContext.request.contextPath }/js/reservation/reservationSelect.js"></script>

	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>
	

</body>

</html>