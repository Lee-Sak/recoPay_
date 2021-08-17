<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Recommend</title>

    <!-- Favicon -->
    <link rel="icon" href="<%=request.getContextPath()%>/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/style.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/perform.js"></script>
	
</head>

<body>
	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
	 <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(<%=request.getContextPath() %>/img/bg-img/bg-1.jpg);">
       
    </section>

    <!-- ##### Buy Now Area Start ##### -->
    <section class="oneMusic-buy-now-area has-fluid bg-gray section-padding-100">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <p>Do you have any recommendations?</p>
                        <h2>추천별</h2>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Single Album Area -->
                <c:choose>
				<c:when test="${empty list || fn:length(list) == 0 }">
				</c:when>
				<c:otherwise>
				<c:forEach var="dto" items="${list }" varStatus="vs" >
				<c:if test="${vs.index mod 5 == 0}">
				<div class="col-12 col-sm-6 col-md-4 col-lg-2" id="a${vs.index}">
				
					<h4>${dto.prfname}와 비슷한 작품</h4>
					

				</div>
				</c:if>
                <div class="col-12 col-sm-6 col-md-4 col-lg-2" id="a${vs.index}">
                	
                    <div class="single-album-area wow fadeInUp" data-wow-delay="100ms">
                        <div class="album-thumb">
                        	<a href="${pageContext.request.contextPath }/perform/intro/${dto.reluid}">
                            <img src="${dto.relprfposter}" alt="" >
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
                        <div class="album-info">
                            <a href="#">
                                <h5>${dto.relprfname }</h5>
                            </a>
                            
                            <!--  link to theater page -->
                            <a href="${pageContext.request.contextPath }/theater/view/${dto.relprffacilty}">
                            <p>${dto.relprffacilty }</p>
                            </a>
                            
                        </div>
                    </div>
                </div>
                </c:forEach>
				</c:otherwise>
				</c:choose>
            </div>
            
        </div>
    </section>
    <!-- ##### Buy Now Area End ##### -->


   
               

    <!-- ##### Miscellaneous Area End ##### -->
    
	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>
	
</body>

</html>