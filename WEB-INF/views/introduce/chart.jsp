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
    <title>Introduce</title>

    <!-- Favicon -->
    <link rel="icon" href="<%=request.getContextPath()%>/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/style.css">

</head>

<body>
	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
	
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(<%=request.getContextPath() %>/img/bg-img/bg-1.jpg);">
        <div class="bradcumbContent">
            <p>팀프로젝트 진행</p>
            <h2>조 직 도</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Events Area Start ##### -->
    <section class="events-area section-padding-100">
        <div class="container">
            <div class="row">

                <!-- Single Event Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-event-area mb-30">
                        <div class="event-thumbnail">
                            <img src="<%=request.getContextPath() %>/img/bg-img/recopaylogo.png" alt="">
                        </div>
                        <div class="event-text">
                            <h4>Team RECOPAY</h4>
                            <div class="event-meta-data">
                                <a href="#" class="event-place">팀 원 소 개</a>
                                <a href="#" class="event-date">March 22, 2021</a>
                            </div>
                            <a href="#" class="btn see-more-btn">See Event</a>
                        </div>
                    </div>
                </div>
                
                <!-- Single Event Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-event-area mb-30">
                        <div class="event-thumbnail">
                            <img src="<%=request.getContextPath() %>/img/bg-img/th5.png" alt="">
                        </div>
                        <div class="event-text">
                            <h4>Im JangHo</h4>
                            <div class="event-meta-data">
                                <a href="#" class="event-place">변변찮은 팀장</a>
                                <a href="#" class="event-date">August 1, 1995</a>
                            </div>
                            <a href="#" class="btn see-more-btn">See Event</a>
                        </div>
                    </div>
                </div>

                <!-- Single Event Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-event-area mb-30">
                        <div class="event-thumbnail">
                            <img src="<%=request.getContextPath() %>/img/bg-img/th1.jpg" alt="">
                        </div>
                        <div class="event-text">
                            <h4>Gong SukWon</h4>
                            <div class="event-meta-data">
                                <a href="#" class="event-place">믿음직한 맏형</a>
                                <a href="#" class="event-date">June 15, 1991</a>
                            </div>
                            <a href="#" class="btn see-more-btn">See Event</a>
                        </div>
                    </div>
                </div>

                <!-- Single Event Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-event-area mb-30">
                        <div class="event-thumbnail">
                            <img src="<%=request.getContextPath() %>/img/bg-img/th2.jpg" alt="">
                        </div>
                        <div class="event-text">
                            <h4>Lee Sak</h4>
                            <div class="event-meta-data">
                                <a href="#" class="event-place">만능 재주꾼</a>
                                <a href="#" class="event-date">June 15, 1996</a>
                            </div>
                            <a href="#" class="btn see-more-btn">See Event</a>
                        </div>
                    </div>
                </div>

                <!-- Single Event Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-event-area mb-30">
                        <div class="event-thumbnail">
                            <img src="<%=request.getContextPath() %>/img/bg-img/th3.jpg" alt="">
                        </div>
                        <div class="event-text">
                            <h4>Park SaeByeol</h4>
                            <div class="event-meta-data">
                                <a href="#" class="event-place">홍일점</a>
                                <a href="#" class="event-date">June 15, 1997</a>
                            </div>
                            <a href="#" class="btn see-more-btn">See Event</a>
                        </div>
                    </div>
                </div>

                <!-- Single Event Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-event-area mb-30">
                        <div class="event-thumbnail">
                            <img src="<%=request.getContextPath() %>/img/bg-img/th4.jpg" alt="">
                        </div>
                        <div class="event-text">
                            <h4>Kang TaeMin</h4>
                            <div class="event-meta-data">
                                <a href="#" class="event-place">막둥이</a>
                                <a href="#" class="event-date">June 15, 1998</a>
                            </div>
                            <a href="#" class="btn see-more-btn">See Event</a>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section>
    <!-- ##### Events Area End ##### -->
	
 

 	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>
</body>

</html>