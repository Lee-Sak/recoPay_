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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>Login</title>

<!-- Favicon -->
<link rel="icon"
	href="<%=request.getContextPath()%>/img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/style.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>

<body>


	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
	<!-- ##### Header Area End ##### -->

	<!-- ##### Breadcumb Area Start ##### -->
	<section class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(<%=request.getContextPath()%>/img/bg-img/bg-4.jpg);">
		<div class="bradcumbContent">
			<h2>Login</h2>
		</div>
	</section>
	<!-- ##### Breadcumb Area End ##### -->


	<!-- ##### Login Area Start ##### -->
	<section class="login-area section-padding-100">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-12 col-lg-8">
					<div class="login-content">
						<h3>Welcome Back</h3>
						<!-- Login Form -->
						<div class="login-form">



							<form method='post'
								action="${pageContext.request.contextPath}/login">
								<div class="form-group">
									<label for="username">ID</label> <input type="text"
										name='username' class="form-control" id="username"
										aria-describedby="idHelp" placeholder="Enter ID"> <small
										id="idHelp" class="form-text text-muted"><i
										class="fa fa-lock mr-2"></i>We'll never share your with anyone
										else.</small>
								</div>
								<div class="form-group">
									<label for="password">Password</label> <input type="password"
										name='password' class="form-control" id="password"
										placeholder="Password">
								</div>
								<button type="submit" class="btn oneMusic-btn mt-30">Login</button>
								<br> <br> <input type="hidden"
									name="${_csrf.parameterName }" value="${_csrf.token }" /> <small
									class="join-group">회원이 아니신가요?<br> <a
									href="<%=request.getContextPath()%>/login/join">JOIN US</a>
								</small>

							</form>
							<br><br>
							
							<a id="kakao-login-btn"></a>
							<a href="http://developers.kakao.com/logout"></a>
							<script type='text/javascript'>
							  //<![CDATA[
							    // 사용할 앱의 JavaScript 키를 설정해 주세요.
							    Kakao.init('bda5f34546ed9283d43c539c531b9455');  //여기서 아까 발급받은 키 중 javascript키를 사용해준다.
							    // 카카오 로그인 버튼을 생성합니다.
							    Kakao.Auth.createLoginButton({
							      container: '#kakao-login-btn',
							      success: function(authObj) {
							        alert(JSON.stringify(authObj));
							      },
							      fail: function(err) {
							         alert(JSON.stringify(err));
							      }
							    });
							  //]]>
							</script>
							
							 <!-- 네이버아이디로로그인 버튼 노출 영역 -->
							 <div id="naver_id_login"></div>
							  <!-- //네이버아이디로로그인 버튼 노출 영역 -->
							 <script type="text/javascript">
							  	var naver_id_login = new naver_id_login("oH9DaoWLy8tPxy8Q46Pb", "http://localhost:8080/recopay");
							  	var state = naver_id_login.getUniqState();
							  	naver_id_login.setButton("green", 10,48);
							  	naver_id_login.setDomain("http://localhost:8080/recopay");
							  	naver_id_login.setState(state);
							  	naver_id_login.setPopup();
							  	naver_id_login.init_naver_id_login();
							 </script>


							
							</div>

							<c:if test="${msg == 'loginError'}">
								<p style="color: #f00;">로그인에 실패했습니다. 아이디 또는 패스워드를 다시
									입력해주십시오.</p>

							</c:if>
						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- ##### Login Area End ##### -->

	<!-- ##### Footer Area Start ##### -->
	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>
	<!-- ##### Footer Area Start ##### -->

</body>

</html>