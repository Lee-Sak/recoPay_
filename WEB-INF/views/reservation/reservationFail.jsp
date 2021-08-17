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
<title>Theater</title>

<!-- Favicon -->
<link rel="icon" href="<%=request.getContextPath()%>/img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/style.css">

<!-- ##### Import ajax ##### -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- ##### Import javascript ##### -->
<script src="${pageContext.request.contextPath }/js/theater.js"></script>
</head>



<body>

	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
	<!-- ##### Breadcumb Area Start ##### -->
	<section class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(<%=request.getContextPath() %>/img/bg-img/bg-1.jpg);">
	</section>

	<section class="elements-area mt-30 section-padding-100-0">
		<div class="container">
			<div class="row">

				<!-- Single Post Start -->
				<div class="single-blog-post mb-100 wow fadeInUp"
					data-wow-delay="100ms">
					
					
					<h5> 예매 실패. 다시 시도해 주세요  </h5>

					<button type="button" onclick="location.href='<%=request.getContextPath() %>/reservation/select"> 돌아가기 </button>
					
					
					</div>
			</div>
		</div>
	</section>

	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>

</body>

</html>