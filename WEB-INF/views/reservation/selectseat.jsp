<%@page import="com.spring.recopay.domain.ReservationDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>좌석 선택</title>

<!-- Favicon -->
<link rel="icon"
	href="<%=request.getContextPath()%>/img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/style.css">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/calender/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">

<script
	src="${pageContext.request.contextPath }/js/bootstrap/bootstrap.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script
	src="${pageContext.request.contextPath }/js/reservation/selectseat.js"></script>

</head>

<body>

	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>

	<!-- ##### Breadcumb Area Start ##### -->
	<section class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(<%=request.getContextPath()%>/img/bg-img/bg-3.jpg);">
		<div class="bradcumbContent">
			<p>공연장 좌석 선택</p>
			<h2>어디 좌석 선택할래?</h2>
		</div>
	</section>
	<!-- ##### Breadcumb Area End ##### -->



	<!-- 좌석 시작 -->
	<div class="container">
		<p class="text-center" style="font-size: 40px;">== Stage 방향 ==</p>
		<div class="row">
			<div class="col-sm-3">
				<p class="text-center" style="font-size: 40px;">A</p>
				<div class="row">
					<c:forEach var="i" begin="0" end="98">

						<c:set var="currentId" value="a${i }" />
						<c:set var="isSeated" value="0" />

						<!-- 예약된 자리이면  -->
						<c:forEach var="j" begin="0" end="98">
							<c:if test="${currentId eq seatlist[j].seat}">
								<div class="seat"
									style="border: 1px solid; background-color: #ff0000; width: 30px"
									id="a${i }">A${i }</div>
								<c:set var="isSeated" value="1" />
							</c:if>

						</c:forEach>

						<c:if test="${isSeated eq 0}">
							<div class="seat" style="border: 1px solid; width: 30px"
								id="a${i }" onClick="reply_click(this.id)">A${i }</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
			<div class="col-sm-3">
				<p class="text-center" style="font-size: 40px;">B</p>
				<div class="row">
					<c:forEach var="i" begin="0" end="98">
						<c:set var="currentId" value="b${i }" />
						<c:set var="isSeated" value="0" />

						<!-- 예약된 자리이면  -->
						<c:forEach var="j" begin="0" end="98">
							<c:if test="${currentId eq seatlist[j].seat}">
								<div class="seat"
									style="border: 1px solid; background-color: #ff0000; width: 30px"
									id="b${i }">B${i }</div>
								<c:set var="isSeated" value="1" />
							</c:if>

						</c:forEach>

						<c:if test="${isSeated eq 0}">
							<div class="seat" style="border: 1px solid; width: 30px"
								id="b${i }" onClick="reply_click(this.id)">B${i }</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
			<div class="col-sm-3">
				<p class="text-center" style="font-size: 40px;">C</p>
				<div class="row">
					<c:forEach var="i" begin="0" end="98">

						<c:set var="currentId" value="c${i }" />
						<c:set var="isSeated" value="0" />

						<!-- 예약된 자리이면  -->
						<c:forEach var="j" begin="0" end="98">
							<c:if test="${currentId eq seatlist[j].seat}">
								<div class="seat"
									style="border: 1px solid; background-color: #ff0000; width: 30px"
									id="c${i }">C${i }</div>
								<c:set var="isSeated" value="1" />
							</c:if>

						</c:forEach>

						<c:if test="${isSeated eq 0}">
							<div class="seat" style="border: 1px solid; width: 30px"
								id="c${i }" onClick="reply_click(this.id)">C${i }</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
			<div class="col-sm-3">
				<p class="text-center" style="font-size: 40px;">D</p>
				<div class="row">
					<c:forEach var="i" begin="0" end="98">
						<c:set var="currentId" value="d${i }" />
						<c:set var="isSeated" value="0" />

						<!-- 예약된 자리이면  -->
						<c:forEach var="j" begin="0" end="98">
							<c:if test="${currentId eq seatlist[j].seat}">
								<div class="seat"
									style="border: 1px solid; background-color: #ff0000; width: 30px"
									id="d${i }">D${i }</div>
								<c:set var="isSeated" value="1" />
							</c:if>

						</c:forEach>

						<c:if test="${isSeated eq 0}">
							<div class="seat" style="border: 1px solid; width: 30px"
								id="d${i }" onClick="reply_click(this.id)">D${i }</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<!-- 좌석 끝 -->

	<br>
	<br>

	<div>
		<p id="state"></p>
		<br>
		<p id="totalseat"></p>
		<br>
	</div>


	<!-- 예약 진행 버튼 시작 -->
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModal" >좌석 선택 완료</button>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">${list[0].name }</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					상영일자 : ${prfTime }시 <br>공연 가격 : ${prfPrice } <br>공연장 :
					${list[0].fcltynm } <br>
					<p id="popupSelectedSeat"></p>
					<p id="popupTicketNum"></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
						
					<form action="<%=request.getContextPath() %>/reservation/buying"
						method="post" name="frm">
						<input type="hidden" name="prfdate" value="${prfTime }" />
						<input type="hidden" name=title value="${list[0].name }" />
						<input type="hidden" name="payment" value="${prfPrice }" />
						<sec:authentication property="principal.username" var="user_id" />
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
                                    	 
						<input type="hidden" name="user_id" value="${user_id }" /> <input
							type="hidden" name="seat" /><br> <input type="hidden"
							name="ticketnum" /><br> <input type="hidden"
							name="theaterName" value="${list[0].fcltynm }" />
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
						<button type="button" class="btn btn-primary" onclick="buy_but();">티켓 구매하기</button>
					</form>

				</div>
			</div>
		</div>
	</div>
	<!-- 버튼 끝 -->


	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>


</body>

</html>