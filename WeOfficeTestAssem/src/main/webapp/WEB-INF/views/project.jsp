<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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

  <title> We Office - Project </title>

  <!-- Custom fonts for this template-->
  <link href="./resources/resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="./resources/resource/css/sb-admin-2.min.css" rel="stylesheet">

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
}

.card-body-container {
	display: inline-flex;
	flex-flow: row wrap;
}

.border-bottom-primary {
	border-top: 2.5rem solid #4e73df !important;
	width: 280px;
	height: 140px;
	margin: 10px 24px 30px 15px;
	flex-wrap: nowrap;
	justify-content: space-between;
	align-content: space-around;
}

.card-body-2 {
	flex: 1 1 auto;
	min-height: 1px;
	padding: 0 1rem 1.25rem 1.25rem;
}

.modal-header {
	vertical-align: middle;
}

/* 모달 - input태그 선택시 css */
#pjtName:focus, #pjtInfo:focus, #updatepjtName:focus, #updatepjtInfo:focus,
#pjtStartDate:focus, #pjtEndDate:focus, #updatepjtStartDate:focus, #updatepjtEndDate:focus {
	outline: 1.5px solid #4e73df;
}

/* 모달 - close 버튼 테두리제거 */
.modal-header .close {
	border: 0;
	outline: 0;
}

/* 모달 - 라디오버튼 div */
.radioBtn {
	border-radius: 5px 5px 5px 5px;
	width: 300px;
	height: 60px;
	border: 1px solid gray;
	margin-left: 15px;
	padding: 15px;
	display: flex;
	align-items: center;
	float: left;
	width: 43%;
	font-size: 13px;
}

.radioBtn:nth-child(odd) {
	margin-left: 25px;
}

.radioBtn input {
	display: flex;
	align-items: center;
}

#testVal, #updatetestVal {
	visibility: hidden;
	position: absolute;
	height: 75px;
	overflow-y: scroll;
	border: 1px solid gray;
	background: white;
}

#selMember, #updateselMember {
	border: 1px solid gray;
	align-items: center;
	float: left;
	width: 43%;
}
</style>

<script type="text/javascript">
$(function() {
// 프로젝트 생성
    $("#modalSubmit").submit(function(){
		// 프로젝트 기간 제한설정
        var startDate = $('#pjtStartDate').val();
        var endDate = $('#pjtEndDate').val();
        //-을 구분자로 연,월,일로 잘라내어 배열로 반환
        var startArray = startDate.split('-');
        var endArray = endDate.split('-');   
        //배열에 담겨있는 연,월,일을 사용해서 Date 객체 생성
        var start_date = new Date(startArray[0], startArray[1], startArray[2]);
        var end_date = new Date(endArray[0], endArray[1], endArray[2]);
        //날짜를 숫자형태의 날짜 정보로 변환하여 비교
        if(start_date.getTime() >= end_date.getTime()) {
            alert("종료일은 시작일 이후 날짜여야 합니다.");
            $("#pjtEndDate").focus();
            return false;
        }
        
        var pjtName = $("#pjtName").val();
    	var pjtInfo = $("#pjtInfo").val();
    	var p_pub = $("input[name=p_pub]:checked").attr("value");
		var user_num = "";
        $("input:checkbox[name='user_num']:checked").each(function(index) {
            if(index != 0) {
            	user_num += ',';
            }
            user_num += $(this).val();		// 1,2,3 형태로 삽입
        });
    	var pjtStartDate = $("#pjtStartDate").val();
    	var pjtEndDate = $("#pjtEndDate").val();
    	
    	var insertPjt = {
    		"p_title":pjtName, 
    		"p_info":pjtInfo, 
    		"p_pub":p_pub, 
    		"user_num":user_num, 
    		"p_startdate":pjtStartDate, 
    		"p_enddate":pjtEndDate
    	};

    	$.ajax({
			type: "post",
			url: "pjtinsert.do",
			data: JSON.stringify(insertPjt),
			contentType: "application/json",
			dataType: "json", 
			success: function(msg) {
				if(msg.check == true) {
					location.href = "project.do";
					//location.reload();
					// 첫 실행시 새로고침 해야만 뜸 ////////////////////
				}
			},
			error: function() {
				alert("실패");
			}
		});
    });
});

function pjtUpdate(pid) {
/* 프로젝트 수정 세팅 : 프로젝트 정보 모달에 불러오기 */
	var selectId = {"p_id":pid};
	
	$.ajax({
		type: "post",
		url: "pjtselectOne.do",
		data: JSON.stringify(selectId),
		contentType: "application/json",
		dataType: "json", 
		success: function(msg) {
			$.each(msg, function(key, val) {
				$("#updatepjtId").val(val.p_id);			//아이디(hidden)
				
				$("#updatepjtName").val(val.p_title);		//제목
				$("#updatepjtInfo").val(val.p_info);		//설명
				
				if(val.p_pub == "pub") {					//공개범위 : 새로고침 ////////////////////
					$("#updatepri").removeAttr("checked");
					$("#updatepub").attr("checked", true);
					
					$(".radioBtn:eq(2)").css({"border":"1.5px solid", "border-radius":"5px 5px 5px 5px", "background-color":"#F8F6F6"});
					$(".radioBtn:eq(3)").removeAttr("style");
				} else if(val.p_pub == "pri") {
					$("#updatepub").removeAttr("checked");
					$("#updatepri").attr("checked", true);
					
					$(".radioBtn:eq(3)").css({"border":"1.5px solid", "border-radius":"5px 5px 5px 5px", "background-color":"#F8F6F6"});
					$(".radioBtn:eq(2)").removeAttr("style");
				}
				
				$("#updateuser_num").val(val.user_num);	
				var num = val.user_num;						//프로젝트 참여멤버
				
				if(num != null) {		//참여멤버 존재할 경우
					var pjtuser = num.split(",");
					
					var num2 = "";		//전체멤버
			        $("input:checkbox[name='user_num']").each(function(index) {
			            if(index != 0) {
			            	num2 += ',';
			            }
			            num2 += $(this).val();
			        });
			        var alluser = num2.split(",");
					
					for(var i=0; i<alluser.length; i++) {
						for(var j=0; j<pjtuser.length; j++) {
							if(alluser[i] === pjtuser[j]) {
								$("input:checkbox[id='"+pjtuser[j]+"']").attr("checked", true);
							}
						}
					}
					
					$("#updatepjtStartDate").val(val.p_startdate);	//시작일
					$("#updatepjtEndDate").val(val.p_enddate);		//종료일
					
				} else {				//참여멤버 미존재
					$("#updatepjtStartDate").val(val.p_startdate);
					$("#updatepjtEndDate").val(val.p_enddate);
				}
			});
		},
		error: function() {
			alert("실패");
		}
	});
	
	/* 수정모달 종료시 멤버선택창 초기화 */
	// 초기화는 되는데 이후 선택값이 그대로 남아있음 ////////////////////
	$("#updateModal").on("hide.bs.modal", function(e) {
 		$("input:checkbox[name='modifyuser_num']:checked").attr("checked", false);
		$("#updatetestVal, #testVal").css("visibility", "hidden");
		$("#updateselMember, #selMember").css("border","1px solid gray");

	});
}

$(function(){
// 프로젝트 수정
    $("#modalUpdate").submit(function(){
		// 프로젝트 기간 제한설정
        var startDate = $('#updatepjtStartDate').val();
        var endDate = $('#updatepjtEndDate').val();
        //-을 구분자로 연,월,일로 잘라내어 배열로 반환
        var startArray = startDate.split('-');
        var endArray = endDate.split('-');   
        //배열에 담겨있는 연,월,일을 사용해서 Date 객체 생성
        var start_date = new Date(startArray[0], startArray[1], startArray[2]);
        var end_date = new Date(endArray[0], endArray[1], endArray[2]);
        //날짜를 숫자형태의 날짜 정보로 변환하여 비교
        if(start_date.getTime() >= end_date.getTime()) {
            alert("종료일은 시작일 이후 날짜여야 합니다.");
            $("#updatepjtEndDate").focus();
            return false;
        }
        
        var pjtId = $("#updatepjtId").val();
        var pjtName = $("#updatepjtName").val();
    	var pjtInfo = $("#updatepjtInfo").val();
    	var p_pub = $("input[name=p_pub]:checked").attr("value");
		var user_num = "";
        $("input:checkbox[name='modifyuser_num']:checked").each(function(index) {
            if(index != 0) {
            	user_num += ',';
            }
            user_num += $(this).val();		// 1,2,3 형태로 삽입
        });
    	var pjtStartDate = $("#updatepjtStartDate").val();
    	var pjtEndDate = $("#updatepjtEndDate").val();
    	
    	var updatePjt = {
    		"p_id":pjtId,
    		"p_title":pjtName, 
    		"p_info":pjtInfo, 
    		"p_pub":p_pub, 
    		"user_num":user_num, 
    		"p_startdate":pjtStartDate, 
    		"p_enddate":pjtEndDate
    	};

    	$.ajax({
			type: "post",
			url: "pjtupdate.do",
			data: JSON.stringify(updatePjt),
			contentType: "application/json",
			dataType: "json", 
			success: function(msg) {
				if(msg.check == true) {
					location.href = "project.do";
				}
			},
			error: function() {
				alert("실패");
			}
		});
    });
 	
 	/* 타영역 클릭시 멤버선택창 없앰 */
    $(".modal-footer, #pjtStartDate, #pjtEndDate, #updatepjtStartDate, #updatepjtEndDate").click(function(){
    	$("#testVal, #updatetestVal").css("visibility", "hidden");
     	$("#selMember, #updateselMember").css("border","1px solid gray");
    });
});

function pjtDelete(pid) {
// 프로젝트 삭제
	var deletePjt = {"p_id":pid};
	
	if(confirm("프로젝트를 삭제하시겠습니까?\n프로젝트 내 모든 업무리스트가 삭제됩니다.")) {
		$.ajax({
			type: "post",
			url: "pjtdelete.do",
			data: JSON.stringify(deletePjt),
			contentType: "application/json",
			dataType: "json", 
			success: function(msg) {
				if(msg.check == true) {
					alert("프로젝트가 삭제되었습니다.");
					location.href = "project.do";
				}
			},
			error: function() {
				alert("실패");
			}
		});
	}
}

function choiceSelectBox(obj){
/* select 안에 checkbox */
	var nWidth = parseInt( obj.offsetWidth );
	var nHeight = parseInt( obj.offsetHeight  );
	var nLeft =  obj.offsetLeft;
	var nTop = obj.offsetTop+obj.offsetHeight+2;
	
	if(navigator.appName=="Microsoft Internet Explorer"){
		nLeft += obj.offsetParent.offsetParent.offsetLeft + obj.offsetParent.offsetLeft;
		nTop += obj.offsetParent.offsetParent.offsetTop + obj.offsetParent.offsetTop;
	}
	
	if( $("#testVal").css("visibility") == "hidden" || $("#updatetestVal").css("visibility") == "hidden" ){
		$("#testVal, #updatetestVal").css("left", nLeft) ; 
		$("#testVal, #updatetestVal").css("top", nTop) ;
		$("#testVal, #updatetestVal").css("padding-left", "0px");
		$("#testVal, #updatetestVal").css("width", nWidth);   
		$("#testVal, #updatetestVal").css("visibility", "visible");
		$("#selMember, #updateselMember").css("border","2px solid #4e73df");
	} else { 
		$("#testVal, #updatetestVal").css("visibility", "hidden");
		$("#selMember, #updateselMember").css("border","1px solid gray");
	}
}

function radioBtnSelect(val) {
/* div 태그로 라디오버튼 체크하기 */
	var value = val;
	console.log(value);
	
	if(value == "pub") {
		$("#pri, #updatepri").removeAttr("checked");
		$("#pub, #updatepub").attr("checked", true);
		$(".radioBtn:eq(0), .radioBtn:eq(2)").css({"border":"1.5px solid #4e73df", "border-radius":"5px 5px 5px 5px", "background-color":"#F8F6F6"});
		$(".radioBtn:eq(1), .radioBtn:eq(3)").removeAttr("style");
	} else if(value == "pri"){
		$("#pub, #updatepub").removeAttr("checked");
		$("#pri, #updatepri").attr("checked", true);
		$(".radioBtn:eq(1), .radioBtn:eq(3)").css({"border":"1.5px solid #4e73df", "border-radius":"5px 5px 5px 5px", "background-color":"#F8F6F6"});
		$(".radioBtn:eq(0), .radioBtn:eq(2)").removeAttr("style");
	}
}

function modalReset() {
/* 프로젝트 생성모달창 초기화  */
	$("#myModal").on("hidden.bs.modal", function(e) {
		$(this).find("form")[0].reset();
		$("#pri, #pub").removeAttr("checked");
		$(".radioBtn:eq(0), .radioBtn:eq(1)").removeAttr("style");
		$("#testVal, #updatetestVal").css("visibility","hidden");
		$("#selMember, #updateselMember").css("border","1px solid gray");
	});

	/* 프로젝트 기간 - 시작일 설정(오늘 날짜) */
	document.getElementById("pjtStartDate").value = new Date().toISOString().substring(0, 10);
}
</script>


<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

	<!-- 메뉴 -->
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
          		<i class="fas fa-list"></i>&nbsp;&nbsp;&nbsp;Project List</h1>
          </div>
          <div class="contentTopArea" style="width:35%;">
          	<ul class="h6 mb-1 text-gray-800" style="padding-top:20px; font-weight:bold; font-size:13px;">
          	</ul>
          </div>
          <div class="contentTopArea" style="width:30%;">
          </div>
          <br><br><br>
        
        <div class="container-fluid" style="margin-top:-2.5rem; padding-left:27px; padding-right:0px;">
        <br>

          <!-- Content Row -->
          <div class="row">

			<!-- ============================================== 프로젝트 생성 ============================================== -->
			<div class="card-body-container">
              <div class="card mb-4 py-3 border-bottom-primary">
                <div class="card-body">
                	<a data-toggle="modal" href="#myModal" id="myBtn" style="text-decoration:none; color:#5a5c69;" onclick="modalReset();">
                	<i class="fas fa-plus" style="font-size:20px;"></i>&nbsp;새 프로젝트</a>
                </div>
              </div>
              
            <!-- ============================================== 프로젝트 생성모달 ============================================== -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header" style="border-bottom: 1px solid #ffffff;">
			        <h5 class="modal-title" id="myModalLabel" style="font-weight:bold; color:black; padding-left:10px; padding-top:10px;">새 프로젝트 생성하기</h5>
			        <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
			      </div>
			     <form action="" method="post" id="modalSubmit">
				      <div class="modal-body">
				        	<h6 style="color:black; font-size:13px; font-weight:bold; margin-left:10px;">제목</h6>
				        	<input type="text" name="p_title" id="pjtName" placeholder="예) 파이널 프로젝트"
				        		style="font-size:12px; width:430px; height:30px; margin-left:15px; padding:5px;" required><br><br>
				        		
				        	<h6 style="color:black; font-size:13px; font-weight:bold; margin-left:10px;">설명(선택사항)</h6>
				        	<input type="text" name="p_info" id="pjtInfo"
				        		style="font-size:12px; width:430px; height:30px; margin-left:15px; padding:5px;"><br><br>
				        		
				        	<h6 style="color:black; font-size:13px; font-weight:bold; margin-left:10px;">공개범위</h6>
				        	<div class="radioBtn" onclick="radioBtnSelect(pub.value);">
				        		<input type="radio" value="pub" name="p_pub" id="pub" required ><label for="" style="margin-bottom:0rem;">&nbsp;&nbsp;전체공개</label>
				        	</div> 
				        	<div class="radioBtn" onclick="radioBtnSelect(pri.value);">
				        		<input type="radio" value="pri" name="p_pub" id="pri"><label for="" style="margin-bottom:0rem;">&nbsp;&nbsp;멤버공개</label>
				        	</div>
				        	<br><br><br><br>
				        	
				        	<span style="color:black; font-size:13px; font-weight:bold; margin-left:10px;">참여멤버</span>
				        	
				        	<span style="color:black; font-size:13px; font-weight:bold; margin-left:95px;">프로젝트 기간</span><br>
	
							 <div id="selMember" style="margin-left:15px; margin-top:5px; margin-right:0px; width:95px;">
							 	<span id="selectBox1" style="font-size:12px; margin-left:5px;" onClick="choiceSelectBox(this);">멤버리스트　▼</span>
							 	<div id="testVal" class="testVal" style="width:82px; left:37px; top:343px; padding-left:0px;">
							 		<c:forEach items="${member }" var="m">
							  			<input type="checkbox" name="user_num" id="${m.name }" style="margin-left:5px; margin-right:5px;" value="${m.user_num }"><label for="${m.name }" style="font-size:11px; margin-bottom:0;">${m.name }</label>
							 		</c:forEach>
							 	</div>
							 </div>
							 
							<input type="date" name="p_startdate" id="pjtStartDate" style="font-size:12px; width:125px; height:25px; margin-left:55px; margin-top:5px;">
					       	~ 
					       	<input type="date" name="p_enddate" id="pjtEndDate" style="font-size:12px; width:125px; height:25px; margin-top:5px;" required>
				      </div>
				      
				      <div class="modal-footer" style="border-top:1px solid #ffffff;">
				        <button type="submit" class="btn btn-primary" id="submitBtn" style="font-size:13px; font-weight:bold;">생성</button>
				      </div>
			      </form>
			    </div>
			  </div>
			</div>
                          
              <!-- ========================================== 프로젝트리스트 출력 및 수정/삭제 ========================================== -->
              <c:choose>
				<c:when test="${empty list }">
				</c:when>
				<c:otherwise>
					<c:forEach items="${list }" var="dto">
			            <div class="card mb-4 py-3 border-bottom-primary">
							<div class="card-body-2">
								<a style="display:inline-block; width:245px; height:15px; text-align:right;">
									<sup>
									<!-- 오늘 날짜 가져오기 -->
									<jsp:useBean id="now" class="java.util.Date"/>
									<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowdate"/>
									<fmt:parseDate value="${nowdate }" pattern="yyyy-MM-dd" var="sysdate"/>
									<fmt:parseNumber value="${sysdate.time / (1000*60*60*24)}" integerOnly="true" var="today"/>
									
									<!-- 프로젝트 만료일 가져오기 -->
									<fmt:parseDate value="${dto.p_enddate}" var="pjtEnddate" pattern="yyyy-MM-dd"/>
									<fmt:parseNumber value="${pjtEnddate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"/>

									<!-- 프로젝트 기간 만료 X -->
									<c:if test="${endDate-today >= 0 }">
										<i class="far fa-calendar"></i>
									</c:if>
									<!-- 프로젝트 기간 만료 O -->
									<c:if test="${endDate-today < 0 }">
										<i class="far fa-calendar-check"></i>
									</c:if>
									
									<c:if test="${dto.p_pub eq 'pub'}">
										&nbsp;&nbsp;<i class="fas fa-unlock" style="font-size:11px;"></i>
									</c:if>
									<c:if test="${dto.p_pub eq 'pri'}">
										&nbsp;&nbsp;<i class="fas fa-lock" style="font-size:11px;"></i>
									</c:if>
									
									&nbsp;&nbsp;<i data-toggle="modal" href="#updateModal" id="config" class="fas fa-cog" style="font-size:12px; cursor:pointer;" onclick="pjtUpdate(${dto.p_id });"></i>
									&nbsp;&nbsp;<i class="fas fa-times" id="pjtdel" style="font-size:13px; cursor:pointer;" onclick="pjtDelete(${dto.p_id });"></i>
									</sup>
								</a>
								<a href="workspace.do?p_id=${dto.p_id }" style="text-decoration:none; color:#5a5c69; display:inline-block; margin-top:-10px;">
								<i class="fas fa-check"></i>&nbsp;${dto.p_title }</a>
								
<!-- 								<a style="display:inline-block; color:#5a5c69; width:245px; height:15px; text-align:right;"> -->
<%-- 									<sub>NO. ${dto.p_id }</sub> --%>
<!-- 								</a> -->
							</div>
						</div>
            		</c:forEach>
				</c:otherwise>
			  </c:choose>
            </div>
            
            <!-- ============================================== 프로젝트 수정모달 ============================================== -->
			<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header" style="border-bottom: 1px solid #ffffff;">
			        <h5 class="modal-title" id="myModalLabel" style="font-weight:bold; color:black; padding-left:10px; padding-top:10px;">프로젝트 수정하기</h5>
			        <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
			      </div>
			     <form action="" method="post" id="modalUpdate">
				      <div class="modal-body">
				        	<h6 style="color:black; font-size:13px; font-weight:bold; margin-left:10px;">제목</h6>
				        	<input type="text" name="p_title" id="updatepjtName" placeholder="예) 파이널 프로젝트"
				        		style="font-size:12px; width:430px; height:30px; margin-left:15px; padding:5px;" required><br><br>
				        		
				        	<h6 style="color:black; font-size:13px; font-weight:bold; margin-left:10px;">설명(선택사항)</h6>
				        	<input type="text" name="p_info" id="updatepjtInfo"
				        		style="font-size:12px; width:430px; height:30px; margin-left:15px; padding:5px;"><br><br>
				        		
				        	<h6 style="color:black; font-size:13px; font-weight:bold; margin-left:10px;">공개범위</h6>
				        	<div class="radioBtn" onclick="radioBtnSelect(pub.value);">
				        		<input type="radio" value="pub" name="p_pub" id="updatepub" required ><label for="" style="margin-bottom:0rem;">&nbsp;&nbsp;전체공개</label>
				        	</div> 
				        	<div class="radioBtn" onclick="radioBtnSelect(pri.value);">
				        		<input type="radio" value="pri" name="p_pub" id="updatepri"><label for="" style="margin-bottom:0rem;">&nbsp;&nbsp;멤버공개</label>
				        	</div>
				        	<br><br><br><br>
				        	
				        	<span style="color:black; font-size:13px; font-weight:bold; margin-left:10px;">참여멤버</span>
				        	
				        	<span style="color:black; font-size:13px; font-weight:bold; margin-left:95px;">프로젝트 기간</span><br>

							 <div id="updateselMember" style="margin-left:15px; margin-top:5px; margin-right:0px; width:95px;">
							 	<span id="updateselectBox1" style="font-size:12px; margin-left:5px;" onClick="choiceSelectBox(this);">멤버리스트　▼</span>
							 	<div id="updatetestVal" class="testVal" style="width:82px; left:37px; top:343px; padding-left:0px;">
							 		<c:forEach items="${member }" var="m">
								  		<input type="checkbox" name="modifyuser_num" id="${m.user_num }" style="margin-left:5px; margin-right:5px;" value="${m.user_num }"><label for="${m.user_num }" style="font-size:11px; margin-bottom:0;">${m.name }</label>
								 	</c:forEach>
							 	</div>
							 </div>
							 
							<input type="date" name="p_startdate" id="updatepjtStartDate" style="font-size:12px; width:125px; height:25px; margin-left:55px; margin-top:5px;">
 				       		~ 
 				       		<input type="date" name="p_enddate" id="updatepjtEndDate" style="font-size:12px; width:125px; height:25px; margin-top:5px;" required>
					       		
				      </div>
				      
				      <div class="modal-footer" style="border-top:1px solid #ffffff;">
				      	<input type="hidden" name="updateuser_num" id="updateuser_num" style="width:100px; height:20px; font-size:10px; margin-left:15px;">
				      	<input type="hidden" name="updatepjtId" id="updatepjtId" style="width:40px; height:20px; font-size:10px; margin-left:15px;">
				        <button type="submit" class="btn btn-primary" id="updateBtn" style="font-size:13px; font-weight:bold;">수정</button>
				      </div>
			      </form>
			    </div>
			  </div>
			</div>

          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
<!--       <footer class="sticky-footer bg-white"> -->
<%--    		<%@ include file="./footer.jsp" %> --%>
<!--       </footer> -->
      <!-- End of Footer -->

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