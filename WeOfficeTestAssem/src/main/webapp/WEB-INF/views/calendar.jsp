<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>


<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>We Office - Calendar</title>

<!-- Custom fonts for this template-->
<link
	href="./resources/resource/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<!-- calander -->

<link rel="stylesheet"
	href="./resources/resource/vendor/calendar/css/fullcalendar.min.css" />
<link rel="stylesheet"
	href="./resources/resource/vendor/calendar/css/bootstrap.min.css">
<link rel="stylesheet"
	href='./resources/resource/vendor/calendar/css/select2.min.css' />
<link rel="stylesheet"
	href='./resources/resource/vendor/calendar/css/bootstrap-datetimepicker.min.css' />

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">


<link href="./resources/resource/css/sb-admin-2.min.css"
	rel="stylesheet">
<style type="text/css">

.fc-event, .fc-event:hover {
    color: #fff !important;
    text-decoration: none;
}

.modal.fade .modal-dialog {
	transition: transform .3s ease-out;
	transform: translate(0, 100px) !important;
}

.fade {
	opacity: 0 !important;
	-webkit-transition: opacity .15s linear;
	-o-transition: opacity .15s linear;
	transition: opacity .15s linear
}

.fade.in {
	opacity: 1 !important;
}

body {
	font-family: 'Open Sans', Arial, Helvetica, sans-serif;
}

.dropNewEvent {
	font-size: 13px;
}

.popoverTitleCalendar {
	width: 100%;
	height: 100%;
	padding: 15px 15px;
	font-size: 13px;
	border-radius: 5px 5px 0 0;
}

.popoverInfoCalendar i {
	font-size: 14px;
	margin-right: 10px;
	line-height: inherit;
	color: #d3d4da;
}

.popoverInfoCalendar p {
	margin-bottom: 1px;
}

.popoverDescCalendar {
	margin-top: 12px;
	padding-top: 12px;
	border-top: 1px solid #E3E3E3;
	overflow: hidden;
	display: -webkit-box;
	-webkit-line-clamp: 3;
	-webkit-box-orient: vertical;
}

.popover-title {
	background: transparent;
	font-weight: 600;
	padding: 0 !important;
	border: none;
}

.popover-content {
	padding: 15px 15px;
	font-size: 13px;
}

.inputModal {
	width: 65%;
	margin-bottom: 10px;
}

#contextMenu {
	position: absolute;
	display: none;
	z-index: 2;
}

#contextMenu .dropdown-menu {
	border: none;
}

.opacityWeekend {
	background-color: #f4f4fb !important;
}

.fc-avatar-image {
	top: 4px;
	left: 20px;
	height: 28px;
	width: 28px;
	border-radius: 50%;
	position: absolute;
	z-index: 2;
}

.fc-avatar-image img {
	height: 28px;
	width: 28px;
	border-radius: 50%;
}

.fc-avatar-image:before {
	content: none !important;
}

.fc-day-header {
	text-transform: uppercase;
	font-size: 13px;
	font-weight: 500;
	color: #505363;
	background-color: #FAFAFA;
	padding: 11px 0px !important;
	text-decoration: none;
}

.fc-day-header a {
	text-decoration: none !important;
	color: #505363;
}

.fc-center h2 {
	text-transform: uppercase;
	font-size: 18px;
	font-weight: 600;
	color: #505363;
	line-height: 32px;
}

.fc-toolbar.fc-header-toolbar {
	margin-bottom: 22px;
	padding-top: 22px;
}

.fc-agenda-view .fc-day-grid .fc-row .fc-content-skeleton {
	padding-bottom: 1em;
	padding-top: 1em;
}

.fc-day {
	-webkit-transition: all 0.2s linear;
	-o-transition: all 0.2s linear;
	transition: all 0.2s linear;
}

.fc-day:hover {
	background: #EEF7FF;
	cursor: pointer;
	-webkit-transition: all 0.2s linear;
	-o-transition: all 0.2s linear;
	transition: all 0.2s linear;
}

.fc-highlight {
	background: #EEF7FF;
	opacity: 0.7;
}

.fc-time-grid-event.fc-short .fc-time:before {
	content: attr(data-start);
	display: none;
}

.fc-time-grid-event.fc-short .fc-time span {
	display: inline-block;
}

.fc-time-grid-event.fc-short .fc-avatar-image {
	display: none;
	-webkit-transition: all 0.3s linear;
	-o-transition: all 0.3s linear;
	transition: all 0.3s linear;
}

.fc-time-grid .fc-bgevent, .fc-time-grid .fc-event {
	border: 1px solid #fff !important;
}

.fc-time-grid-event.fc-short .fc-content {
	padding: 4px 20px 10px 22px !important;
}

.fc-time-grid-event .fc-avatar-image {
	top: 9px;
}

.fc-event-vert {
	min-height: 22px;
}

.fc .fc-axis {
	vertical-align: middle;
	padding: 0 4px;
	white-space: nowrap;
	font-size: 10px;
	color: #505362;
	text-transform: uppercase;
	text-align: center !important;
	background-color: #fafafa;
}

.fc-unthemed .fc-event .fc-content, .fc-unthemed .fc-event-dot .fc-content
	{
	padding: 5px 10px 5px 10px;
	font-family: 'Roboto', sans-serif;
	margin-left: -1px;
	height: 100%;
	background-color: #74c0fc;
	textColor: '#000000';
}

.fc-event {
	border: none !important;
}

.fc-day-grid-event .fc-time {
	font-weight: 700;
	text-transform: uppercase;
}

.fc-unthemed .fc-day-grid td:not(.fc-axis).fc-event-container {
	/* padding: 0.2rem 0.5rem; */
	
}

.fc-unthemed .fc-content, .fc-unthemed .fc-divider, .fc-unthemed .fc-list-heading td,
	.fc-unthemed .fc-list-view, .fc-unthemed .fc-popover, .fc-unthemed .fc-row,
	.fc-unthemed tbody, .fc-unthemed td, .fc-unthemed th, .fc-unthemed thead
	{
	border-color: #DADFEA;
}

.fc-ltr .fc-h-event .fc-end-resizer, .fc-ltr .fc-h-event .fc-end-resizer:before,
	.fc-ltr .fc-h-event .fc-end-resizer:after, .fc-rtl .fc-h-event .fc-start-resizer,
	.fc-rtl .fc-h-event .fc-start-resizer:before, .fc-rtl .fc-h-event .fc-start-resizer:after
	{
	left: auto;
	cursor: e-resize;
	background: none;
}

select.filter {
	width: 500px !important;
}

.popover {
	background: #fff !important;
	color: #2E2F34;
	border: none;
	margin-bottom: 10px;
}

/*popover header*/
.popover-title {
	background: #F7F7FC;
	font-weight: 600;
	padding: 15px 15px 11px;
	border: none;
}

/*popover arrows*/
.popover.top .arrow:after {
	border-top-color: #fff;
}

.popover.right .arrow:after {
	border-right-color: #fff;
}

.popover.bottom .arrow:after {
	border-bottom-color: #fff;
}

.popover.left .arrow:after {
	border-left-color: #fff;
}

.popover.bottom .arrow:after {
	border-bottom-color: #fff;
}

.material-icons {
	font-family: 'Material Icons';
	font-weight: normal;
	font-style: normal;
	font-size: 24px;
	/* Preferred icon size */
	display: inline-block;
	line-height: 1;
	text-transform: none;
	letter-spacing: normal;
	word-wrap: normal;
	white-space: nowrap;
	direction: ltr;
	/* Support for all WebKit browsers. */
	-webkit-font-smoothing: antialiased;
	/* Support for Safari and Chrome. */
	text-rendering: optimizeLegibility;
	/* Support for Firefox. */
	-moz-osx-font-smoothing: grayscale;
	/* Support for IE. */
	-webkit-font-feature-settings: 'liga';
	font-feature-settings: 'liga';
}

#add-color, #edit-color {
	color: #d25565;
}
</style>

</head>

<body id="body-calendar">

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

					<!-- content -->

					<div class="container">

						<!-- 일자 클릭시 메뉴오픈 -->
						<div id="contextMenu" class="dropdown clearfix">
							<ul class="dropdown-menu dropNewEvent" role="menu"
								aria-labelledby="dropdownMenu"
								style="display: block; position: static; margin-bottom: 5px;">
								<li><a tabindex="-1" href="#">전체공개</a></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="#" data-role="close">Close</a></li>
							</ul>
						</div>

						<div id="wrapper">
							<div id="loading"></div>
							<div id="calendar"></div>
						</div>


						<!-- 일정 추가 MODAL -->
						<div class="modal fade" tabindex="-1" role="dialog"
							id="eventModal">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title"></h4>
									</div>
									<div class="modal-body">

										<div class="row">
											<div class="col-xs-12">
												<label class="col-xs-4" for="edit-title">일정명</label> <input
													class="inputModal" type="text" name="edit-title"
													id="edit-title" required="required" />
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12">
												<label class="col-xs-4" for="edit-start">시작</label> <input
													class="inputModal" type="text" name="edit-start"
													id="edit-start" />
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12">
												<label class="col-xs-4" for="edit-end">끝</label> <input
													class="inputModal" type="text" name="edit-end"
													id="edit-end" />
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12">
												<label class="col-xs-4" for="edit-type">구분</label> <select
													class="inputModal" type="text" name="edit-type"
													id="edit-type">
													<option value="카테고리1">전체공개</option>
												</select>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12">
												<label class="col-xs-4" for="edit-desc">설명</label>
												<textarea rows="4" cols="50" class="inputModal"
													name="edit-desc" id="edit-desc"></textarea>
											</div>
										</div>
									</div>
									<div class="modal-footer modalBtnContainer-addEvent">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">취소</button>
										<button type="button" class="btn btn-primary" id="save-event">저장</button>
									</div>
									<div class="modal-footer modalBtnContainer-modifyEvent">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">닫기</button>
										<button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
										<button type="button" class="btn btn-primary" id="updateEvent">저장</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- /.modal -->


					</div>
					<!-- /.container -->

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
		<script
			src="./resources/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Core plugin JavaScript-->
		<script
			src="./resources/resource/vendor/jquery-easing/jquery.easing.min.js"></script>

		<!-- Custom scripts for all pages-->
		<!-- calander -->
		<script src="./resources/resource/vendor/calendar/js/jquery.min.js"></script>
		<script src="./resources/resource/vendor/calendar/js/bootstrap.min.js"></script>
		<script src="./resources/resource/vendor/calendar/js/moment.min.js"></script>
		<script
			src="./resources/resource/vendor/calendar/js/fullcalendar.min.js"></script>
		<script src="./resources/resource/vendor/calendar/js/ko.js"></script>
		<script src="./resources/resource/vendor/calendar/js/select2.min.js"></script>
		<script
			src="./resources/resource/vendor/calendar/js/bootstrap-datetimepicker.min.js"></script>
		<script src="./resources/resource/js/calendar/main.js"></script>
		<script src="./resources/resource/js/calendar/addEvent.js"></script>
		<script src="./resources/resource/js/calendar/editEvent.js"></script>
		<script src="./resources/resource/js/calendar/etcSetting.js"></script>


		<script src="./resources/resource/js/sb-admin-2.min.js"></script>
</body>

</html>
