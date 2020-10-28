<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<link rel="shortcut icon" type="image⁄x-icon" href="./resources/resource/img/laugh-wink-regular.svg">
<title>We Office - Forgot Password</title>

<!-- Custom fonts for this template-->
<link href="./resources/resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="./resources/resource/css/sb-admin-2.min.css" rel="stylesheet">
<link href="./resources/resource/css/style.css" rel="stylesheet">

</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		//아이디 중복 체크
		$("#id").keyup(function() {
			$.ajax({
				url : "check_id.do",
				type : "post",
				data : {
					u_id : $("#id").val()
				},
				success : function(result) {
					if (result == 1) {//아이디 존재
						$(".idCheck").html("");
						$("#joinBtn").removeAttr("disabled");
					} else { //아이디가 존재하지 않음
						$(".idCheck").html("아이디가 존재하지 않습니다.");
						$("#joinBtn").attr("disabled", "disabled");
					}
				},
			})
		});

		// 이메일 일치 하지 않을 시 메시지 출력
		$(function() {
			var responseMessage = "<c:out value="${msg}" />";
			if (responseMessage != "") {
				alert(responseMessage)
			}
		})

	});
</script>

<body class="bg-gradient-primary">

	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">
			<div class="col-xl-10 col-lg-12 col-md-9">
				<div class="card o-hidden border-0 shadow-lg my-5" style="width: 70%; margin: 0 auto;">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<!-- 							<div class="col-lg-6 d-none d-lg-block bg-password-image"></div> -->
							<div class="login_box col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-2">비밀번호를 잊으셨나요??</h1>
										<p class="mb-4">회원가입 시 등록한 이메일 주소를 입력하시면 비밀번호 재설정 링크를 보내드립니다.</p>
									</div>
									<form class="userPw" action="sendpw.do" method="post">
										<div class="form-group">
											<input type="id" class="form-control form-control-user" id="id" name="u_id" aria-describedby="emailHelp" placeholder="Enter Id...">
										</div>
										<div class="idCheck"></div>
										<div class="form-group">
											<input type="email" class="form-control form-control-user" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter Email Address...">
										</div>
										<div class="emailCheck"></div>
										<input id="joinBtn" type="submit" class="btn btn-primary btn-user btn-block" value="비밀번호 찾기">
									</form>
									<hr>
									<div class="text-center">
										<a class="small" href="registerform.do">회원가입!</a>
									</div>
									<div class="text-center">
										<a class="small" href="loginform.do">계정이 있으신가요? 로그인</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="./resources/resource/vendor/jquery/jquery.min.js"></script>
	<script src="./resources/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="./resources/resource/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="./resources/resource/js/sb-admin-2.min.js"></script>

</body>

</html>
