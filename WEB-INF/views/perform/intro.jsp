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
    <title>Perform</title>

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
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(<%=request.getContextPath() %>/img/bg-img/bg-4.jpg);">
       
    </section>

    <!-- ##### Buy Now Area Start ##### -->
    <section class="oneMusic-buy-now-area has-fluid bg-gray section-padding-100">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <p>What's New</p>
                        <h2>최 신 연 극</h2>
                        <br>
                        <input type="text" id="prfn">&nbsp;&nbsp;&nbsp;<button id="prfser" type="button">검색</button>
                    </div>
                </div>
            </div>

            <div class="row" id="ah">
                <!-- Single Album Area -->
                <c:choose>
				<c:when test="${empty list || fn:length(list) == 0 }">
				</c:when>
				<c:otherwise>
				<c:forEach var="dto" items="${list }" varStatus="vs" >
                <div class="col-12 col-sm-6 col-md-4 col-lg-2 single-album" style=display:none; id="a${vs.index}">
                    <div class="single-album-area wow fadeInUp" data-wow-delay="100ms">
                        <div class="album-thumb">
                        	<a href="${pageContext.request.contextPath }/perform/intro/${dto.uid}">
                            <img src="${dto.poster}" alt="" >
                            </a>
                        </div>
                        <div class="album-info">
                            <a href="#">
                                <h5>${dto.name }</h5>
                            </a>
                            
                            <!--  link to theater page -->
                            <a href="${pageContext.request.contextPath }/theater/view/${dto.tuid}">
                            <p>${dto.fcltynm }</p>
                            </a>
                            
                        </div>

					</div>
                </div>
                </c:forEach>
				</c:otherwise>
				</c:choose>
            </div>
            
             <div class="row" id="ah1">
             </div>
            

            <div class="row">
                <div class="col-12">
                    <div class="load-more-btn text-center wow fadeInUp" data-wow-delay="300ms">
                        <button id="but" type="button" class="btn oneMusic-btn">Load More <i class="fa fa-angle-double-right"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Buy Now Area End ##### -->


   
               

    <!-- ##### Miscellaneous Area End ##### -->
    
	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>
	
</body>

</html>