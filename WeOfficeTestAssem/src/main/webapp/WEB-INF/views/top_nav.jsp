<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 제이쿼리 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<script type="text/javascript">
$(function(){
   	$.ajax({
		type: "post",
		url: "topalerts.do",
		contentType: "application/json",
		dataType: "json", 
		success: function(msg) {
			$.each(msg, function(key, val) {
				if(val == null || val == "") {
					var tag = "<a class='dropdown-item d-flex align-items-center' href='#' style='height:70px;'>"
								+"<div class='mr-3'>"
									+"<div class='icon-circle bg-danger'>"
										+"<i class='fas fa-exclamation-triangle text-white'></i>"
									+"</div>"
								+"</div>"
								+"<div>"
									+"<span class='font-weight-bold'>신규 등록된 프로젝트가 없습니다.</span>"
								+"</div>"
							+"</a>";

					$("#addtest").append(tag);
				} else {
					var list = val;
					for(var i=0; i<list.length; i++) {
						var str = list[i];
							
						var tag = "<a class='dropdown-item d-flex align-items-center' href='workspace.do?p_id="+str.p_id+"' style='height:60px;'>"
									+"<div class='mr-3'>"
										+"<div class='icon-circle bg-primary'>"
											+"<i class='fas fa-file-alt text-white'></i>"
										+"</div>"
									+"</div>"
									+"<div>"
										+"<div class='small text-gray-700'>"+str.p_enddate+"</div>"
										+"<span class='font-weight-bold'>"+str.p_title+"</span>"
									+"</div>"
								+"</a>";
					
						$("#addtest").append(tag);
					}
				}
				$("#countbadge").text(list.length);
			});
		},
		error: function() {
			alert("실패");
		}
	});	
});
</script>

<body>
<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
<!-- 					<form -->
<!-- 						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search"> -->
<!-- 						<div class="input-group"> -->
<!-- 							<input type="text" class="form-control bg-light border-0 small" -->
<!-- 								placeholder="Search for..." aria-label="Search" -->
<!-- 								aria-describedby="basic-addon2"> -->
<!-- 							<div class="input-group-append"> -->
<!-- 								<button class="btn btn-primary" type="button"> -->
<!-- 									<i class="fas fa-search fa-sm"></i> -->
<!-- 								</button> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</form> -->

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>


						<!-- 알람 작업부분 -->
						<!-- Nav Item - Alerts -->
						<li class="nav-item dropdown no-arrow mx-1">
							<a class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="fas fa-bell fa-fw"></i> 
								<!-- Counter - Alerts -->
								<span class="badge badge-danger badge-counter" id="countbadge"></span>
							</a>
	
							<!-- Dropdown - Alerts -->
							<div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header" id="alerts-header">Today's new project</h6>
								<div id="addtest">
								</div>
	<!-- 					<a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>  -->
							</div>
						</li>

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">${sessionScope.login.name }</span> <img class="img-profile rounded-circle"
								src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="mypage.do"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400" ></i>
									Settings
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->
</body>
</html>