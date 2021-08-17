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
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(<%=request.getContextPath() %>/img/bg-img/bg-2.jpg);">
        <div class="bradcumbContent">
            <p>팀프로젝트 진행</p>
            <h2>RecoPAY 소개</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->
    
	    <!-- ##### Blog Area Start ##### -->
    <div class="blog-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">

                    <!-- Single Post Start -->
                    <div class="single-blog-post mb-100 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Post Thumb -->
                        <div class="blog-post-thumb mt-30">
                            <a href="#"><img src="<%=request.getContextPath() %>/img/bg-img/blog1.jpg" alt=""></a>
                            <!-- Post Date -->
                            <div class="post-date">
                                <span>21</span>
                                <span>March</span>
                            </div>
                        </div>

                        <!-- Blog Content -->
                        <div class="blog-content">
                            <!-- Post Title -->
                            <a href="#" class="post-title">첫 팀프로젝트의 시작</a>
                            <!-- Post Meta -->
                            <div class="post-meta d-flex mb-30">
                                <p class="post-author">By<a href="#"> PoC (Piece Of Cake)</a></p>
                                <p class="tags">in<a href="#"> 2021</a></p>
                            </div>
                            <!-- Post Excerpt -->
                            <p>국비과정 (AI활용 소프트웨어 개발 및 응용) AI활용 소프트웨어 개발 및 응용과정을 통해 팀원 선정 후 처음으로 만나 팀 프로젝트를 시작하게 되었습니다.</p>
                        </div>
                    </div>

                    <!-- Single Post Start -->
                    <div class="single-blog-post mb-100 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Post Thumb -->
                        <div class="blog-post-thumb mt-30">
                            <a href="#"><img src="<%=request.getContextPath() %>/img/bg-img/blog2.jpg" alt=""></a>
                            <!-- Post Date -->
                            <div class="post-date">
                                <span>27</span>
                                <span>March</span>
                            </div>
                        </div>

                        <!-- Blog Content -->
                        <div class="blog-content">
                            <!-- Post Title -->
                            <a href="#" class="post-title">첫 회동</a>
                            <!-- Post Meta -->
                            <div class="post-meta d-flex mb-30">
                                <p class="post-author">By<a href="#"> P.O.C</a></p>
                                <p class="tags">in<a href="#"> 2021</a></p>
                            </div>
                            <!-- Post Excerpt -->
                            <p>비대면으로 인해 프로젝트 진행이 더디게 되어서 5명의 팀원이 처음 만나고 ERD와 프로젝트의 진행방향, 기획, 스토리보드 제작을 하였습니다. (코로나19 방역수칙을 지키며 진행했습니다.)</p>
                        </div>
                    </div>

                    <!-- Single Post Start -->
                    <div class="single-blog-post mb-100 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Post Thumb -->
                        <div class="blog-post-thumb mt-30">
                            <a href="#"><img src="<%=request.getContextPath() %>/img/bg-img/blog6.jpeg" alt=""></a>
                            <!-- Post Date -->
                            <div class="post-date">
                                <span>30</span>
                                <span>March</span>
                            </div>
                        </div>

                        <!-- Blog Content -->
                        <div class="blog-content">
                            <!-- Post Title -->
                            <a href="#" class="post-title">프로젝트 규모 검토</a>
                            <!-- Post Meta -->
                            <div class="post-meta d-flex mb-30">
                                <p class="post-author">By<a href="#"> P.O.C</a></p>
                                <p class="tags">in<a href="#"> 2021</a></p>
                            </div>
                            <!-- Post Excerpt -->
                            <p>그동안 진행해왔던 스토리보드와 ERD, 프로젝트의 규모와 난이도 조절을 검토받고 약간의 수정단계를 거쳐서 개발단계에 착수했습니다.</p>
                        </div>
                    </div>

                    <!-- Single Post Start -->
                    <div class="single-blog-post mb-100 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Post Thumb -->
                        <div class="blog-post-thumb mt-30">
                            <a href="#"><img src="<%=request.getContextPath() %>/img/bg-img/blog4.jpg" alt=""></a>
                            <!-- Post Date -->
                            <div class="post-date">
                                <span>7</span>
                                <span>April</span>
                            </div>
                        </div>

                        <!-- Blog Content -->
                        <div class="blog-content">
                            <!-- Post Title -->
                            <a href="#" class="post-title">개발 후 첫 모임</a>
                            <!-- Post Meta -->
                            <div class="post-meta d-flex mb-30">
                                <p class="post-author">By<a href="#"> P.O.C</a></p>
                                <p class="tags">in<a href="#"> 2021</a></p>
                            </div>
                            <!-- Post Excerpt -->
                            <p>기본적으로 사용할 템플릿과 폴더 및 경로 셋팅, Git 연동 등 기본적인 베이스를 셋팅하고 Git을 통해 프로젝트를 나눈 뒤 각자 맡은 파트를 진행하고 진행 상황과 방향을 재설정하기위해 모임을 가졌습니다. </p>
                        </div>
                    </div>

                    <!-- Single Post Start -->
                    <div class="single-blog-post mb-100 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Post Thumb -->
                        <div class="blog-post-thumb mt-30">
                            <a href="#"><img src="<%=request.getContextPath() %>/img/bg-img/blog5.jpg" alt=""></a>
                            <!-- Post Date -->
                            <div class="post-date">
                                <span>12</span>
                                <span>April</span>
                            </div>
                        </div>

                        <!-- Blog Content -->
                        <div class="blog-content">
                            <!-- Post Title -->
                            <a href="#" class="post-title">개발 상황 리뷰</a>
                            <!-- Post Meta -->
                            <div class="post-meta d-flex mb-30">
                                <p class="post-author">By<a href="#"> P.O.C</a></p>
                                <p class="tags">in<a href="#"> 2021</a></p>
                            </div>
                            <!-- Post Excerpt -->
                            <p>비대면 상황으로 간단한 브리핑을 통해 현재 진행율을 확인하기 힘들어 다시 모여 파트의 난이도 조절 및 파트 재분담, 진행하면서 느낀 수정사항을 나누며 진행율을 높이기 위해 회의를 진행했습니다. </p>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <!-- ##### Blog Area End ##### -->
	
 

 	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>


</body>

</html>