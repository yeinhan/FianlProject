<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
  <title> We Office - Project </title>

  <!-- Custom fonts for this template-->
  <link href="./resources/resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="./resources/resource/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- 제이쿼리 -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<style>
body {
	background-color: #FDFBF9;
	margin: 0px;
	padding: 0px;
}

.popup-content {
	margin: 20px 10px 0px 20px;
	border: 1px solid #6e707e;
	width: 360px;
	height: 465px;
}

.popup-header {
	margin: 20px;
	width: 320px;
	height: 50px;
}

.popup-body {
	padding-left: 30px;
	display: flex;
	flex-wrap: wrap;
	justify-content: flex-start;
	align-content: flex-start;
	height: 320px;
}

#submitBtn {
	margin-right: 15px;
	width: 112px;
	height: 38px;
	font-size: 13px;
	float: right;
}
</style>

<script type="text/javascript">
$(function(){
	var select = $("input[name=selectMember]:checked").length;
	$("#chkcnt").html("( "+select);
	
	$("#memberSubmit").submit(function(){
	// 유료서비스 사용멤버 전송
		var num = $("input[type=hidden]:eq(0)").val();
		var select = $("input[name=selectMember]:checked").length;
		
		var msg = "<span id='alertmsg' style='display:inline-block; padding:18px 0px 0px 65px; font-size:11px; color:red; font-weight:bold;'>* 최대 "+num+"명까지 선택 가능합니다.</span>";
		var msg2 = "<span id='alertmsg2' style='display:inline-block; padding:18px 0px 0px 65px; font-size:11px; color:red; font-weight:bold;'>　　* 참여멤버를 선택해주세요.</span>";
		
		if(select == 0) {
			if( !($("#alertmsg2").length > 0) ) {
				$("#alertmsg").remove();
				$(".popup-footer").append(msg2);
			}
			return false;
		} else if(select > num || select < num) {
			if( !($("#alertmsg").length > 0) ) {
				$("#alertmsg2").remove();
				$(".popup-footer").append(msg);
			}
			return false;
		} else {
			var chkval = [];
			$("input[name=selectMember]:checked").each(function(idx){
				chkval.push($("input[name=selectMember]:checked:eq("+idx+")").val());
			});
			
			var pay_user = $("input[type=hidden]:eq(1)").val();

	    	$.ajax({
	    		type: "post",
				url: "availuser.do",
				data: {
					"usernum": chkval,
					"pay_user": pay_user
				},
				dataType: "json",
				async: false,
				success: function() {
					window.close();
					// 처음 실행때 오류나는지 확인/////////////////////////////////
				},
				error: function() {
					alert("실패");
				}
			});
		}
	});
	
	
	$("#selectAll").click(function(){
	// 전체선택/해제
		var alluser = $("input[name=selectMember]").length;
		
		if($("#selectAll").prop("checked")) {
			$("input[name=selectMember]").prop("checked",true);
			$("#chkcnt").html("( "+alluser);
		} else {
			$("input[name=selectMember]").prop("checked",false);
			$("#chkcnt").html("( 0");
		}
	});


	$("input[name=selectMember]").click(function(){
	// 선택멤버 수 출력
		var select = $("input[name=selectMember]:checked").length;
		$("#chkcnt").html("( "+select);
	});
		
});
</script>

<body>
	<div class="popup-content">
		<form action="availuser.do" method="post" id="memberSubmit">
			<div class="popup-header">
				<h3 style="display:inline; color:#5a5c69; font-size:17px; font-weight:bold;"><i class="fas fa-user-check"></i>&nbsp;참여멤버 선택</h3>
				<span id="chkcnt" style="width:30px; height:20px; color:black; font-size:10px; font-weight:bold;"></span>
				<span style="width:30px; height:20px; color:black; font-size:10px; font-weight:bold;"> /&nbsp;${number } )</span>
				<input type="hidden" style="width:30px; height:20px; font-size:10px; float:right;" value=${number }>
				<input type="hidden" style="width:30px; height:20px; font-size:10px; float:right;" value=${pay_user }>
				
				<div style="padding:12px 0px 10px 10px;">
					<input type="checkbox" id="selectAll"><label for="selectAll" style="font-size:13px; color:#3a3b45;">&nbsp;&nbsp;전체선택/해제</label>
				</div>
			</div>
			
			<div class="popup-body">
				<c:forEach items="${member }" var="m">
					<div class="chkbox-area" style="padding-right:50px; padding-bottom:3px;" >
						<input type="checkbox" id="${m.user_num }" ${(m.pay_user==pay_user)? 'checked': ''} name="selectMember" value="${m.user_num }"><label for="${m.user_num }" style="font-size:14px; color:#5a5c69;">&nbsp;${m.name }</label>
					</div>
				</c:forEach>
			</div>
			
			<div class="popup-footer">
				<input type="submit" class="btn btn-warning btn-icon-split" id="submitBtn" style="width:100px; margin-right:20px;" value="선택완료">
			</div>
		</form>
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