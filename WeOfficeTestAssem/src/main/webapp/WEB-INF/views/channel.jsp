<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<link rel="shortcut icon" type="image⁄x-icon" href="./resources/resource/img/laugh-wink-regular.svg">
<title>We Office - Main</title>

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
		var sBtn = $("#content > div > main > aside.channels > section > ul");
		sBtn.find("li").click(function() {
			sBtn.removeClass("active");
			$(this).addClass("active");
		})
	})

	$(function() {
		var mBtn = $("#content > div > main > aside.channels > section");
		mBtn.fint("header").click(function() {
			$("#test_modal").modal();

		})
	})
	const Chat = (function() {
		const myName = "blue";

		// init 함수
		function init() {
			// enter 키 이벤트
			$(document).on('keydown', 'div.input-div ', function(e) {
				if (e.keyCode == 13 && !e.shiftKey) {
					e.preventDefault();
					const message = $(this).val();

					// 메시지 전송
					sendMessage(message);
					// 입력창 clear
					clearTextarea();
				}
			});
		}

		// 메세지 태그 생성
		function createMessageTag(LR_className, senderName, message) {
			// 형식 가져오기
			let chatLi = $('div.chat.format ul li').clone();

			// 값 채우기
			chatLi.addClass(LR_className);
			chatLi.find('.sender span').text(senderName);
			chatLi.find('.message span').text(message);

			return chatLi;
		}

		// 메세지 태그 append
		function appendMessageTag(LR_className, senderName, message) {
			const chatLi = createMessageTag(LR_className, senderName, message);

			$('div.chat:not(.format) ul').append(chatLi);

			// 스크롤바 아래 고정
			$('div.chat').scrollTop($('div.chat').prop('scrollHeight'));
		}

		// 메세지 전송
		function sendMessage(message) {
			// 서버에 전송하는 코드로 후에 대체
			const data = {
				"senderName" : "blue",
				"message" : message
			};

			// 통신하는 기능이 없으므로 여기서 receive
			resive(data);
		}

		// 메세지 입력박스 내용 지우기
		function clearTextarea() {
			$('div.input-div textarea').val('');
		}

		// 메세지 수신
		function resive(data) {
			const LR = (data.senderName != myName) ? "left" : "right";
			appendMessageTag("right", data.senderName, data.message);
		}

		return {
			'init' : init
		};
	})();

	$(function() {
		Chat.init();
	});
	
	//모달
	 $("#myButtons1").click(function(){
           alert('AJAX로 처리하고 정상 응답이면.. hide 해 준다.');
     $('#myModal').modal('hide')
        });

</script>


<style type="text/css">
@import url("https://fonts.googleapis.com/css?family=Roboto:300,500,700");

.container, .container-fluid, .container-lg, .container-md, .container-sm, .container-xl {
	padding-left: 0 !important;
	padding-right: 0 !important;
}

* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

*:focus {
	outline: 0;
}

html, body {
	background: #121416;
	color: #FFF;
	font-size: 16px;
	font-family: "Roboto";
}
</style>


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

					<main class="container-channel">


						<aside class="servers">
							<div class="servers-collection">
								<div class="server focusable server-friends unread" role="button" aria-label="Friends unread">
									<div class="server-icon">
										<svg>
						<use xlink:href="#icon-friends" /></svg>
									</div>
								</div>
							</div>

							<div class="servers-collection">
								<div class="server focusable unread" role="button" aria-label="Discord Developers unread">
									<div class="server-icon">
										<img src="https://cdn.discordapp.com/icons/41771983423143937/edc44e98a690a1f76c5ddec68a0a6b9e.png" />
									</div>
								</div>
							</div>

							<div class="servers-collection">
								<div class="server focusable active" role="button" aria-label="My Server" aria-selected="true">
									<div class="server-icon">
										<img src="https://discordapp.com/assets/0e291f67c9274a1abdddeb3fd919cbaa.png" />
									</div>
								</div>
							</div>
						</aside>

						<aside class="channels">
							<header class="channels-header focusable">
								<h3 role="header" class="channels-header-name">My Server</h3>
								<svg role="button" aria-label="Dropdown" class="channels-header-dropdown">
				<use xlink:href="#icon-dropdown" /></svg>
							</header>

							<section class="channels-list">
								<header class="channels-list-header focusable" data-toggle="modal" data-target="#myModal">
									<h5>Text Channels</h5>
								</header>

								<ul class="channels-list-text">
									<li class="channel focusable channel-text"><span class="channel-name">general</span>
										<button class="button" role="button" aria-label="Invite">
											<svg>
							<use xlink:href="#icon-invite" /></svg>
										</button>
										<button class="button" role="button" aria-label="settings">
											<svg>
							<use xlink:href="#icon-channel-settings" /></svg>
										</button></li>

									<li class="channel focusable channel-text"><span class="channel-name">help</span>
										<button class="button" role="button" aria-label="Invite">
											<svg>
							<use xlink:href="#icon-invite" /></svg>
										</button>
										<button class="button" role="button" aria-label="settings">
											<svg>
							<use xlink:href="#icon-channel-settings" /></svg>
										</button></li>
									<li class="channel focusable channel-text"><span class="channel-name">general</span>
										<button class="button" role="button" aria-label="Invite">
											<svg>
							<use xlink:href="#icon-invite" /></svg>
										</button>
										<button class="button" role="button" aria-label="settings">
											<svg>
							<use xlink:href="#icon-channel-settings" /></svg>
										</button></li>

									<li class="channel focusable channel-text"><span class="channel-name">help</span>
										<button class="button" role="button" aria-label="Invite">
											<svg>
							<use xlink:href="#icon-invite" /></svg>
										</button>
										<button class="button" role="button" aria-label="settings">
											<svg>
							<use xlink:href="#icon-channel-settings" /></svg>
										</button></li>
								</ul>
								</ul>

								<header class="channels-list-header focusable">
									<h5>Voice Channels</h5>
								</header>

								<ul class="channels-list-text">
									<li class="channel focusable channel-text"><span class="channel-name">voice channel1</span>
										<button class="button" role="button" aria-label="Invite">
											<svg>
							<use xlink:href="#icon-invite" /></svg>
										</button>
										<button class="button" role="button" aria-label="settings">
											<svg>
							<use xlink:href="#icon-channel-settings" /></svg>
										</button></li>

									<li class="channel-avatar"><span class="username">인간1</span></li>

									<li class="channel focusable channel-text"><span class="channel-name">voice channel2</span>
										<button class="button" role="button" aria-label="Invite">
											<svg>
							<use xlink:href="#icon-invite" /></svg>
										</button>
										<button class="button" role="button" aria-label="settings">
											<svg>
							<use xlink:href="#icon-channel-settings" /></svg>
										</button></li>
								</ul>



							</section>

							<footer class="channels-footer">
								<img class="avatar" alt="Avatar" src="https://discordapp.com/assets/0e291f67c9274a1abdddeb3fd919cbaa.png" />
								<div class="channels-footer-details">
									<span class="username">yourself</span> <span class="tag">#0001</span>
								</div>
								<div class="channels-footer-controls button-group">
									<button role="button" aria-label="Mute" class="button button-mute">
										<svg>
						<use xlink:href="#icon-mute" /></svg>
									</button>
									<button role="button" aria-label="Deafen" class="button button-deafen">
										<svg>
						<use xlink:href="#icon-deafen" /></svg>
									</button>
									<button role="button" aria-label="Settings" class="button button-settings">
										<svg>
						<use xlink:href="#icon-settings" /></svg>
									</button>
								</div>
							</footer>
						</aside>

						<div class="vert-container">
							<menu type="toolbar" class="menu">
								<h2 class="menu-name">general</h2>
							</menu>


							<section class="chat">
								<!-- 								<ul> -->
								<!-- 									<li> -->
								<!-- 										<div class="channels-footer-details"> -->
								<!-- 											<span class="username">yourself</span> : 알아서하세요~ -->
								<!-- 										</div> -->
								<!-- 									</li> -->
								<!-- 								</ul> -->
								<div class="chat_wrap">
									<div class="header">CHAT</div>
									<div class="chat">
										<ul>
											<!-- 동적 생성 -->
										</ul>
									</div>
									<div class="input-div">
										<textarea placeholder="Press Enter for send message."></textarea>
									</div>

									<!-- format -->

									<div class="chat format">
										<ul>
											<li>
												<div class="sender">
													<span></span>
												</div>
												<div class="message">
													<span></span>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</section>


						</div>
					</main>

					<!-- ICONS -->
					<svg id="icon-friends" viewBox="-289 382 32 27.1">
	<style id="style3">
.st0 {
	fill: #FFFFFF;
}

.st1 {
	opacity: 0.6;
}
</style>
	<g id="g4145" fill="#fff">
		<path id="path5" d="M-273 409.1c-4.1 0-6.8-.6-7.9-1.7-.5-.6-.6-1.1-.6-1.3 0-.7.1-2.9.6-3.8.1-.3.5-1 4.5-2.4-1.6-1.4-2.6-4-2.6-7.1 0-4.2 2.3-7 5.9-7.1h.1c3.6.1 5.9 2.8 5.9 7.1 0 3.1-1 5.7-2.6 7.1 4 1.4 4.4 2.1 4.5 2.4.4.9.5 3.1.6 3.8 0 .2 0 .7-.6 1.3-1.1 1.1-3.7 1.7-7.8 1.7zm0-2c5.1 0 6.2-.9 6.4-1.1-.1-1.1-.2-2.3-.3-2.7-.6-.4-2.9-1.3-4.8-1.9l-.7-.2-.1-2 .7-.3c1.7-.6 2.8-3.1 2.8-6.1 0-3.1-1.5-5-3.9-5.1-2.5 0-4 2-4 5.1 0 3 1.1 5.5 2.8 6.1l.7.3-.1 2-.7.2c-1.9.6-4.2 1.5-4.8 1.9-.1.4-.3 1.6-.3 2.7.1.2 1.3 1.1 6.3 1.1z" class="st0" />
		<g id="g7" class="st1" opacity=".6">
			<path id="path9" d="M-257 402.4c0-.7-.1-2.9-.6-3.8-.1-.3-.5-1-4.5-2.4 1.6-1.4 2.6-4 2.6-7.1 0-4.2-2.3-7-5.9-7.1h-.1c-1.9 0-3.5.8-4.5 2.2.6.3 1.2.6 1.8 1 .7-.8 1.6-1.3 2.8-1.3 2.4 0 3.9 2 3.9 5.1 0 3-1.1 5.5-2.8 6.1l-.7.3.1 2 .7.2c1.9.6 4.3 1.5 4.8 1.9.1.4.3 1.6.3 2.7-.2.2-1 .8-3.8 1 .1.6.2 1.2.2 2 2.5-.2 4.2-.8 5-1.6.7-.5.7-1 .7-1.2z" class="st0" />
			<path id="path11" d="M-287 402.3c.1-1.1.2-2.3.3-2.7.6-.4 2.9-1.3 4.8-1.9l.7-.2.1-2-.7-.3c-1.6-.6-2.8-3.1-2.8-6.1 0-3.1 1.5-5 4-5.1 1.2 0 2.1.5 2.8 1.3.5-.4 1.1-.8 1.8-1-1-1.4-2.6-2.2-4.5-2.2h-.1c-3.6 0-5.9 2.8-5.9 7.1 0 3.1 1 5.7 2.6 7.1-4 1.4-4.4 2.1-4.5 2.4-.4.9-.5 3.1-.6 3.8 0 .2 0 .7.6 1.3.8.9 2.5 1.4 5.1 1.6 0-.7.1-1.4.2-2-2.9-.3-3.7-.9-3.9-1.1z" class="st0" />
		</g>
	</g>
</svg>

					<svg id="icon-mute" viewBox="0 0 16 16">
	<path fill="#5D6063" d="M12.5,8v1c0,2.2-1.8,4-4,4h-1c-2.2,0-4-1.8-4-4V8h-1v1 c0,2.8,2.2,5,5,5v1H7c-0.3,0-0.5,0.2-0.5,0.5C6.5,15.8,6.7,16,7,16h2c0.3,0,0.5-0.2,0.5-0.5C9.5,15.2,9.3,15,9,15H8.5v-1 c2.8,0,5-2.2,5-5V8H12.5z M8,12c1.9,0,3.5-1.6,3.5-3.5v-5C11.5,1.6,9.9,0,8,0C6.1,0,4.5,1.6,4.5,3.5v5C4.5,10.4,6.1,12,8,12z M5.5,3.5C5.5,2.1,6.6,1,8,1c1.4,0,2.5,1.1,2.5,2.5v5C10.5,9.9,9.4,11,8,11c-1.4,0-2.5-1.1-2.5-2.5V3.5z" /></svg>

					<svg id="icon-deafen" viewBox="0 0 16 16">
	<path fill="#5D6063" d="M15.9,9C16,8.7,16,8.3,16,8c0-4.4-3.6-8-8-8C3.6,0,0,3.6,0,8 c0,0.3,0,0.7,0.1,1h0C0,9.2,0,9.3,0,9.5v4C0,14.3,0.7,15,1.5,15h2C4.3,15,5,14.3,5,13.5v-4C5,8.7,4.3,8,3.5,8h-2 C1.3,8,1.2,8,1,8.1C1,8.1,1,8,1,8c0-3.9,3.1-7,7-7c3.9,0,7,3.1,7,7c0,0,0,0.1,0,0.1C14.8,8,14.7,8,14.5,8h-2C11.7,8,11,8.7,11,9.5 v4c0,0.8,0.7,1.5,1.5,1.5h2c0.8,0,1.5-0.7,1.5-1.5v-4C16,9.3,16,9.2,15.9,9L15.9,9z M1.5,9h2C3.8,9,4,9.2,4,9.5v4 C4,13.8,3.8,14,3.5,14h-2C1.2,14,1,13.8,1,13.5v-4C1,9.2,1.2,9,1.5,9z M15,13.5c0,0.3-0.2,0.5-0.5,0.5h-2c-0.3,0-0.5-0.2-0.5-0.5 v-4C12,9.2,12.2,9,12.5,9h2C14.8,9,15,9.2,15,9.5V13.5z" /></svg>

					<svg id="icon-settings" viewBox="0 0 16 16">
	<path fill="#5D6063"
							d="M8,5C6.3,5,5,6.3,5,8c0,1.7,1.3,3,3,3c1.7,0,3-1.3,3-3 C11,6.3,9.7,5,8,5z M8,10c-1.1,0-2-0.9-2-2c0-1.1,0.9-2,2-2s2,0.9,2,2C10,9.1,9.1,10,8,10z M16,8c0-1-0.8-1.9-1.8-2 c-0.1-0.3-0.3-0.7-0.4-1c0.7-0.8,0.6-1.9-0.1-2.7c-0.7-0.7-1.9-0.8-2.7-0.1c-0.3-0.2-0.6-0.3-1-0.4C9.9,0.8,9,0,8,0 C7,0,6.1,0.8,6,1.8C5.7,1.9,5.3,2.1,5,2.2C4.2,1.6,3.1,1.6,2.3,2.3C1.6,3.1,1.6,4.2,2.2,5C2.1,5.3,1.9,5.7,1.8,6C0.8,6.1,0,7,0,8 c0,1,0.8,1.9,1.8,2c0.1,0.3,0.3,0.7,0.4,1c-0.7,0.8-0.6,1.9,0.1,2.7c0.7,0.7,1.9,0.8,2.7,0.1c0.3,0.2,0.6,0.3,1,0.4 C6.1,15.2,7,16,8,16c1,0,1.9-0.8,2-1.8c0.3-0.1,0.7-0.3,1-0.4c0.8,0.7,1.9,0.6,2.7-0.1c0.7-0.7,0.8-1.9,0.1-2.7 c0.2-0.3,0.3-0.6,0.4-1C15.2,9.9,16,9,16,8z M13.4,9c-0.1,0.8-0.5,1.5-0.9,2.1l0.4,0.4c0.4,0.4,0.4,1,0,1.4c-0.4,0.4-1,0.4-1.4,0 l-0.4-0.4C10.5,13,9.8,13.3,9,13.4V14c0,0.6-0.4,1-1,1c-0.6,0-1-0.4-1-1v-0.6c-0.8-0.1-1.5-0.5-2.1-0.9l-0.4,0.4 c-0.4,0.4-1,0.4-1.4,0c-0.4-0.4-0.4-1,0-1.4l0.4-0.4C3,10.5,2.7,9.8,2.6,9H2C1.4,9,1,8.6,1,8c0-0.6,0.4-1,1-1h0.6 C2.7,6.2,3,5.5,3.5,4.9L3.1,4.5c-0.4-0.4-0.4-1,0-1.4c0.4-0.4,1-0.4,1.4,0l0.4,0.4C5.5,3,6.2,2.7,7,2.6V2c0-0.6,0.4-1,1-1 c0.6,0,1,0.4,1,1v0.6c0.8,0.1,1.5,0.5,2.1,0.9l0.4-0.4c0.4-0.4,1-0.4,1.4,0c0.4,0.4,0.4,1,0,1.4l-0.4,0.4C13,5.5,13.3,6.2,13.4,7 H14c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1H13.4z" /></svg>

					<svg id="icon-dropdown" viewBox="0 0 18 18">
	<style>
.dd {
	stroke: #ABADAF;
	stroke-width: 2px;
	stroke-dashoffset: 1;
	stroke-dasharray: inherit
}
</style>
	<path class="dd" stroke="#FFF" d="M4.5 4.5l9 9" stroke-linecap="round"></path>
	<path class="dd" stroke="#FFF" d="M13.5 4.5l-9 9" stroke-linecap="round"></path>
</svg>

					<svg id="icon-invite" viewBox="0 0 16 16">
	<path fill="#fff" d="M6.3,3.4L8,1.7v9.8C8,11.8,8.2,12,8.5,12C8.8,12,9,11.8,9,11.5V1.7l1.7,1.7c0.2,0.2,0.5,0.2,0.7,0c0.2-0.2,0.2-0.5,0-0.7L8.9,0.2c0,0,0,0,0-0.1C8.8,0,8.6,0,8.5,0c0,0,0,0,0,0c0,0,0,0,0,0C8.4,0,8.2,0,8.1,0.1c0,0,0,0,0,0.1L5.6,2.7c-0.2,0.2-0.2,0.5,0,0.7C5.8,3.5,6.1,3.5,6.3,3.4z M14,4h-1.5v1h1C13.8,5,14,5.2,14,5.5v9c0,0.3-0.2,0.5-0.5,0.5h-10C3.2,15,3,14.8,3,14.5v-9C3,5.2,3.2,5,3.5,5h1V4H3C2.4,4,2,4.4,2,5v10c0,0.6,0.4,1,1,1h11c0.6,0,1-0.4,1-1V5C15,4.4,14.6,4,14,4z" /></svg>

					<svg id="icon-channel-settings" viewBox="0 0 16 16">
	<path fill="#fff"
							d="M8,5C6.3,5,5,6.3,5,8c0,1.7,1.3,3,3,3c1.7,0,3-1.3,3-3 C11,6.3,9.7,5,8,5z M8,10c-1.1,0-2-0.9-2-2c0-1.1,0.9-2,2-2s2,0.9,2,2C10,9.1,9.1,10,8,10z M16,8c0-1-0.8-1.9-1.8-2 c-0.1-0.3-0.3-0.7-0.4-1c0.7-0.8,0.6-1.9-0.1-2.7c-0.7-0.7-1.9-0.8-2.7-0.1c-0.3-0.2-0.6-0.3-1-0.4C9.9,0.8,9,0,8,0 C7,0,6.1,0.8,6,1.8C5.7,1.9,5.3,2.1,5,2.2C4.2,1.6,3.1,1.6,2.3,2.3C1.6,3.1,1.6,4.2,2.2,5C2.1,5.3,1.9,5.7,1.8,6C0.8,6.1,0,7,0,8 c0,1,0.8,1.9,1.8,2c0.1,0.3,0.3,0.7,0.4,1c-0.7,0.8-0.6,1.9,0.1,2.7c0.7,0.7,1.9,0.8,2.7,0.1c0.3,0.2,0.6,0.3,1,0.4 C6.1,15.2,7,16,8,16c1,0,1.9-0.8,2-1.8c0.3-0.1,0.7-0.3,1-0.4c0.8,0.7,1.9,0.6,2.7-0.1c0.7-0.7,0.8-1.9,0.1-2.7 c0.2-0.3,0.3-0.6,0.4-1C15.2,9.9,16,9,16,8z M13.4,9c-0.1,0.8-0.5,1.5-0.9,2.1l0.4,0.4c0.4,0.4,0.4,1,0,1.4c-0.4,0.4-1,0.4-1.4,0 l-0.4-0.4C10.5,13,9.8,13.3,9,13.4V14c0,0.6-0.4,1-1,1c-0.6,0-1-0.4-1-1v-0.6c-0.8-0.1-1.5-0.5-2.1-0.9l-0.4,0.4 c-0.4,0.4-1,0.4-1.4,0c-0.4-0.4-0.4-1,0-1.4l0.4-0.4C3,10.5,2.7,9.8,2.6,9H2C1.4,9,1,8.6,1,8c0-0.6,0.4-1,1-1h0.6 C2.7,6.2,3,5.5,3.5,4.9L3.1,4.5c-0.4-0.4-0.4-1,0-1.4c0.4-0.4,1-0.4,1.4,0l0.4,0.4C5.5,3,6.2,2.7,7,2.6V2c0-0.6,0.4-1,1-1 c0.6,0,1,0.4,1,1v0.6c0.8,0.1,1.5,0.5,2.1,0.9l0.4-0.4c0.4-0.4,1-0.4,1.4,0c0.4,0.4,0.4,1,0,1.4l-0.4,0.4C13,5.5,13.3,6.2,13.4,7 H14c0.6,0,1,0.4,1,1c0,0.6-0.4,1-1,1H13.4z" /></svg>











				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!------------------------------------------------------------------------------------------------>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-sm"><!--  큰창:<div class="modal-dialog modal-lg"> 작은창 :<div class="modal-dialog modal-sm">  -->
      <div class="modal-content">
         <div class="modal-header">
         <h4 class="modal-title" id="myModalLabel">
              	Text채널
         </h4>
         
            <button type="button" class="close" data-dismiss="modal"
               aria-hidden="true">×
            </button>
         </div>
         <div class="modal-body">
         	<textarea placeholder="Channel Name."  style="overflow:hidden"></textarea>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
               	닫기
            </button>
            <button type="button" class="btn btn-primary" id="myButtons1">
               	저장
            </button>
         </div>
      </div>
   </div>
</div>




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
