<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
    uri="http://www.springframework.org/security/tags"%>


<!DOCTYPE html>
<html lang="ko">
<style>
.title {
	margin: 0 0 0 0;
	margin-bottom: 0px !important;
}

.poster {
	margin: 40px 0 0 0;
}

.content {
	font-size: 20px;
}

.col-lg-9 {
	max-width: 80% !important;
}

.col-lg-3 {
	max-width: 20% !important;
}

.res {
	margin-top: 30px;
	float: right;
}
</style>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>Reservation</title>
		
<!-- Favicon -->
<link rel="icon"
	href="<%=request.getContextPath()%>/img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/reservation.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/simplecal.css">

<script language=JavaScript>
	var pfid = '<c:out value="${list[0].id}"/>';
</script>

</head>

<body>
	
	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>

	<!-- ##### Breadcumb Area Start ##### -->
	<section class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(<%=request.getContextPath()%>/img/bg-img/bg-2.jpg);">
		<div class="bradcumbContent">
			<p>예매하시겠습니까 고갱님?</p>
			<h2>예매</h2>
		</div>
	</section>
	<!-- ##### Breadcumb Area End ##### -->
	
	<script> 
		var bookedSeatNumList = [];
		var bookedTimeList = [];
		var theaterTotalSeat;
		
		<c:forEach items="${leftseatArr}" var="item1">
		bookedSeatNumList.push('${item1.bookedSeat}');
		bookedTimeList.push('${item1.time}');
		</c:forEach>

		theaterTotalSeat = '${totalSeat.totalSeat }';
		<%--
			//totalSeat = '${totalSeat.totalSeat }';
		--%>
	</script>
		

	
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
								<a href="<%=request.getContextPath()%>/reservation/schedule">연극
									일정</a>
							</p>
						</div>

						<!-- Single Contact Info -->
						<div class="single-contact-info d-flex align-items-center">
							<div class="icon mr-30">
								<span class="icon-smartphone"></span>
							</div>
							<p>
								<a href="<%=request.getContextPath()%>/reservation/">연극 예매</a>
							</p>
						</div>

						<!-- Single Contact Info -->
						<div class="single-contact-info d-flex align-items-center">
							<div class="icon mr-30">
								<span class="icon-mail"></span>
							</div>
							<p>
								<a href="<%=request.getContextPath()%>/reservation/ticketCheck">예매
									확인 및 취소</a>
							</p>
						</div>

					</div>
				</div>
			

				<div class="col-12 col-lg-9">
					<!-- ##### 연극 예매 ##### -->
					<div class="map-area mb-100">
						<div class="col-12">
							<div class="section-heading style-2 title">
								<h2>${list[0].name }</h2>
								<h5>${list[0].startDay }~${list[0].endDay }</h5>
							</div>
							<hr>
						</div>
						<!--  연극 Information -->
						<div class="row poster">
							<c:choose>
								<c:when test="${empty list || fn:length(list) == 0 }">
								</c:when>
								<c:otherwise>

									<div class="col-12 col-sm-6 col-md-4">
										<div class="single-album-area wow fadeInUp"
											data-wow-delay="100ms">
											<div class="album-thumb">
												<a href="#"> <img src="${list[0].poster}" alt="">
												</a>

											</div>
										</div>
									</div>
								</c:otherwise>
							</c:choose>

							<div class="section-heading style-2 content"
								style="text-align: left">
								<table id="demoXML"></table>
							</div>
						</div>

						

						<%-- 					<div class="reserve-container">
							<div class="perform-part">
								<div class="reserve-title">연극</div>

								<div class="perform-list">
									<a>${list[0].name }</a>
								</div>
							</div>
							<div class="theater-part">
								<div class="reserve-title">극장</div>
								<div>${list[0].fcltynm }</div>
							</div>
							<div class="day-part">
								<div class="reserve-title">날짜</div>
								<div class="reserve-date"></div>
							</div>
							<div class="time-part">
								<div class="reserve-title">시간</div>
								<div class="reserve-time">
								
								</div>
							</div>
					</div> --%>

						<!-- 달력시작 -->
						<div class="container">
							<div class="my-calendar clearfix">
								<div class="clicked-date">
									<div class="cal-day" id="showtime"></div>
									<div class="cal-date"></div>
								</div>
								<div class="calendar-box">
									<div class="ctr-box clearfix">
										<button type="button" title="prev" class="btn-cal prev">
										</button>
										<span class="cal-year"></span> <span class="cal-month"></span>
										<button type="button" title="next" class="btn-cal next">
										</button>
									</div>
									<table class="cal-table">
										<thead>
											<tr>
												<th>일</th>
												<th>월</th>
												<th>화</th>
												<th>수</th>
												<th>목</th>
												<th>금</th>
												<th>일</th>
											</tr>
										</thead>
										<tbody class="cal-body"></tbody>
									</table>
								</div>
							</div>
							<!-- // .my-calendar -->
						</div>

						<!-- 달력끝 -->


						<div class="time-right on">
							<div class="time-right tit">


								<button type="button" onclick="location.href='<%=request.getContextPath() %>/theater/map?lat=${location.lat }&lng=${location.lng }'">공연장 가는길 보기</button>

							</div>
				
						</div>
					</div>
					
					
					
					<form name='formData' action="<%=request.getContextPath() %>/reservation/selectseat" method='post'>
						
								<select id="selectTime" name="prfTime">
									<option value="0" selected="selected">공연시간선택</option>
								</select> <select id="selectPrice" name="prfPrice">
									<option value="0" selected="selected">공연가격선택</option>
								</select>
								<input type="hidden" name="uid" value="${uid }"/>
								<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
						<button id="buyingBtn" type="button" onClick="res_click(this.id);">예매하기</button>
                    </form>
					
					
					<div class="oneMusic-buttons-area res">
						<a href="<%=request.getContextPath() %>/reservation/select" class="btn oneMusic-btn btn-2">목록보러 가기<i
							class="fa fa-angle-double-right"></i></a>
					</div>
					
					
					<p style="clear: both;">&nbsp;</p>
				</div>
			</div>
		</div>
		</div>
	</section>
	<!-- ##### Contact Area End ##### -->
	

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<%-- <script src="${pageContext.request.contextPath }/js/reservation/reservationSelect.js"></script> --%>
	<script src="${pageContext.request.contextPath }/js/reservation/reservationDetail.js"></script>
	
	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>
	
		
</body>

</html>
















