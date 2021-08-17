<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- ##### Import ajax ##### -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Title -->
<title>Schedule</title>

<script src="${pageContext.request.contextPath }/js/calander.js"></script>

	
<script
	src="${pageContext.request.contextPath }/js/bootstrap/calander_main.js"></script>

<!-- Favicon -->
<link rel="icon"
	href="<%=request.getContextPath() %>/img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/css/calander_main.css">

<link rel="stylesheet" type="text/css"
	href="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.css">
<link rel="stylesheet" type="text/css"
	href="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/resources/calender/dist/tui-calendar.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/resources/calender/css/default.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/resources/calender/css/icons.css">
</head>

<script>
	var startDayList = [];
	var endDayList = [];
	var titleList = [];

	
	<c:forEach items="${list}" var="item1">
		startDayList.push("${item1.startDay}");
		startDayList.push("${item1.endDay}");
		titleList.push("${item1.name}");
	</c:forEach>

</script>

<body>

	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>

	<!-- ##### Breadcumb Area Start ##### -->
	<section class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(<%=request.getContextPath() %>/img/bg-img/bg-4.jpg);">
		<div class="bradcumbContent">
			<p>Now Opening Perform</p>
			<h2>연 극 일 정</h2>
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
								<a href="<%=request.getContextPath() %>/reservation/schedule">연극
									일정</a>
							</p>
						</div>

						<!-- Single Contact Info -->
						<div class="single-contact-info d-flex align-items-center">
							<div class="icon mr-30">
								<span class="icon-smartphone"></span>
							</div>
							<p>
								<a href="<%=request.getContextPath() %>/reservation/select">연극
									예매</a>
							</p>
						</div>

						<!-- Single Contact Info -->
						<div class="single-contact-info d-flex align-items-center">
							<div class="icon mr-30">
								<span class="icon-mail"></span>
							</div>
							<p>
								<a href="<%=request.getContextPath() %>/reservation/ticketCheck">예매
									확인 및 취소</a>
							</p>
						</div>

					</div>

				
						<!-- calendar start -->

						<div id='calendar' style="position: absolute; left: 100%; top: -10%; width:800px; height:800px;"></div>
						
						<!-- calendar end -->
					</div>
				</div>		
			</div>
	</section>
	<!-- ##### Contact Area End ##### -->

	<div style="height:400px;"></div>
	
	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>



</body>

</html>