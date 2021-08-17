<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<style>
.res {
min-width : 100% !important;
}

.resbtn {
margin-bottom: 10px !important;
}

.custompadding {
padding-bottom: 0px !important;
}
</style>
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
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/select.js"></script>

</head>
<body>

	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
	
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(<%=request.getContextPath() %>/img/bg-img/bg-4.jpg);">
    </section>
    
    <!-- ##### WHAT'S NEW 슬라이드 ##### -->
    <section class="latest-albums-area section-padding-100 custompadding">
        <section class="oneMusic-buy-now-area has-fluid section-padding-100 custompadding">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <h2>WHAT'S NEW</h2>
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
    </section>
    <!-- ##### WHAT'S NEW 슬라이드 ##### -->
    
    <!-- ##### 연극 목록 ##### -->
    <section class="contact-area section-padding-100-0">
	    <!-- ##### Buy Now Area Start ##### -->
	    <section class="oneMusic-buy-now-area has-fluid bg-gray section-padding-100">
	        <div class="container-fluid">
	            <div class="row">
	                <div class="col-12">
	                    <div class="section-heading style-2">
	                        <h2>RECOPAY'S PICK</h2>
	                    </div>
	                </div>
	            </div>

				<div class="row">
					<!-- Single Album Area -->
					<c:choose>
						<c:when test="${empty list || fn:length(list) == 0 }">
							<a>공연 리스트 0</a>
						</c:when>
						<c:otherwise>
							<div class="col-12">
								<div class="albums-slideshow owl-carousel">
									<c:forEach var="dto" items="${list }" varStatus="vs" begin="10" end="19">
										<div class="single-album" id="a${vs.index}">
											<div class="single-album-area wow fadeInUp"
												data-wow-delay="100ms">
												<div class="album-thumb">
													<a
														href="${pageContext.request.contextPath }/perform/intro/${dto.uid}">
														<img src="${dto.poster}" alt="">
													</a>
												</div>
												<div class="album-info">
													<a href="#">
														<h5>${dto.name }</h5>
													</a>

													<!--  link to theater page -->
													<a
														href="${pageContext.request.contextPath }/theater/view/${dto.fcltynm}">
														<p>${dto.fcltynm }</p>
													</a>

												</div>
												<div class="oneMusic-buttons-area resbtn">
													<a href="${pageContext.request.contextPath }/reservation/reservation/${dto.uid}" class="btn oneMusic-btn btn-2 res">예매하기<i class="fa fa-angle-double-right"></i></a>
												</div>
												<div class="oneMusic-buttons-area mb-100">
													<a href="${pageContext.request.contextPath }/perform/intro/${dto.uid}" class="btn oneMusic-btn res">연극소개<i class="fa fa-angle-double-right"></i></a>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</div>

	        </div>
	    </section>
	    <!-- ##### Buy Now Area End ##### -->

    </section>
    <!-- ##### 연극목록 ##### -->


	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>
	

</body>

</html>