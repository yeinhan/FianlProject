<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
<title>Realtime communication with WebRTC</title>


<!-- Custom fonts for this template-->
<link href="./resources/resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="./resources/resource/css/sb-admin-2.min.css" rel="stylesheet">
<link href="./resources/resource/css/chat.css" rel="stylesheet">

<script src="http://localhost:3003/socket.io/socket.io.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.js"></script>
<script>
	$(document).ready(function() {
		var socket = io("https://localhost:3003");
	});
</script>

</head>

<body>
	<h1>Realtime communication with WebRTC</h1>

	<div id="videos">
		<video id="localVideo" autoplay muted playsinline></video>
		<video id="remoteVideo" autoplay playsinline></video>
	</div>

	<!-- 	This file is automatically added/served when running "node index.js". -->
	<script src="/socket.io/socket.io.js"></script>
	<script src="https://webrtc.github.io/adapter/adapter-latest.js"></script>
	<script src="./resources/resource/js/main.js"></script>

</body>

</html>
