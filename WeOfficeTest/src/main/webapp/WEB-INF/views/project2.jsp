<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title> 귀영 css-2 </title>

  <!-- Custom fonts for this template-->
  <link href="resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="resource/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- 제이쿼리 -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>

<style type="text/css">
.contentTopArea {
	/* 	width: 300px;
	height: 60px;
	border: 1px solid gray;
	margin-left: 15px;
	padding: 15px; */
	align-items: center;
	float: left;
	width: 43%;
	height: 40px;
	background-color: #f8f9fc;
	margin-top: -1.5rem;
}

.contentTopArea ul {
	list-style-type: none;
}

.contentTopArea ul li a {
	text-decoration: none;
	color: black;
}

.contentTopArea ul li a:hover {
	color: #4e73df;
}

.container-fluid {
	/* 	background-color:#dddfeb; */
	background-color: #f8f9fc;
	border-top: 1px solid #dddfeb;
	height: 596px;
	/* 가로스크롤 생성 */
	white-space:nowrap;
 	overflow:auto;
}

.newTaskadd {
	display: none;
}

.contentrowDiv-container {
	display: inline-flex;
/* 	flex-flow: row wrap; */
}

.contentrowDiv {
	flex-wrap: nowrap;
	justify-content: space-between;
	align-content: space-around;
}

.newTaskareaCss {
	width: 290px;
	height: 45px;
	background-color: #d1d3e2;
	color: black;
	padding-top: 11px;
	padding-left: 15px;
	font-size: 13px;
	margin-left: 10px;
	margin-right: 18px;
}
</style>


<script type="text/javascript">
function newTaskhover() {
	$(".newTask").css({"background-color":"#1f5c87", "color":"white", "cursor":"pointer"});
}

function newTaskreco() {
	$(".newTask").css({"background-color":"#d1d3e2", "color":"black"});	
}

function newTask() {
	$(".newTask").hide();
	$(".newTaskadd").show();
}

function newTaskCan() {
	$(".newTask").show();
	$(".newTaskadd").hide();
	$("#taskName").val("");
}

function newTasksubmit() {
// 업무리스트 생성 submit 이벤트 >>>>>>>>>>>>> ajax
 	var value = $("#taskName").val();
	
	if(value!=null || value!="") {
		$("#newTask-sec").addClass("newTaskareaCss");
		$("#newTask-sec").text(taskName);
	}
}

function newTaskenter() {
// 업무리스트 생성 엔터이벤트 >>>>>>>>>>>>> ajax
	var value = $("#taskName").val();
	
// 	if(value!=null || value!="") {
// 		$("#newTask-sec").addClass("newTaskareaCss");
// 		$("#newTask-sec").text(taskName);
// 	}
}

$(function(){
	$("#addTaskList").click(function(){
		/* 업무별 todo리스트 추가버튼 */
		/* 
       	<div id='' style='background-color:#eaecf4; width:290px; height:45px; padding-top:11px;
     						padding-left:15px; font-size:13px; margin-left:10px; margin-right:18px;'>
     		<input type='checkbox' style='margin-right:15px;'>
         	<input type='text' name='taskName' id='taskName' style='width:210px; height:23px; font-size:13px;
      			border-radius:3px 3px 3px 3px; margin-right:11px; border:0.5px; outline:none; placeholder='' required>
      		<i class='fas fa-times' style='color:#6e707e; font-size:14px;' onclick='newTaskCan();'></i>	<!-- 삭제(X) 버튼  -->
        </div>
        
       	<div id="" style="background-color:#eaecf4; width:290px; height:45px; padding-top:11px;
     						padding-left:15px; font-size:13px; margin-left:10px; margin-right:18px;">
     		<input type="checkbox" style="margin-right:15px;">
         	<input type="text" name="taskName" id="taskName" style="width:210px; height:23px; font-size:13px;
      			border-radius:3px 3px 3px 3px; margin-right:11px; border:0.5px; outline:none; placeholder="" required>
      		<i class="fas fa-times" style="color:#6e707e; font-size:14px;" onclick="newTaskCan();"></i>	<!-- 삭제(X) 버튼  -->
        </div>        
		*/
		var addTag = "<form action='' method='' onsubmit='tasklistSubmit();'>"
						+"<div id='' style='background-color:#eaecf4; width:290px; height:45px; padding-top:11px; "
								+"padding-left:15px; font-size:13px; margin-left:10px; margin-right:18px;'>"
		     				+"<input type='text' name='addedtask' id='addedtask' style='width:240px; height:23px; font-size:13px; "
		  						+"border-radius:3px 3px 3px 3px; margin-right:11px; border:0; outline:none;' required>"
		  					+"<i class='fas fa-times' style='color:#6e707e; font-size:14px; cursor:pointer' id='tasklistRemove'></i>"
		  				+"</div>"
	  				+"</form>"
		
  		$(".contentrowDiv:eq(1)").append(addTag);
	  				
	  	/* X 클릭시 input창 초기화 */
		$("#tasklistRemove").click(function(){
			$("#addedtask").val("");	
		});
	
	});
});

function tasklistSubmit() {
	/* todo리스트 입력시 텍스트 받아오기 및 체크리스트로 전환 >>>>>>>>>>>>>>>>> ajax */
	var value = $("#addedtask").val();
	
	if(value!=null || value!="") {
		var addTag = "<form action='' method='' onsubmit='tasklistSubmit();'>"
						+"<div id='' style='background-color:#eaecf4; width:290px; height:45px; padding-top:11px; "
								+"padding-left:15px; font-size:13px; margin-left:10px; margin-right:18px;'>"
							+"<input type='checkbox' style='margin-right:15px;'>"
							+"<input type='text' name='addedtask' id='addedtask' style='width:210px; height:23px; font-size:13px; "
								+"border-radius:3px 3px 3px 3px; margin-right:11px; border:0; outline:none;' required>"
							+"<i class='fas fa-times' style='color:#6e707e; font-size:14px; cursor:pointer' id='tasklistRemove'></i>"
						+"</div>"
					+"</form>"
		$(".contentrowDiv:eq(1)").append(addTag);
	}
}

</script>


<body id="page-top" style="overflow-y:hidden">
<!-- 세로스크롤바 없애기 -->

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
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">3+</span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Alerts Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 12, 2019</div>
                    <span class="font-weight-bold">A new monthly report is ready to download!</span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                    $290.29 has been deposited into your account!
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 2, 2019</div>
                    Spending Alert: We've noticed unusually high spending for your account.
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                  Message Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                    <div class="small text-gray-500">Emily Fowler · 58m</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                    <div class="small text-gray-500">Jae Chun · 1d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                    <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                    <div class="small text-gray-500">Chicken the Dog · 2w</div>
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        
          <div class="contentTopArea" style="width:35%;">
          	<h1 class="h6 mb-1 text-gray-900" style="padding-top:16px; padding-left:35px; font-weight:bold; font-size:20px;">
          		<i class="fas fa-list"></i>&nbsp;&nbsp;프로젝트명 가져오기</h1>
          </div>
          <div class="contentTopArea" style="width:35%;">
          	<ul class="h6 mb-1 text-gray-800" style="padding-top:20px; font-weight:bold; font-size:13px;">
	          	<li style="float:left; margin-left:90px;"><a href="#"><i class="fas fa-clipboard-list"></i>&nbsp;보드</a></li>
	          	<li style="float:left; margin-left:60px;"><a href="#"><i class="fas fa-paperclip"></i>&nbsp;파일업로드</a></li>
          	</ul>
          </div>
          <div class="contentTopArea" style="width:30%;">
          	<h1 class="h6 mb-1 text-gray-800" style="padding-top:19px; padding-right:35px; font-weight:bold; text-align:right;">프로젝트 대화?</h1>
          </div>
          <br><br><br>
        
        <div class="container-fluid" style="margin-top:-2.5rem;">
        <br>

          <!-- Content Row -->
          <div class="row">

		<div class="contentrowDiv-container">
            <div class="contentrowDiv">
            	<div class="newTask" style="width:290px; height:45px; background-color:#d1d3e2; color:black; padding-top:11px; padding-left:15px;
            				font-size:13px; margin-left:10px; margin-right:18px;"
            				onmouseover="newTaskhover();" onmouseout="newTaskreco();" onclick="newTask();">
            		<i class="far fa-clipboard" style="font-size:15px;"></i>&nbsp;&nbsp;새 업무리스트 만들기
            	</div> 
           	
           		<form action="" method="post" onsubmit="newTasksubmit();">
           		<!-- 서브밋 = 입력한 이름으로 div태그 생성 / 컨트롤러로 입력한 이름 전달 -->
	            	<div class="newTaskadd" style="width:290px; height:45px; margin-left:10px; margin-right:18px; background-color:#1f5c87;" >
	            		<input type="text" name="taskName" id="taskName" style="width:240px; height:25px; padding:5px; font-size:13px;
	            				border-radius:3px 3px 3px 3px; border:0px; outline:none; margin:9.5px;" placeholder="업무리스트 이름" required>
	            				<!-- onKeypress="if(event.keyCode == 13) newTaskenter();" -->
	            		<i class="fas fa-times" style="color:white;" onclick="newTaskCan();"></i>	<!-- 취소(X) 버튼  -->
	            	</div>
            	</form>
            </div>

            <div class="contentrowDiv">
                <div id="newTask-sec" class="newTaskareaCss" style="background-color:#1f5c87; color:white;">
                	<span style="display:inline-block; width:225px;">입력한 업무이름 가져오기</span>
                	<i class="fas fa-plus" style="cursor:pointer" id="addTaskList"></i> &nbsp;&nbsp;
                	<i class="fas fa-ellipsis-v" style="cursor:pointer" onclick="" ></i>
            	</div>
            </div>
            
            <div class="contentrowDiv">
                <div id="newTask-sec" class="newTaskareaCss" style="background-color:#1f5c87; color:white;">
                	<span style="display:inline-block; width:225px;">입력한 업무이름 가져오기</span>
                	<i class="fas fa-plus" style="cursor:pointer" id="addTaskList"></i> &nbsp;&nbsp;
                	<i class="fas fa-ellipsis-v" style="cursor:pointer" onclick="" ></i>
            	</div>
            </div>
            
                        <div class="contentrowDiv">
                <div id="newTask-sec" class="newTaskareaCss" style="background-color:#1f5c87; color:white;">
                	<span style="display:inline-block; width:225px;">입력한 업무이름 가져오기</span>
                	<i class="fas fa-plus" style="cursor:pointer" id="addTaskList"></i> &nbsp;&nbsp;
                	<i class="fas fa-ellipsis-v" style="cursor:pointer" onclick="" ></i>
            	</div>
            </div>
            
                        <div class="contentrowDiv">
                <div id="newTask-sec" class="newTaskareaCss" style="background-color:#1f5c87; color:white;">
                	<span style="display:inline-block; width:225px;">입력한 업무이름 가져오기</span>
                	<i class="fas fa-plus" style="cursor:pointer" id="addTaskList"></i> &nbsp;&nbsp;
                	<i class="fas fa-ellipsis-v" style="cursor:pointer" onclick="" ></i>
            	</div>
            </div>
            
                        <div class="contentrowDiv">
                <div id="newTask-sec" class="newTaskareaCss" style="background-color:#1f5c87; color:white;">
                	<span style="display:inline-block; width:225px;">입력한 업무이름 가져오기</span>
                	<i class="fas fa-plus" style="cursor:pointer" id="addTaskList"></i> &nbsp;&nbsp;
                	<i class="fas fa-ellipsis-v" style="cursor:pointer" onclick="" ></i>
            	</div>
            </div>
            
                        <div class="contentrowDiv">
                <div id="newTask-sec" class="newTaskareaCss" style="background-color:#1f5c87; color:white;">
                	<span style="display:inline-block; width:225px;">입력한 업무이름 가져오기</span>
                	<i class="fas fa-plus" style="cursor:pointer" id="addTaskList"></i> &nbsp;&nbsp;
                	<i class="fas fa-ellipsis-v" style="cursor:pointer" onclick="" ></i>
            	</div>
            </div>
            
                        <div class="contentrowDiv">
                <div id="newTask-sec" class="newTaskareaCss" style="background-color:#1f5c87; color:white;">
                	<span style="display:inline-block; width:225px;">입력한 업무이름 가져오기</span>
                	<i class="fas fa-plus" style="cursor:pointer" id="addTaskList"></i> &nbsp;&nbsp;
                	<i class="fas fa-ellipsis-v" style="cursor:pointer" onclick="" ></i>
            	</div>
            </div>
            
                        <div class="contentrowDiv">
                <div id="newTask-sec" class="newTaskareaCss" style="background-color:#1f5c87; color:white;">
                	<span style="display:inline-block; width:225px;">입력한 업무이름 가져오기</span>
                	<i class="fas fa-plus" style="cursor:pointer" id="addTaskList"></i> &nbsp;&nbsp;
                	<i class="fas fa-ellipsis-v" style="cursor:pointer" onclick="" ></i>
            	</div>
            </div>
            

          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->


<!--       Footer -->
		<%@ include file="./footer.jsp" %>
<!--       End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
	  <%@ include file="./logout.jsp" %>

  <!-- Bootstrap core JavaScript-->
  <script src="./resources/resource/vendor/jquery/jquery.min.js"></script>
  <script src="./resources/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="./resources/resource/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="./resources/resource/js/sb-admin-2.min.js"></script>

</body>
</html>