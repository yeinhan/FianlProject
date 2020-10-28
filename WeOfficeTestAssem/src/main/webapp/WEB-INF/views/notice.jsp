<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<link rel="shortcut icon" type="image⁄x-icon" href="./resources/resource/img/laugh-wink-regular.svg">
	<title>We Office - Notice</title>
	
	<!-- Custom fonts for this template-->
	<link href="./resources/resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	
	<!-- Custom styles for this template-->
	<link href="./resources/resource/css/sb-admin-2.min.css" rel="stylesheet">
	<link href="./resources/resource/css/style.css" rel="stylesheet">
	
	<!-- 제이쿼리 -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>

<style type="text/css">
*:focus {
	outline: none;
}
.tw-homepage-collapsible-section.\--expanded.\--due-7days .tw-homepage-collapsible-section__header {
    border-color: #4e73df;
}
.tw-homepage-collapsible-section.\--expanded.\--due-7days .tw-homepage-collapsible-section__badge {
    background-color: #4e73df;
}
.tw-homepage-collapsible-section.\--due-7days .tw-homepage-collapsible-section__badge {
    border-color: #4e73df;
}
.tw-homepage-task-row__list-style.\--due-7days {
    background-color: #4e73df;
}
.tw-homepage-task-row__due-7days-period {
    margin-right: 10px;
    color: #4e73df;
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		var date = new Date().getDate();
		var month = new Date().getMonth() + 1;
		var Month;
		if (month == 1) {
			Month = "JAN"
		} else if (month == 2) {
			Month = "FEB";
		} else if (month == 3) {
			Month = "MAR";
		} else if (month == 4) {
			Month = "APR";
		} else if (month == 5) {
			Month = "MAY";
		} else if (month == 6) {
			Month = "JUN";
		} else if (month == 7) {
			Month = "JUL";
		} else if (month == 8) {
			Month = "AUG";
		} else if (month == 9) {
			Month = "SEP";
		} else if (month == 10) {
			Month = "OCT";
		} else if (month == 11) {
			Month = "NOV";
		} else if (month == 12) {
			Month = "DEC";
		}

		document.getElementById('noticeDate').innerHTML = date;
		document.getElementById('noticeMonth').innerHTML = Month;
		
		$( '.tw-homepage-collapsible-section__header' ).click( function() {
	          $(this).parent('.tw-homepage-collapsible-section').toggleClass( '--expanded' );
	    } );
		
	})

window.onload = function() {
	var endlength = $("div[name='endPjtList']").length;
	$("#countEnd").text(endlength);
	
	var todaylength = $("div[name='todayPjtList']").length;
	$("#countToday").text(todaylength);
	
	var days7length = $("div[name='7daysPjtList']").length;
	$("#count7days").text(days7length);
}
</script>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">


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
					<div class="tw-homepage-header">
						<div class="tw-homepage-header-title ax-homepage-header-title" style="padding-top:15px; padding-bottom:35px;">
							<div class="tw-homepage-header-title__icon --all">
								<div>
									<div class="tw-homepage-header-title__month" id="noticeMonth"></div>
									<div class="tw-homepage-header-title__day" id="noticeDate"></div>
								</div>
							</div>
							<div class="tw-homepage-header-title__text">
								<span>업데이트 사항을 확인해주세요 <i class="far fa-smile" style="font-size:20px; color:black;"></i></span>
							</div>
						</div>
					</div>
					<div class="tw-homepage-stack">
						<div class="tw-homepage-stack__content">
							<div class="tw-homepage-stack__noti-section ax-homepage-stack__noti-section" data-category="today">
								<div class="tw-homepage-stack__noti-section-row-header" style="height:10px;">
<!-- 									<span class="tw-homepage-stack__noti-section-date"><span data-l10n-key="homepage.section.title.today" data-l10n-message="오늘">오늘</span></span> -->
								</div>
								<div class="tw-homepage-noti-rows"></div>
							</div>
							
							<!-- ======================================== 오늘 마감 프로젝트 ======================================== -->
							<div class="tw-homepage-stack__collapsible">
								<div class="tw-homepage-stack__divider"></div>
								<div class="tw-homepage-collapsible-section --due-today">
									<div class="tw-click-area tw-homepage-collapsible-section__header" role="button" tabindex="0">
										<div class="tw-homepage-collapsible-section__badge" id="countToday"></div>
										<div class="tw-homepage-collapsible-section__name">오늘 마감</div>
										<div class="tw-homepage-collapsible-section__right-section"></div>
									</div>
									<div class="tw-homepage-collapsible-section__content">
										<div class="tw-homepage-task-rows">
											<jsp:useBean id="now" class="java.util.Date"/>
											<c:forEach items="${pjtlist }" var="pjtdto">
												<div class="tw-homepage-task-rows__row" onclick="location.href='workspace.do?p_id='+${pjtdto.p_id}">
													<!-- 오늘 날짜 가져오기 -->
													<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowdate"/>
													<fmt:parseDate value="${nowdate }" pattern="yyyy-MM-dd" var="sysdate"/>
													<fmt:parseNumber value="${sysdate.time / (1000*60*60*24)}" integerOnly="true" var="today"/>
													
													<!-- 프로젝트 만료일 가져오기 -->
													<fmt:parseDate value="${pjtdto.p_enddate}" var="pjtEnddate" pattern="yyyy-MM-dd"/>
													<fmt:parseNumber value="${pjtEnddate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"/>
														
													<c:if test="${endDate-today == 0 }">
														<div class="tw-click-area tw-homepage-task-row" role="button" tabindex="0" name="todayPjtList">
															<div class="tw-homepage-task-row__dot">
																<div class="tw-homepage-task-row__list-style --due-today"></div>
															</div>
															<div class="tw-homepage-task-row__task">
																<div class="tw-homepage-task-row__task-title">${pjtdto.p_title }</div>
																<div class="tw-homepage-task-row__task-location">
																	<div class="tw-homepage-task-row__location">
																		<c:forEach items="${wkslist }" var="wksdto">
																			<c:if test="${pjtdto.p_id eq wksdto.p_id}">
																				<i class="far fa-folder-open"></i><span style="display:inline-block; margin-left:5px;">${wksdto.w_title }</span><br>
																			</c:if>
																		</c:forEach>
																	</div>
																</div>
															</div>
														</div>
													</c:if>
												</div>
											</c:forEach>
										</div>
										<div class="tw-homepage-collapsible-section__divider"></div>
									</div>
								</div>
							</div>
							
							<!-- ======================================== 7일 이내 마감 프로젝트 ======================================== -->
							<div class="tw-homepage-stack__collapsible">
								<div class="tw-homepage-stack__divider"></div>
								<div class="tw-homepage-collapsible-section --due-7days">
									<div class="tw-click-area tw-homepage-collapsible-section__header" role="button" tabindex="0">
										<div class="tw-homepage-collapsible-section__badge" id="count7days"></div>
										<div class="tw-homepage-collapsible-section__name">마감일 7일 이내</div>
										<div class="tw-homepage-collapsible-section__right-section"></div>
									</div>
									<div class="tw-homepage-collapsible-section__content">
										<div class="tw-homepage-task-rows">
											<c:forEach items="${pjtlist }" var="pjtdto">
												<div class="tw-homepage-task-rows__row" onclick="location.href='workspace.do?p_id='+${pjtdto.p_id}">
													<!-- 오늘 날짜 가져오기 -->
													<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowdate"/>
													<fmt:parseDate value="${nowdate }" pattern="yyyy-MM-dd" var="sysdate"/>
													<fmt:parseNumber value="${sysdate.time / (1000*60*60*24)}" integerOnly="true" var="today"/>
													
													<!-- 프로젝트 만료일 가져오기 -->
													<fmt:parseDate value="${pjtdto.p_enddate}" var="pjtEnddate" pattern="yyyy-MM-dd"/>
													<fmt:parseNumber value="${pjtEnddate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"/>
														
													<c:if test="${endDate-today > 0 && endDate-today <= 7}">
														<div class="tw-click-area tw-homepage-task-row" role="button" tabindex="0" name="7daysPjtList">
															<div class="tw-homepage-task-row__dot">
																<div class="tw-homepage-task-row__list-style --due-7days"></div>
															</div>
															<div class="tw-homepage-task-row__task">
																<div class="tw-homepage-task-row__task-title">${pjtdto.p_title }</div>
																<div class="tw-homepage-task-row__task-location">
																	<div class="tw-homepage-task-row__due-7days-period">
																		<i class="far fa-calendar-alt"></i><span style="display:inline-block; width:100px; margin-left:5px;">마감일 ${endDate-today}일 남음</span>
																	</div>
																	<div class="tw-homepage-task-row__location">
																		<c:forEach items="${wkslist }" var="wksdto">
																			<c:if test="${pjtdto.p_id eq wksdto.p_id}">
																				<i class="far fa-folder-open"></i><span style="display:inline-block; margin-left:5px;">${wksdto.w_title }</span><br>
																			</c:if>
																		</c:forEach>
																	</div>
																</div>
															</div>
														</div>
													</c:if>
												</div>
											</c:forEach>
										</div>
										<div class="tw-homepage-collapsible-section__divider"></div>
									</div>
								</div>
							</div>
							
							<!-- ======================================== 마감일 지난 프로젝트 ======================================== -->
							<div class="tw-homepage-stack__collapsible">
								<div class="tw-homepage-collapsible-section --overdue">
									<div class="tw-click-area tw-homepage-collapsible-section__header" role="button" tabindex="0">
										<div class="tw-homepage-collapsible-section__badge" id="countEnd"></div>
										<div class="tw-homepage-collapsible-section__name">마감일 지남</div>
										<div class="tw-homepage-collapsible-section__right-section"></div>
									</div>
									<div class="tw-homepage-collapsible-section__content">
										<div class="tw-homepage-task-rows">
											<c:forEach items="${pjtlist_desc }" var="pjtdto">
												<div class="tw-homepage-task-rows__row" onclick="location.href='workspace.do?p_id='+${pjtdto.p_id}">
													<!-- 오늘 날짜 가져오기 -->
													<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowdate"/>
													<fmt:parseDate value="${nowdate }" pattern="yyyy-MM-dd" var="sysdate"/>
													<fmt:parseNumber value="${sysdate.time / (1000*60*60*24)}" integerOnly="true" var="today"/>
													
													<!-- 프로젝트 만료일 가져오기 -->
													<fmt:parseDate value="${pjtdto.p_enddate}" var="pjtEnddate" pattern="yyyy-MM-dd"/>
													<fmt:parseNumber value="${pjtEnddate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"/>
													
													<c:if test="${endDate-today < 0 }">
														<div class="tw-click-area tw-homepage-task-row" role="button" tabindex="0" name="endPjtList">
															<div class="tw-homepage-task-row__dot">
																<div class="tw-homepage-task-row__list-style --overdue"></div>
															</div>
															<div class="tw-homepage-task-row__task">
																<div class="tw-homepage-task-row__task-title">${pjtdto.p_title }</div>
																<div class="tw-homepage-task-row__task-location">
																	<div class="tw-homepage-task-row__overdue-period">
																		<i class="far fa-calendar-alt"></i><span style="display:inline-block; width:100px; margin-left:5px;">마감일 ${-(endDate-today)}일 지남</span>
																	</div>
																	<div class="tw-homepage-task-row__location">
																		<c:forEach items="${wkslist }" var="wksdto">
																			<c:if test="${pjtdto.p_id eq wksdto.p_id}">
																				<i class="far fa-folder"></i><span style="display:inline-block; margin-left:5px;">${wksdto.w_title }</span><br>
																			</c:if>
																		</c:forEach>
																	</div>
																</div>
															</div>
														</div>
													</c:if>	
												</div>
											</c:forEach>
										</div>
										<div class="tw-homepage-collapsible-section__divider"></div>
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
			<%@ include file="footer.jsp"%>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->


	<!-- Scroll to Top Button-->
	<!-- Logout Modal-->
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
