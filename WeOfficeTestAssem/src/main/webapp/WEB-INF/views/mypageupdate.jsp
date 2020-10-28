<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<link rel="shortcut icon" type="image⁄x-icon" href="./resources/resource/img/laugh-wink-regular.svg">
<title>We Office - MyPage</title>


<!-- Custom fonts for this template-->
<link href="./resources/resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="./resources/resource/css/sb-admin-2.min.css" rel="stylesheet">
<link href="./resources/resource/css/style.css" rel="stylesheet">

<!-- 제이쿼리 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- 아임포트 -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

</head>

<style>
.selNumArea {
	margin-top: 10px;
}

.selectmonth {
	border: 1px solid #d1d3e2;
	width: 165px;
	height: 60px;
	margin: 0px;
	padding: 15px;
	line-height: 60px;
	font-size: 13px;
	text-align: center;
	color: #5a5c69;
	font-weight: bold;
	display: flex;
	align-items: center;
	float: left;
}

.selectmonth input { 
 	display: flex; 
 	align-items: center;
    z-index: 999;
}

.selectnum {
	width: 100px;
	height: 25px;
	font-size: 14px;
	border: 1px solid #b7b9cc;
}

#paybtn, #selectBtn {
	margin-top: 15px;
	width: 112px;
	height: 38px;
	font-size: 13px;
	float: right;
}
</style>

<script type="text/javascript">
window.onload = function() {
	var IMP = window.IMP;
	IMP.init('imp36049149');
}

function radioBtnSelect(val) {
	if(val == "10000") {
		$("#1mon-parent").css("background-color","#eaecf4");
		$("#3mon-parent, #6mon-parent, #12mon-parent").css("background-color","white");
	} else if(val == "27000") {
		$("#3mon-parent").css("background-color","#eaecf4");
		$("#1mon-parent, #6mon-parent, #12mon-parent").css("background-color","white");
	} else if(val == "51000") {
		$("#6mon-parent").css("background-color","#eaecf4");
		$("#3mon-parent, #1mon-parent, #12mon-parent").css("background-color","white");
	} else if(val == "96000") {
		$("#12mon-parent").css("background-color","#eaecf4");
		$("#3mon-parent, #6mon-parent, #1mon-parent").css("background-color","white");
	}
}

function payPopup() {
// 결제창
	var payOpt = $("input[type=radio]:checked").val();			// 선택요금
	var month = $("input[type=radio]:checked").attr("id");		// 결제개월
	var num = $(".selectnum option:selected").val();			// 결제인원
	
	if(payOpt==null || payOpt=="") {
		alert("결제 옵션을 선택해주세요.");
	} else {
		IMP.request_pay({
		    pg: "inicis",
		    pay_method: "card",
		    merchant_uid: "merchant_" + new Date().getTime(),
		    name: "WeOffice_payment",
		    //amount: payOpt*num,
		    amount: "100",
		    buyer_name: "${login_user.name}",
		    buyer_email: "${login_user.email}"
		}, function(rsp) {
		    if (rsp.success) {
				paymentInsert(month, num, payOpt*num);	// payment db삽입
				var msg = "결제가 완료되었습니다. ";
		    } else {
		        var msg = "결제를 취소하셨습니다. ";
		    }
		    alert(msg);
		});
	}
}

function paymentInsert(months, number, amount) {
	var insertPay = {
		"user_num":"${login_user.user_num}",
		"name":"${login_user.name}",
		"p_months":months,
		"p_number":number,
		"p_amount":amount
	};

	$.ajax({
		type: "post",
		url: "payinsert.do",
		data: JSON.stringify(insertPay),
		contentType: "application/json",
		dataType: "json", 
		success: function(msg) {
			if(msg.check == true) {
			}
		},
		error: function() {
			alert("실패");
		}
	});
}

function selectMember(num, pay_user) {
	window.open('selmem_popup.do?num='+num+'&pay_user='+pay_user, '_blank', 'left='+(screen.availWidth-400)/2+',top='+(screen.availHeight-500)/2+', width=400px,height=500px');
}

</script>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="./menu_side.jsp"%>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<%@ include file="./top_nav.jsp"%>
				<!-- End of Topbar -->
						

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">My Page</h1>

					</div>

					<div class="row">

						<!-- Area Chart -->
						<div class="col-xl-8 col-lg-7" style="min-width: 41%">
							<div class="card shadow mb-4">
								<!-- Card Header - Dropdown -->


								<!-- 회원정보  -->
								<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">회원정보</h6>
									<div class="dropdown no-arrow"></div>
								</div>


								<!-- Card Body -->
								<div class="card-body">
									<div class="chart-area">
										<form class="user" method="post" action="">
											<div class="form-group">
												<label class="tw-account-settings-pane-label"><span data-l10n-key="user_settings.profile_pane.profile.first_name" data-l10n-message="이름">이름</span></label> <input type="text" class="form-control form-control-user" id="Name" placeholder="Name">
												<p class="tw-profile-setting__input-helper">
													<span data-l10n-key="user_settings.profile_pane.profile.first_last_name_help" data-l10n-message="팀원들이 본인을 알아볼 수 있도록 도와주세요.">팀원들이 본인을 알아볼 수 있도록 도와주세요.</span>
												</p>
											</div>
											<div class="form-group">
												<label class="tw-account-settings-pane-label"><span data-l10n-key="user_settings.profile_pane.profile.first_name" data-l10n-message="부서">부서</span></label> <input type="text" class="form-control form-control-user" id="Department" placeholder="Department">
												<p class="tw-profile-setting__input-helper">
													<span data-l10n-key="user_settings.profile_pane.profile.department_help" data-l10n-message="부서명으로 본인을 찾을 수 있도록 도와주세요. 예) 디자인팀">부서명으로 본인을 찾을 수 있도록 도와주세요. 예) 디자인팀</span>
												</p>
											</div>
											<div class="form-group">
												<label class="tw-account-settings-pane-label"><span data-l10n-key="user_settings.profile_pane.profile.first_name" data-l10n-message="팀">팀</span></label> <input type="text" class="form-control form-control-user" id="JabTitle" placeholder="JopTitle">
												<p class="tw-profile-setting__input-helper">
													<span data-l10n-key="user_settings.profile_pane.profile.job_title_help" data-l10n-message="자신이 무엇을 하는지 팀원들에게 알려주세요. 예) 웹디자이너">자신이 무엇을 하는지 팀원들에게 알려주세요. 예) 웹디자이너</span>
												</p>
											</div>
											<div class="form-group">
												<label class="tw-account-settings-pane-label"><span data-l10n-key="user_settings.profile_pane.profile.first_name" data-l10n-message="전화번호">전화번호</span></label> <input type="text" class="form-control form-control-user" id="Phone" placeholder="Phone">
												<p class="tw-profile-setting__input-helper">
													<span data-l10n-key="user_settings.profile_pane.profile.phone_help" data-l10n-message="팀원들이 본인에게 연락할 수 있도록 도와주세요">팀원들이 본인에게 연락할 수 있도록 도와주세요</span>
												</p>
											</div>
											<div class="form-group">
												<label class="tw-account-settings-pane-label"><span data-l10n-key="user_settings.profile_pane.profile.first_name" data-l10n-message="이메일">이메일</span></label> <input type="email" class="form-control form-control-user" id="exampleInputEmail" placeholder="Email Address">
											</div>

											<div class="form-group">
												<label class="tw-account-settings-pane-label"><span data-l10n-key="user_settings.profile_pane.profile.first_name" data-l10n-message="주소">주소</span></label> <input type="text" class="form-control form-control-user" id="Address" placeholder="Address">
												<p class="tw-profile-setting__input-helper">
													<span data-l10n-key="user_settings.profile_pane.profile.address_help" data-l10n-message="팀원들이 본인을 지도에서 찾을 수 있도록 도와주세요!">팀원들이 본인을 지도에서 찾을 수 있도록 도와주세요!</span>
												</p>
											</div>

											<button href="#" class="mypage-btn btn btn-danger btn-icon-split" style="float: right;">
												<span class="text mypage-btn">회원 탈퇴하기 </span>
											</button>
											<button type="submit" href="#" class="btn btn-primary btn-icon-split" style="float: right; margin-right: 10px;">
												<span class="text mypage-btn">회원정보 변경 </span>
											</button>
										</form>

									</div>
								</div>
							</div>
						</div>


						<!-- 버튼-->
						<!-- Pie Chart -->
						<div class="col-xl-4 col-lg-5" style="max-width: 55%">
							<div class="card shadow mb-4">

								<!-- Cart Header -->
								<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">비밀번호 변경</h6>
									<div class="dropdown no-arrow"></div>
								</div>
								<!-- Card Body -->
								<div class="card-body">
									<div class="chart-area pt-4 pb-2">
										<form method="post" action="" class="user">
											<div class="form-group">
												<div class="col-sm-6 mb-3 mb-sm-0" style="max-width: 100%;">
													<input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">
												</div>
												<div class="my-2"></div>
												<div class="col-sm-6" style="max-width: 100%;">
													<input type="password" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Repeat Password">
												</div>
											</div>
											<div class="my-2"></div>
											<input type="submit" class="btn btn-success btn-icon-split" value="비밀번호 변경" style="width: 112px; height: 38px; font-size: 13px; float: right;">
										</form>
									</div>
								</div>
							</div>
							
							
							<!-- 결제 : 로그인 안되었을 경우 출력 x -->
							<c:choose>
								<c:when test="${empty login_user }">
								</c:when>
								<c:otherwise>
									<div class="card shadow mb-4">
										<!-- Cart Header -->
										<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
											<h6 class="m-0 font-weight-bold text-primary">결제하기</h6>
										</div>
										<!-- Card Body -->
										<div class="card-body">
											<form method="post" action="">
												<div class="selMonthArea" style="padding:10px;">
													<label class="tw-account-settings-pane-label">이용기간</label>
													<div class="selectmonth" id="1mon-parent" style="padding-left:22px;">
														<input type="radio" value="10000" name="paymonth" id="1" onclick="radioBtnSelect(this.value);" required ><label for="1" style="margin-bottom:0rem;">&nbsp; &#8361;10,000 / 1개월</label>
													</div>
													<div class="selectmonth" id="3mon-parent" style="padding-left:22px;">
														<input type="radio" value="27000" name="paymonth" id="3" onclick="radioBtnSelect(this.value);" required ><label for="3" style="margin-bottom:0rem;">&nbsp; &#8361;27,000 / 3개월</label>													
													</div>
													<div class="selectmonth" id="6mon-parent" style="padding-left:22px;">
														<input type="radio" value="51000" name="paymonth" id="6" onclick="radioBtnSelect(this.value);" required ><label for="6" style="margin-bottom:0rem;">&nbsp; &#8361;51,000 / 6개월</label>
													</div>
													<div class="selectmonth" id="12mon-parent" style="padding-left:20px;">
														<input type="radio" value="96000" name="paymonth" id="12" onclick="radioBtnSelect(this.value);" required ><label for="12" style="margin-bottom:0rem;">&nbsp; &#8361;96,000 / 12개월</label>													
													</div>
												</div>
												<br><br><br><br><br>
												
												<div class="selNumArea" style="padding:10px;">
													<label class="tw-account-settings-pane-label">참여멤버 수</label>
													<select class="selectnum">
														<c:forEach var="i" begin="1" end="${count_user }" step="1">
															<option value="${i }"><c:out value="${i }"/></option>
														</c:forEach>
													</select>
												</div>
												
												<div class="btnArea">
													<input type="button" class="btn btn-info btn-icon-split" id="paybtn" style="width:100px;" value="결제" onclick="payPopup();">										
													<c:choose>
														<c:when test="${empty payment_user }">
														</c:when>
														<c:otherwise>
															<input type='button' class='btn btn-warning btn-icon-split' id='selectBtn' style='width:100px; margin-right:10px;' value='멤버선택'
																	onclick='selectMember(${payment_user.p_number }, ${payment_user.user_num });' />
														</c:otherwise>
													</c:choose>
												</div>
											</form>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
							<!-- 결제 끝 -->
						</div>
					</div>
					

					<!-- Content Row -->
					<div class="row">

						<!-- 예약조회 -->

						<div class="col-lg-8 mb-7">

							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">예약조회</h6>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
											<thead>
												<tr>
													<th>예약자명</th>
													<th>회의 제목</th>
													<th>프로젝트</th>
													<th>인원수</th>
													<th>예약일</th>
													<th>예약금액</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>Tiger Nixon</td>
													<td>System Architect</td>
													<td>Edinburgh</td>
													<td>61</td>
													<td>2011/04/25</td>
													<td>$320,800</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>

						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->
			
			

			<!-- Footer -->
			<%@ include file="./footer.jsp"%>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->
	</div>

	<%@ include file="./logout.jsp"%>

	<!-- Bootstrap core JavaScript-->
	<script src="./resources/resource/vendor/jquery/jquery.min.js"></script>
	<script src="./resources/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="./resources/resource/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="./resources/resource/js/sb-admin-2.min.js"></script>
</body>

</html>