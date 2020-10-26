<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
	<script src="http://localhost:3003/socket.io/socket.io.js"></script>
	<script src="https://code.jquery.com/jquery-1.11.1.js"></script>
	<script>
		$(document).ready(function() {
			var socket = io("http://localhost:3003");
		});
	</script>
</head>
<body>
<h2>ddddd</h2>
</body>
</html>
