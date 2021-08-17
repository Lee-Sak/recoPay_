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
    <title>Qna</title>

    <!-- Favicon -->
    <link rel="icon" href="<%=request.getContextPath() %>/resources/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/style.css">

</head>

<body>

	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
	
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(<%=request.getContextPath() %>/resources/img/bg-img/bg-1.jpg);">
        <div class="bradcumbContent">
            <h2>1대1문의</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Contact Area Start ##### -->
    <section class="contact-area section-padding-100-0 mb-50">
        <div class="container">
            <div class="row">

               <div class="col-12 col-lg-3">
                    <div class="contact-content mb-100">
                        <!-- Title -->
                        <div class="contact-title mb-50">
                            <h5>SERVICECENTER</h5>
                        </div>

                        <!-- Single Contact Info -->
                        <div class="single-contact-info d-flex align-items-center">
                            <div class="icon mr-30">
                                <span class="icon-placeholder"></span>
                            </div>
                            <p><a href="<%=request.getContextPath() %>/servicecenter/notice/notice">공지사항</a></p>
                        </div>

                        <!-- Single Contact Info -->
                        <div class="single-contact-info d-flex align-items-center">
                            <div class="icon mr-30">
                                <span class="icon-smartphone"></span>
                            </div>
                            <p><a href="<%=request.getContextPath() %>/servicecenter/qna/qna">1대1 문의</a></p>
                        </div>

                        <!-- Single Contact Info -->
                        <div class="single-contact-info d-flex align-items-center">
                            <div class="icon mr-30">
                                <span class="icon-mail"></span>
                            </div>
                            <p><a href="<%=request.getContextPath() %>/servicecenter/faq/faq">자주 묻는 질문</a></p>
                        </div>

                    </div>
                </div>

				<div class="col-12 col-lg-9">
					<table class="table table-striped"
						style="text-align: center; border: 1px solid #dddddd">
						<thead>
							<tr>
								<th style="background-color: #eeeeee; text-align: center;">번호</th>
								<th style="background-color: #eeeeee; text-align: center;">제목</th>
								<th style="background-color: #eeeeee; text-align: center;">작성자</th>
								<th style="background-color: #eeeeee; text-align: center;">조회수</th>
								<th style="background-color: #eeeeee; text-align: center;">작성일</th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${empty list || fn:length(list) == 0 }">
								</c:when>
								<c:otherwise>
									<c:forEach var="dto" items="${list }">
										<tr>
											<td>${dto.q_uid }</td>
											<%-- getN_uid() --%>
											<td><a href="view?q_uid=${dto.q_uid }">${dto.title }</a></td>
											<td>${dto.name}</td>
											<%-- getname() --%>
											<td>${dto.viewcnt }</td>
											<td>${dto.uploadtime }</td>
											<%-- getuploadTime() --%>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
					<!-- 글쓰기 버튼 생성 -->
					<a href="write" class="btn btn-primary pull-right">글쓰기</a>
				</div>

			</div>
        </div>
    </section>
<%--     
 <!-- 게시판 메인 페이지 영역 시작 -->
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">조회수</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
		<tbody>
					<c:choose>
		<c:when test="${empty list || fn:length(list) == 0 }">
		</c:when>
		<c:otherwise>
			<c:forEach var="dto" items="${list }">
				<tr>
					<td>${dto.q_uid }</td>  getN_uid()
					<td><a href="view?q_uid=${dto.q_uid }">${dto.title }</a></td>
					<td>${dto.name}</td>  getname()
					<td>${dto.viewcnt }</td>
					<td>${dto.uploadtime }</td> getuploadTime()
				</tr>			
			</c:forEach>
		</c:otherwise>
		</c:choose>
				</tbody>
			</table>
			<!-- 글쓰기 버튼 생성 -->
			<a href="write" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	<!-- 게시판 메인 페이지 영역 끝 -->
 --%>	
	<!-- 부트스트랩 참조 영역 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>

    <!-- ##### Contact Area End ##### -->

	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>
	

</body>

</html>