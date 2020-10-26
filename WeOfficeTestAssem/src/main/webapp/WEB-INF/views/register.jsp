<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>We Office-Register</title>

<!-- Custom fonts for this template-->
<link href="./resources/resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="./resources/resource/css/sb-admin-2.min.css" rel="stylesheet">
<link href="./resources/resource/css/style.css" rel="stylesheet">

</head>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script>
	$(function() {
		$("#user").submit(
						function() {
							if ($("#InputPw").val() !== $("#RepeatPw").val()) {
								// 			$(".pwCheck").html("비밀번호가 일치하지 않습니다.");
								$("#InputPw").val("").focus();
								$("#RepeatPw").val("");

								return false;
							} else if ($.trim($("#InputPw")).val() !== $("#InputPw").val()
									|| $.trim($("#Email").val()) !== $("#Email")
											.val()
									|| $.trim($("#Id").val()) !== $("#Id")
											.val()
									|| $.trim($("#Name").val()) !== $("#Name")
											.val()
									|| $.trim($("#Email").val()) !== $("#Email")
											.val()) {
								alert("공백은 입력이 불가능 합니다.");
								return false;
							}
						})
		//아이디 중복 체크
		$("#id").keyup(function() {
			$.ajax({
				url : "check_id.do",
				type : "post",
				data : {
					u_id : $("#id").val()
				},
				success : function(result) {
					if (result == 1) {
						$(".idCheck").html("중복된 아이디가 있습니다.");
						$("#joinBtn").attr("disabled", "disabled");
					} else {
						$(".idCheck").html("");
						$("#joinBtn").removeAttr("disabled");
					}
				},
			})
		});
		$('#chkEmail').click(function() {
			$.ajax({
				url : "check_email.do",
				type : "POST",
				data : {
					email : $("#Email").val()
				},
				success : function(result) {
					if (result == 1) {
						$(".emailCheck").html("중복된 이메일이 있습니다.");
						$("#joinBtn").attr("disabled", "disabled");
					}
					else {
						$(".emailCheck").html("사용 가능한 이메일 입니다.");
						$("#joinBtn").removeAttr("disabled");
					}
				},
			})
		})
		$('#Email').click(function() {
			var email = document.getElementById('#Email');
			if (email == null) {
				$("#chkEmail").attr("disabled", "disabled");
			}else if(email == 'a'){
				alert("tre");
				$("#chkEmail").removeAttr("disabled");
			}

		})

		//비밀번호 재확인
		$("#RepeatPw, #InputPw").keyup(function() {
			$.ajax({
				url : "registerform.do",
				type : "GET",
				data : {},
				success : function() {
					if ($("#InputPw").val() !== $("#RepeatPw").val()) {
						$(".pwCheck").html("비밀번호가 일치하지 않습니다.");
					} else {
						$(".pwCheck").html("");
					}
				}
			})
		})

	})
</script>

<body class="bg-gradient-primary">

	<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
					<div class="col-lg-7">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 mb-4 login_box_font">
									<div class="sidebar-brand-icon rotate-n-15">
										<i class="fas fa-laugh-wink"></i>
									</div>
									<div class="sidebar-brand-text mx-3">We Office</div>
								</h1>
							</div>
							<form class="user" id="user" method="post" action="register.do">
								<div class="form-group">
									<input type="text" class="form-control form-control-user" id="id" name="u_id" placeholder="Id" required="required">
								</div>
								<div class="idCheck"></div>
								<div class="form-group">
									<input type="text" class="form-control form-control-user" id="Name" name="name" placeholder="Name" required="required">

									<!--                   <div class="col-sm-6"> -->
									<!--                     <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name"> -->
									<!--                   </div> -->
								</div>
								<div class="form-group">
									<input type="email" class="form-control form-control-user regi_email" id="Email" name="email" placeholder="Email Address" required="required"> <input id="chkEmail"
										type="button" class="btn btn-primary btn-user btn-block regi_email_btn" value="Check Email" style="width: 30%;">
								</div>
								<div class="emailCheck" style="margin-top: 0px;"></div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="password" class="form-control form-control-user" id="InputPw" name="password" placeholder="Password" required="required">
									</div>
									<div class="col-sm-6">
										<input type="password" class="form-control form-control-user" id="RepeatPw" placeholder="Repeat Password" required="required">
									</div>
								</div>
								<div class="pwCheck"></div>
								<input id="joinBtn" type="submit" class="btn btn-primary btn-user btn-block" value="가입하기">
								<!-- 								<hr> -->
								<!-- 								<a href="index.jsp" class="btn btn-google btn-user btn-block"> <i class="fab fa-google fa-fw"></i> Register with Google -->
								<!-- 								</a> <a href="index.jsp" class="btn btn-facebook btn-user btn-block"> <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook -->
								<!-- 								</a> -->
							</form>
							<hr>
							<div class="text-center">
								<a class="small" href="forgotpwform.do">비밀번호 찾기</a>
							</div>
							<div class="text-center">
								<a class="small" href="loginform.do">이미 계정이 있으신가요? 로그인!</a>
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
