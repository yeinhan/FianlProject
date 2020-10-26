<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title> We Office - WorkSpace </title>

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
	margin-top: -1.4rem;
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

.newTaskadd, .newFileadd, .wksupdateform {
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
	height: 43px;
	background-color: #d1d3e2;
	color: black;
	padding-top: 12px;
	padding-left: 15px;
	font-size: 13px;
	margin-left: 10px;
	margin-right: 18px;
}

/* dropdown */
.dropdown-moremenu {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  width: 43px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 7px 10px;
  display: block;
}

.dropdown-content a:hover {
  background-color: #ddd;
  color:  black;
  font-weight: bold;
}

.dropdown-moremenu:hover .dropdown-content {
  display: inline;
}

input[type="submit"] {
    font-family: "FontAwesome 5 Free"";
    content: "\f002";
}
</style>

<script type="text/javascript">
function newTaskhover() {
	$(".newTask").css({"background-color":"#1f5c87", "color":"white", "cursor":"pointer"});
}

function newTaskreco() {
	$(".newTask").css({"background-color":"#d1d3e2", "color":"black"});	
}

function newFilehover() {
	$(".newFile").css({"background-color":"#1f5c87", "color":"white", "cursor":"pointer"});
}

function newFilereco() {
	$(".newFile").css({"background-color":"#d1d3e2", "color":"black"});	
}

function newTask() {
	$(".newTask").hide();
	$(".newTaskadd").show();
	$("#taskName").focus();
}

function newFile() {
	$(".newFile").hide();
	$(".newFileadd").show();
}

function newTaskCan() {
	$(".newTask").show();
	$(".newTaskadd").hide();
	$("#taskName").val("");
}

function newFileCan() {
	$(".newFile").show();
	$(".newFileadd").hide();
	$("input[type=file]").val("");
}

function loadupdateform(w_id) {
	$("#wkslist"+w_id).hide();
	$(".wksupdateform"+w_id).show();
	$("#updatetaskName"+w_id).focus();
}

function updateCan(w_id) {
	$("#wkslist"+w_id).show();
	$(".wksupdateform"+w_id).hide();
	//$("#updatetaskName"+w_id).val("");
}

function newwksSubmit(p_id) {
// 워크스페이스 생성
	var pjtId = p_id;
    var w_title = $("#taskName").val();
	
	var insertWks = {
		"p_id":pjtId, 
		"w_title":w_title
	};

	$.ajax({
		type: "post",
		url: "wksinsert.do",
		data: JSON.stringify(insertWks),
		contentType: "application/json",
		dataType: "json", 
		success: function(msg) {
			if(msg.check == true) {
				location.href = "workspace.do?p_id="+p_id;
			}
		},
		error: function() {
			alert("실패");
		}
	});
}

function wksupdate(w_id, p_id) {
// 워크스페이스 수정
	var wksId = w_id;
    var w_title = $("#updatetaskName"+w_id).val();
	
	var updateWks = {
		"w_id":wksId,
		"w_title":w_title
	};
	
	if(confirm("변경하시겠습니까?")) {
		$.ajax({
			type: "post",
			url: "wksupdate.do",
			data: JSON.stringify(updateWks),
			contentType: "application/json",
			dataType: "json", 
			success: function(msg) {
				if(msg.check == true) {
					alert("변경되었습니다.");
					location.href = "workspace.do?p_id="+p_id;
				}
			},
			error: function() {
				alert("실패");
			}
		});
	}
}
	
function wksdelete(w_id, p_id) {
// 워크스페이스 삭제
	var deleteWks = {"w_id":w_id};
	
	if(confirm("삭제하시겠습니까?\n하위리스트가 모두 삭제됩니다.")) {
		$.ajax({
			type: "post",
			url: "wksdelete.do",
			data: JSON.stringify(deleteWks),
			contentType: "application/json",
			dataType: "json", 
			success: function(msg) {
				if(msg.check == true) {
					alert("삭제되었습니다.");
					location.href = "workspace.do?p_id="+p_id;
				}
			},
			error: function() {
				alert("실패");
			}
		});
	}
}

function tasklistSubmit(w_id) {
// 업무리스트 생성
	var tasklist = $("#addedtask").val();
	
	var insertTask = {
		"w_id":w_id,
		"w_content":tasklist
	};

	$.ajax({
		type: "post",
		url: "taskinsert.do",
		data: JSON.stringify(insertTask),
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

function addTaskList(w_id) {
// + 클릭시 업무리스트 추가form
	if($("#tasklistadd"+w_id).length == 0) {
		var addTag = "<form action='' method='post' onsubmit='tasklistSubmit("+w_id+");'>"
			+"<div id='tasklistadd"+w_id+"' style='background-color:#eaecf4; border-top:#d1d3e2 1px solid; 	width:290px; height:43px; padding-top:9px; "
					+"padding-left:14px; font-size:13px; margin-left:10px; margin-right:18px;'>"
					+"<input type='text' name='w_content' id='addedtask' maxlength='16' style='width:240px; height:23px; font-size:13px; "
						+"border-radius:3px 3px 3px 3px; margin-right:11px; border:0; outline:none;' required>"
					+"<i class='fas fa-times' style='color:#6e707e; font-size:14px; cursor:pointer; vertical-align:middle;' onclick='tasklistRemove("+w_id+");'></i>"
				+"</div>"
			+"</form>"
	
		$(".contentrowDiv"+w_id).append(addTag);
	}
	$("#addedtask").focus();
}

function tasklistRemove(w_id) {
// X 클릭시 입력창 제거
	$("#tasklistadd"+w_id).remove();
}

function deleteTaskList(t_id, p_id) {
// 업무리스트 삭제	
	var deleteTask = {"t_id":t_id};
	
	if(confirm("업무를 삭제하시겠습니까?")) {
		$.ajax({
			type: "post",
			url: "taskdelete.do",
			data: JSON.stringify(deleteTask),
			contentType: "application/json",
			dataType: "json", 
			success: function(msg) {
				if(msg.check == true) {
					alert("삭제되었습니다.");
					location.href = "workspace.do?p_id="+p_id;
				}
			},
			error: function() {
				alert("실패");
			}
		});
	}
}

function updateTaskList(t_id, p_id) {
// 업무리스트 수정(체크/해제)
    if ($("input:checkbox[id=taskchk"+t_id+"]").is(":checked") == true) {
    	var updateTask_y = {
    		"t_id":t_id,
    		"chk_yn":1		// 1: 체크
    	};

    	$.ajax({
    		type: "post",
    		url: "updatechk_y.do",
    		data: JSON.stringify(updateTask_y),
    		contentType: "application/json",
    		dataType: "json", 
    		success: function(msg) {
    			if(msg.check == true) {
    				location.href = "workspace.do?p_id="+p_id;
    			}
    		},
    		error: function() {
    			alert("실패");
    		}
    	});
    	
	} else {
    	var updateTask_n = {
       		"t_id":t_id,
       		"chk_yn":0		// 0: 체크 해제
       	};

       	$.ajax({
       		type: "post",
       		url: "updatechk_n.do",
       		data: JSON.stringify(updateTask_n),
       		contentType: "application/json",
       		dataType: "json", 
       		success: function(msg) {
       			if(msg.check == true) {
       				location.href = "workspace.do?p_id="+p_id;
       			}
       		},
       		error: function() {
       			alert("실패");
       		}
       	});
	}
}

function fileUpload() {
// 첨부파일 업로드
	var filename = $("input[type=file]").val();

	if(filename==null || filename=="") {
		alert("선택된 파일이 없습니다. 파일을 선택해 주세요.");
	} else {
		$("#file_upload").submit();
	}
}

function deleteFileList(name, p_id) {
// 첨부파일 삭제
	var deleteFile = {
		"p_id":p_id,
		"name":name
	};
	
	if(confirm("첨부된 파일을 삭제하시겠습니까?")) {
		$.ajax({
			type: "post",
			url: "filedelete.do",
			data: JSON.stringify(deleteFile),
			contentType: "application/json",
			dataType: "json", 
			success: function(msg) {
				if(msg.check == true) {
					alert("파일이 삭제되었습니다.");
					location.href = "workspace.do?p_id="+p_id;
				}
			},
			error: function() {
				alert("실패");
			}
		});
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
        <%@ include file="./top_nav.jsp"%>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        
          <div class="contentTopArea" style="width:35%;">
	          <h1 class="h6 mb-1 text-gray-900" style="padding-top:16px; padding-left:35px; font-weight:bold; font-size:20px;">
	          	<i class="fas fa-list"></i>&nbsp;&nbsp;&nbsp;${pjtName.p_title }</h1>
          </div>
          <div class="contentTopArea" style="width:35%;">
          	<ul class="h6 mb-1 text-gray-800" style="padding-top:20px; font-weight:bold; font-size:13px;">
<!-- 	          	<li style="float:left; margin-left:90px;"><a href="project.do"><i class="fas fa-clipboard-list"></i>&nbsp;보드</a></li> -->
<!-- 	          	<li style="float:left; margin-left:60px;"><a href="#"><i class="fas fa-paperclip"></i>&nbsp;파일업로드</a></li> -->
          	</ul>
          </div>
          <div class="contentTopArea" style="width:30%;">
          	<h1 class="h6 mb-1 text-gray-800" style="padding-top:19px; padding-right:35px; font-weight:bold; text-align:right; cursor:pointer;" onclick="location.href='project.do'"><i class="fas fa-arrow-left" style="font-size:15px; cursor:pointer;"></i>&nbsp;&nbsp;Project</h1>
          </div>
          <br><br><br>
        
        <div class="container-fluid" style="margin-top:-2.5rem;">
        <br>

          <!-- Content Row -->
          <div class="row">
			<div class="contentrowDiv-container">
	            <div class="contentrowDiv">
	            	<!-- ============================================== 업무리스트 생성 ============================================== -->
	            	<div class="newTask" style="width:290px; height:43px; background-color:#d1d3e2; color:black;
	            					padding-top:12px; padding-left:15px; font-size:13px; margin-left:10px; margin-right:18px;"
		            				onmouseover="newTaskhover();" onmouseout="newTaskreco();" onclick="newTask();">
		            	<i class="far fa-clipboard" style="font-size:15px;"></i>&nbsp;&nbsp;새 업무리스트 만들기
		            </div> 
		           		
	           		<form action="" method="post" onsubmit="newwksSubmit(${param.p_id });">
		            	<div class="newTaskadd" style="width:290px; height:43px; margin-left:10px; margin-right:18px; background-color:#1f5c87;" >
		            		<input type="text" name="w_title" id="taskName" style="width:240px; height:25px; padding:5px; font-size:13px;
		            				border-radius:3px 3px 3px 3px; border:0px; outline:none; margin:9.5px;" placeholder="업무리스트 이름" required>
		            				<!-- onKeypress="if(event.keyCode == 13) newTaskenter();" -->
		            		<i class="fas fa-times" style="color:white; vertical-align:middle; cursor:pointer;" onclick="newTaskCan();"></i>
		            	</div>
	            	</form>
	            	<br><br>
	            	
	            	<!-- ================================================ 파일 업로드 ================================================ -->
	            	<div class="newFile" style="width:290px; height:43px; background-color:#d1d3e2; color:black;
		            				padding-top:12px; padding-left:15px; font-size:13px; margin-left:10px; margin-right:18px;"
 		            				onmouseover="newFilehover();" onmouseout="newFilereco();" onclick="newFile();">
		            	<i class="fas fa-paperclip" style="font-size:13px;"></i>&nbsp;&nbsp;파일 업로드
		            </div> 
		            
	           		<form:form action="upload.do" method="post" enctype="multipart/form-data" modelAttribute="uploadFile" id="file_upload" >
		            	<div class="newFileadd" style="width:290px; height:43px; margin-left:10px; margin-right:18px; background-color:#1f5c87;" >
		            		<input type="hidden" name="p_id" value="${param.p_id}">
		            		<input type="file" name="mpfile" style="font-size:12px; color:white; border:none; width:245px; padding:10px; ">
		            		<i class="fas fa-arrow-up" style="color:white; font-size:13px; vertical-align:middle; cursor:pointer;" onclick="fileUpload(${param.p_id });"></i>&nbsp;
		            		<i class="fas fa-times" style="color:white; font-size:13px; vertical-align:middle; cursor:pointer;" onclick="newFileCan();"></i>
		            	</div>
	            	</form:form>
	            	
          			<c:forEach items="${filelist }" var="filedto">
					    <div id="filelists" style="background-color:#eaecf4; border-top:#d1d3e2 1px solid; width:290px; height:43px;
					    		padding-top:11px; padding-left:15px; font-size:13px; margin-left:10px; margin-right:18px;">
							<i class="far fa-file" style="color:black; font-size:13px; vertical-align:middle;"></i>&nbsp;
							<span id="w_content" style="display:inline-block; vertical-align:middle; color:black; width:217px;">${filedto.name }</span>
							<i class="fas fa-arrow-down" style="color:#6e707e; font-size:13px; vertical-align:middle; cursor:pointer;" onclick="location.href='download.do?p_id=${param.p_id}&name=${filedto.name }'"></i>&nbsp;
							<i class="fas fa-times" style="color:#6e707e; font-size:13px; cursor:pointer; vertical-align:middle;" onclick="deleteFileList('${filedto.name}', ${param.p_id });"></i>
						</div>
					</c:forEach>
		        </div>
		        
				<!-- ========================================= 업무리스트 출력 및 업무 추가/수정/삭제 ========================================= -->
				<c:choose>
					<c:when test="${empty wkslist }">
					</c:when>
					<c:otherwise>
						<c:forEach items="${wkslist }" var="dto">
				            <div class="contentrowDiv${dto.w_id }">
				                <div id="wkslist${dto.w_id }" class="newTaskareaCss" style="background-color:#1f5c87; color:white;">
				                	<span style="display:inline-block; width:225px;">${dto.w_title }</span>
				                	<i class="fas fa-plus" style="cursor:pointer" onclick="addTaskList(${dto.w_id});"></i> &nbsp;&nbsp;
				                	
				                	<div class="dropdown-moremenu" style="display:inline;">
				                		<i class="fas fa-ellipsis-v" id="moremenu" style="cursor:pointer"></i>
				                		<div class="dropdown-content">
				                			<a href="javascript:void(0);" onclick="loadupdateform(${dto.w_id });" style="text-decoration:none; font-size:11px;">수정</a>
				                			<a href="javascript:void(0);" onclick="wksdelete(${dto.w_id}, ${param.p_id });" style="text-decoration:none; font-size:11px;">삭제</a>
				                		</div>
				                	</div>
				            	</div>
				            	
							    <form action="" method="post" onsubmit="wksupdate(${dto.w_id}, ${param.p_id });">
					            	<div class="wksupdateform${dto.w_id}" style="display:none; width:290px; height:43px; margin-left:10px; margin-right:18px; background-color:#1f5c87;" >
					            		<input type="text" name="w_title" id="updatetaskName${dto.w_id}" value="${dto.w_title }" style="width:240px; height:25px; padding:5px; font-size:13px;
					            				border-radius:3px 3px 3px 3px; border:0px; outline:none; margin:9.5px;" placeholder="변경할 이름" required>
					            				<!-- onKeypress="if(event.keyCode == 13) newTaskenter();" -->
					            		<i class="fas fa-times" style="color:white; vertical-align:middle;" onclick="updateCan(${dto.w_id});"></i>
					            	</div>
				            	</form>
				            	
								<c:forEach items="${tasklist }" var="taskdto">
					            	<c:if test="${dto.w_id eq taskdto.w_id }">
									    <div id="tasklists" style="background-color:#eaecf4; border-top:#d1d3e2 1px solid; width:290px; height:43px; padding-top:11px; 
												padding-left:15px; font-size:13px; margin-left:10px; margin-right:18px;">
											<input type="checkbox" id="taskchk${taskdto.t_id }" ${taskdto.chk_yn==1? 'checked': '' } style="margin-right:10px; vertical-align:middle;" onclick="updateTaskList(${taskdto.t_id}, ${param.p_id });">
											<span id="w_content" style="display:inline-block; vertical-align:middle; color:black; width:220px;">${taskdto.w_content }</span>
											<i class="fas fa-times" style="color:#6e707e; font-size:14px; cursor:pointer; vertical-align:middle;" onclick="deleteTaskList(${taskdto.t_id}, ${param.p_id });"></i>
										</div>
									</c:if>
								</c:forEach>
				            </div>
						</c:forEach>
					</c:otherwise>
				</c:choose>					
		     </div>
          </div>

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
  <script src="resource/vendor/jquery/jquery.min.js"></script>
  <script src="resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="resource/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="resource/js/sb-admin-2.min.js"></script>

</body>
</html>