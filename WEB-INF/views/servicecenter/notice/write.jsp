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
    <title>공지사항</title>

    <!-- Favicon -->
    <link rel="icon" href="<%=request.getContextPath() %>/resources/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/style.css">

</head>
<script>
function chkSubmit(){
	frm = document.forms['frm'];
	
	var title = frm['title'].value.trim();

	if(subject == ""){
		alert("제목은 반드시 작성해야 합니다");
        frm["title"].focus();
        return false;
	}
	return true;
}
</script>
<body>

	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
	
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(<%=request.getContextPath() %>/resources/img/bg-img/bg-3.jpg);">
        <div class="bradcumbContent">
            <h2>공지사항</h2>
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
					<form method="post" action="writeOk" onsubmit="return chkSubmit()">
						<table class="table table-striped"
							style="text-align: center; border: 1px solid #dddddd">
							<thead>
								<tr>
									<th colspan="2"
										style="background-color: #eeeeee; text-align: center;">게시판
										글쓰기 양식</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="text" class="form-control"
										placeholder="글 제목" name="title" maxlength="50"></td>
								</tr>
								<tr>
									<td><input type="text" class="form-control"
										placeholder="글 작성자" name="name" maxlength="50"></td>
								</tr>
								<tr>
									<td><textarea class="form-control" placeholder="글 내용"
											name="content" maxlength="2048" style="height: 350px;"></textarea></td>
								</tr>
							</tbody>
						</table>
						<!-- 글쓰기 버튼 생성 -->
						<input type="submit" class="btn btn-primary pull-right"
							value="글쓰기">
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
					</form>
				</div>
            </div>
        </div>
    </section>
    <!-- ##### Contact Area End ##### -->
<!-- 
  게시판 글쓰기 양식 영역 시작
	<div class="container">
		<div class="row">
			<form method="post" action="writeOk" onsubmit="return chkSubmit()">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="title" maxlength="50"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 작성자" name="name" maxlength="50"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용" name="content" maxlength="2048" style="height: 350px;"></textarea></td>
						</tr>
					</tbody>
				</table>
				글쓰기 버튼 생성
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
			</form>
		</div>
	</div>
	게시판 글쓰기 양식 영역 끝
	 -->
	<!-- 부트스트랩 참조 영역 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>

	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>
	

</body>

</html>