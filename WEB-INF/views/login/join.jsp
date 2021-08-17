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
<title>회원가입</title>

<!-- Favicon -->
<link rel="icon" href="<%=request.getContextPath() %>/img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>



</head>

<style>
.joinbtn{
   width:25%;
   height: 50px;
    background-color: rgba( 255, 255, 255 );
    border: 1px solid;
    color:#000;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 4px;
    cursor: pointer;
   transition: 0.4s;
   font-family: Arial;
}

.joinbtn:hover{
   opacity: 1;
   background-color: #000000;
   color: white;
   border: none;
   font: Arial;
   
}

</style>


<body>
	<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
	<!-- ##### Header Area End ##### -->

	<!-- ##### Breadcumb Area Start ##### -->
	<section class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(<%=request.getContextPath() %>/resources/img/bg-img/bg-3.jpg);">
		<div class="bradcumbContent">
			<h2>Join</h2>
		</div>
	</section>
	<!-- ##### Breadcumb Area End ##### -->

	<!-- ##### Login Area Start ##### -->
	<section class="login-area section-padding-100">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-12 col-lg-8">
					<div class="login-content">
						<h3>Welcome</h3>
						<!-- Login Form -->
						<div class="login-form">


							<form role="form" autocomplete="off" method="post"
								action="${pageContext.request.contextPath}/login/join"
								name="userInfo">


								<div class="form-group">
									<label for="username" style="display: block;">ID</label> <input type="text" style="width: 70%; display:inline-block;"
										name='username' class="form-control" id="username"
										placeholder="Enter ID" required>
									<button type="button" class="id_overlap_button joinbtn" id="btn2" >중복확인</button>
									<div id ="checkMsg"></div>
								</div>
								<div class="form-group">
									<label for="password">Password</label> <input type="password"
										name='password' class="form-control" id="password"
										placeholder="Password" required>
								</div>
								<div class="form-group">
									<label for="passwordCheck">Password 확인</label> <input
										type="password" name='passwordCheck' class="form-control"
										id="passwordCheck" placeholder="Password" required>
								</div>
								<div class="form-group">
									<label for="name">Name</label> <input type="text" name='name'
										class="form-control" id="name" placeholder="Name" required>
								</div>
								<div class="form-group">
									<label for="emailbf">E-mail</label> <input type="email"
										name='emailbf' class="form-control" id="emailbf"
										placeholder="Email" required>
								</div>
								<div class="form-group">
									<div>
										<label for="addr1" style="display: block;">Address</label>
									</div>
									<div>
										<input type="text" style="width: 50%; display: inline-block;" name='addr1'
											class="form-control" id="addr1" placeholder="우편번호"
											readonly="readonly" required> <input type="button"
											onclick="execDaumPostcode();" value="우편번호 찾기" class="joinbtn">
									</div>
								</div>
								<div class="form-group">
									<input type="text" name="addr2" class="form-control" id="addr2"
										placeholder="도로명주소" readonly="readonly" required>
								</div>
								<div class="form-group">
									<input type="text" name="addr3" class="form-control" id="addr3"
										placeholder="상세주소" required>
								</div>
								<div class="form-group">
									<label for="call">정보 수신 여부</label><br> <input type="radio"
										name="call" value="0" id="call" /><p style="display: inline-block; margin-right: 50px;">수신안함</p> <input
										type="radio" name="call" value="1" id="call" />이메일수신
								</div>
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
								<button type="submit" class="btn oneMusic-btn mt-30"
									onclick="test()">Join</button>
							</form>
							<br> <br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<script type="text/javascript">
	    function test() {
	      var p1 = document.getElementById('password').value;
	      var p2 = document.getElementById('passwordCheck').value;
	      if( p1 != p2 ) {
	        alert("비밀번호가 일치 하지 않습니다. 다시 입력하세요.");
	        return false;
	      } else{
	        alert("비밀번호가 일치합니다");
	        return true;
	      }
	
	    }
	 </script>
	
	<script>
	
	$("#btn2").click(function javascript_onclikc(){
		var username = $('#username').val(); 
		$.ajax({ 
			type: "GET", 
			url: "./loginCk/" + username, 
			cache : false,
			success: function(data, status){
				if(status == "success") {
					if(data == 0){ 
						$('#checkMsg').html('<p style="color:blue">사용가능</p>'); 
					} 
					else{ $('#checkMsg').html('<p style="color:red">사용불가능</p>'); 
					} 
				}
				else {
					alert("실패");
				}
			} 
		}); //end ajax 
	}); //end on


		
		
		
				
	





	  </script>
	<!-- <script>
  //아이디 중복검사
    $('.username').on("propertychange change keyup paste input", function(){

    	var memberId = $('.username').val();			// .id_input에 입력되는 값
    	var data = {memberId : memberId}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
    	
    	$.ajax({
    		type : "post",
    		url : "/login/memberIdChk",
    		data : data
    	}); // ajax 종료	

    });// function 종료
    
    </script>-->

	<!-- <script>
    function joinform_check() {
    	  //변수에 담아주기
    	  var uid = document.getElementById("username");
    	  var pwd = document.getElementById("password");
    	  var repwd = document.getElementById("passwordCheck");
    	  var uname = document.getElementById("name");
    	  var email_id = document.getElementById("emailbf");
    	  var addr = document.getElementById("addr2");

    	  if (uid.value == "") { //해당 입력값이 없을 경우 같은말: if(!uid.value)
    	    alert("아이디를 입력하세요.");
    	    uid.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
    	    return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
    	  };

    	  if (pwd.value == "") {
    	    alert("비밀번호를 입력하세요.");
    	    pwd.focus();
    	    return false;
    	  };

    	  //비밀번호 영문자+숫자+특수조합(8~25자리 입력) 정규식
    	  var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

    	  if (!pwdCheck.test(pwd.value)) {
    	    alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
    	    pwd.focus();
    	    return false;
    	  };

    	  if (repwd.value !== pwd.value) {
    	    alert("비밀번호가 일치하지 않습니다..");
    	    repwd.focus();
    	    return false;
    	  };

    	  if (uname.value == "") {
    	    alert("이름을 입력하세요.");
    	    uname.focus();
    	    return false;
    	  };


    	  if (email_id.value == "") {
    	    alert("이메일 주소를 입력하세요.");
    	    email_id.focus();
    	    return false;
    	  }
    	  
    	  if (addr.value == "") {
      	    alert("주소를 입력하세요.");
      	  	addr.focus();
      	    return false;
      	  };
	</script>-->



	<!-- ##### Login Area End ##### -->

	<!-- ##### Footer Area Start ##### -->
	<jsp:include page="/resources/jsp/footer.jsp"></jsp:include>
	<!-- ##### Footer Area Start ##### -->

	
	<!-- ##### All Javascript Script ##### -->
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    <!-- ##### All Javascript Script ##### -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
    /* 다음 주소 연동 */
	function execDaumPostcode() {
	
    	
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                /* if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }
 */
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                /* document.getElementById("addr1").value = data.zonecode;
                document.getElementById("addr2").value = addr;
 				$("#addr2").val(addr); */
 				 $("[name=addr1]").val(data.zonecode);
 				 $("[name=addr2]").val(addr);
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("addr3").focus();
            }
        
	        
        }).open();
    }
     
    
    </script>

	
</body>

</html>