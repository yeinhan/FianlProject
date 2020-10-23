<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>We Office - Login</title>

<!-- Custom fonts for this template-->
<link href="./resources/resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="./resources/resource/css/sb-admin-2.min.css" rel="stylesheet">
<link href="./resources/resource/css/style.css" rel="stylesheet">

</head>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	function login() {
		var u_id = $("#u_id").val().trim();
		var password = $("#password").val().trim();
		console.log(u_id + "/" + password);
		var loginVal = {
			"u_id" : u_id,
			"password" : password
		};
		if (u_id == null || u_id == "" || password == null || password == "") {
			alert("ID 및 PW를 확인해 주세요");
		} else {
			$.ajax({
				type : "post",
				url : "ajaxlogin.do",
				data : JSON.stringify(loginVal),
				contentType : "application/json",
				dataType : "json",
				success : function(msg) {
					if (msg.check == true) {
						location.href = "main.do";
					} else {
						$("#loginChk").show().html("인증되지 않은 이메일 혹은 ID/PW가 잘못되었습니다");
					}
				},
				error : function() {
					alert("통신 실패");
				}
			})
		}
	}
	$(function() {
		$("#loginChk").hide();
	});
</script>

<body class="bg-gradient-primary">

	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-10 col-lg-12 col-md-9">

				<div class="login_box2 card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<!-- <div class="col-lg-6 d-none d-lg-block bg-login-image"></div> -->
							<div class="login_box col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<div class="login_box_font sidebar-brand d-flex align-items-center justify-content-center">
											<div class="sidebar-brand-icon rotate-n-15">
												<i class="fas fa-laugh-wink"></i>
											</div>
											<div class="sidebar-brand-text mx-3">We Office</div>
										</div>

										<h1 class="h5 text-gray-900 mb-4">Welcome Back!</h1>
									</div>
									<form class="user">
										<div class="form-group">
											<input type="text" class="form-control form-control-user" id="u_id" aria-describedby="emailHelp" placeholder="ID">
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user" id="password" placeholder="Password">
										</div>
										<!-- 										<div class="form-group"> -->
										<!-- 											<div class="custom-control custom-checkbox small"> -->
										<!-- 												<input type="checkbox" class="custom-control-input" id="customCheck"> <label class="custom-control-label" for="customCheck">Remember Me</label> -->
										<!-- 											</div> -->
										<!-- 										</div> -->
										<div align="center" id="loginChk"></div>
										<input type="button" class="btn btn-primary btn-user btn-block" value="Login" onclick="login();">
										<hr>
										<a href="index.jsp" class="btn btn-google btn-user btn-block"> <i class="fab fa-google fa-fw"></i> Login with Google
										</a> <a href="index.jsp" class="btn btn-facebook btn-user btn-block"> <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
										</a>
									</form>
									<hr>
									<div class="text-center">
										<a class="small" href="forgotpwform.do">Forgot Password?</a>
									</div>
									<div class="text-center">
										<a class="small" href="registerform.do">Create an Account!</a>
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
