<%@page import="java.util.ArrayList"%>
<%@page import="com.spring.recopay.domain.TheaterDTO"%>
<%@page import="java.util.List"%>
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
<title>Theater List</title>

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
<script src="${pageContext.request.contextPath }/js/theaterlist.js"></script>


</head>
<style>
.searchBtn {
  background-color: #FFFFFF;
  border: 1px solid;
  color: black;
  padding: 5px 9px;
  text-align: center;
  font-size: 14px;
  margin: 4px 8px 2px 1px;
  opacity: 0.6;
  transition: 0.3s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
  
}

.searchBtn:hover {opacity: 1;
background-color: gray;
color: white;
border: none;
}

</style>
<body>

	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>

	<!-- ##### Breadcumb Area Start ##### -->
	<section class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(<%=request.getContextPath()%>/resources/img/bg-img/bg-1.jpg);">
		<div class="bradcumbContent">
			<p>공연장 정보</p>
			<h2>공 연 장 리 스 트</h2>
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

					<select id="selectOption">
						<option value="위치" selected="selected">위치</option>
						<option value="극장명">극장명</option>
					</select> <input id="searchName" />
					<button type="button" id="searchbut" class="searchBtn">검색</button>


					<input name="radiobut" type="radio" value="total" checked="checked">모두</input> 
					<input name="radiobut" type="radio" value="ongoing">상영중</input>




					<table class="table table-striped table-hover" style="margin-top: 10px">
						<tr class="table-dark">
							<th class="text-center">극장명</th>
							<th class="text-center">위치</th>
							<th>총 좌석</th>
							<th>전화번호</th>
							<th>기타 특징</th>
						</tr>

						<c:choose>
							<c:when test="${empty list || fn:length(list) == 0 }">
								<script>alert('DB 배치파일 먼저 돌리고 하셈');</script>	
							</c:when>
							<c:otherwise>
								<c:forEach var="dto" items="${list }" varStatus="vs">
									<tr class="load-more-btn text-center wow fadeInUp"
										style="display: none;" id="a${vs.index}">

										<script>
											locationName.push('${dto.location}');
											theaterName.push("${dto.name }");
											id.push('${vs.index}');
										</script>

										<td><a
											href="<%=request.getContextPath()%>/theater/view/${dto.id }">${dto.name }</a></td>
										<td id="td${vs.index}">${dto.location }</td>
										<td >${dto.totalseat }</td>
										<td>${dto.telno }</td>
										<td>${dto.chartr }</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>

					</table>

					<div class="row">
						<div class="col-12">
							<div class="load-more-btn text-center wow fadeInUp"
								data-wow-delay="300ms">
								<button id="but" type="button" class="btn oneMusic-btn">
									Load More <i class="fa fa-angle-double-right"></i>
								</button>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- ##### Contact Area End ##### -->



	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>



</body>

</html>