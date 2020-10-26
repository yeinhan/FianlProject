<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    
    
<!DOCTYPE html>

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>We Office - 회의실 대관 예약</title>

  <!-- Custom fonts for this template-->
  <link href="./resources/resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="./resources/resource/css/sb-admin-2.min.css" rel="stylesheet">
  
<!-- // jQuery UI CSS파일  -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<!-- // jQuery 기본 js파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<!-- jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script> -->	
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script >
$(function() {
    $( "#testDatepicker" ).datepicker({
    	minDate: 0,
    	maxDate: "+7D"
    });
});
</script>

<script type= "text/javascript">

window.onload =function(){
	  var grpl = $("input[name=reser]").length;
	

	//reser체크박스 배열 생성
	var grparr = new Array(grpl);
	//배열에 값 주입 총 36개 
	for(var i=0; i<grpl; i++){                          
		grparr[i] = $("input[name=reser]").eq(i).val();
		}
	//reser체크박스 배열 생성
	var grparr2 = new Array(grpl);
	//배열에 값 주입 총 36개 
	for(var i=0; i<grpl; i++){                          
		grparr2[i] = $("input[name=reser]").eq(i);
		}
	
	
	
	//가져온 dto값 배열 생성
	var Chklist = new Array();
	//배열에 값 주입 
	<c:forEach items="${Chk}" var="item">
		
		  Chklist.push("${item.sub}");
	</c:forEach>
	

	// 조회 완료된 예약값과 비교 
	for(var a = 0; a < Chklist.length; a++){
		var f = Chklist[a];
		for(var d= 0; d <grparr.length; d++){
	   		var g = grparr[d];
	   
			if(f == g){
		
			document.getElementById(d).className = "btn";
			document.getElementById(d).style.backgroundColor="#e74a3b";
			var j =document.getElementById('r'+d);
			j.setAttribute("disabled", "disabled");
			
			}
		}
	}


};

function Chk(){

	var doc = document.getElementsByName("day")[0].value;
	console.log(doc)
	
	if(doc.trim() == "" || doc == null){
		alert("날짜를 선택해주세요.");
	}else{
		location.href="reserchk.do?day="+doc;
	}
	};


	





</script>
  

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

  <!-- 메뉴 -->
     <%@ include file="./menu_side.jsp"%>
  <!-- 메뉴 끝 -->

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
                    <div class="small text-gray-500">Emily Fowler Â· 58m</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                    <div class="small text-gray-500">Jae Chun Â· 1d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                    <div class="small text-gray-500">Morgan Alvarez Â· 2d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                    <div class="small text-gray-500">Chicken the Dog Â· 2w</div>
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
        <div class="container-fluid"style="max-width:80%">
          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">회의실 대관 예약 </h1>
         

          <!-- DataTales Example -->
          <div class="card shadow mb-4" >
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">안내사항</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
               
               
               <!-- 내용 -->
               <p>1.예약시 안내사랑같은거</p>
               <p>2. </p>
               <p>3.날짜 선택시 예약창을 띄울예점</p>
             ${sessionScope.login.user_num }
      
              </div>
            </div>
          </div>
        

           <div class="card shadow mb-4" >
           <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">예약 상황 조회</h6>
            </div>
            
            <div class="card-body" align="center">
          
         <form name="reservstion" action="reserDetail.do" method="post">
              <div class="table-responsive" style="max-width:90%">
               <div align="right">
	               	<table>
	               <tr >
		               <th><span><b>예약상황:</b>  </span></th>
		             	<td align="right" style="font-size:10pt">  <span>  </span>
		               <span><a class="btn btn-primary btn-icon-split" style="width:20px;height:15px"></a></span>
		               <span> : 예약가능</span>
		               <span><a class="btn btn-danger btn-icon-split" style="width:20px;height:15px" ></a></span>
		                <span> : 예약불가</span> 
		               </td> 
	                </tr>
	                <tr><td></td><td></td></tr>
	                 <tr >	
	                 	<th><span><b>날짜: </b></span></th>
	              		 <td><span><input type="text" id="testDatepicker" name ="day" value=${day}></span>
	               			<span><button type="button" onclick="Chk()">조회</button></span>
	               		</td>
	               	</tr>
	               	
	               </table>
              </div>
               </DIV>
               <div align="right">
              
               </div>
     
               <br>
               <!-- 예약상황조회 -->
               
               <div class="table-responsive">
               
           	
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align:center">
                  <thead>
                    <tr>
                    	<th></th>
                      <th>09-10</th>
                      <th>10-11</th>
                      <th>11-12</th>
                      <th>12-13</th>
                      <th>13-14</th>
                      <th>14-15</th>
                      <th>15-16</th>
                      <th>16-17</th>
                      <th>17-18</th>
                    </tr>
                  </thead>   
                 <tbody>
                  <tr>     
                    <th>회의실1</th>
          			      <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" name="label" id="0" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"   id="r0" VALUE="1-1"></label></div>
	                      </td>
	                        <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary"  name="label" id="1" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r1"  VALUE="1-2"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" name="label" id="2" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  id="r2" VALUE="1-3"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" name="label" id="3" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  id="r3" VALUE="1-4"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" name="label" id="4" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r4" VALUE="1-5"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" name="label"  id="5" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r5"  VALUE="1-6"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" name="label"  id="6" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r6"  VALUE="1-7"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" name="label"  id="7" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r7"  VALUE="1-8"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" name="label"  id="8" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r8"  VALUE="1-9"></label></div>
	                      </td>
                    </tr>
                    <tr>     
                    <th>회의실2</th>
          			      <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary"  id="9" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r9"  VALUE="2-1"></label></div>
	                      </td>
	                        <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary"  id="10" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r10"  VALUE="2-2"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="11" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r11"  VALUE="2-3"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="12" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r12"  VALUE="2-4"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="13" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r13"  VALUE="2-5"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="14" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r14"  VALUE="2-6"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="15" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r15"  VALUE="2-7"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="16" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r16"  VALUE="2-8"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="17" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r17"  VALUE="2-9"></label></div>
	                      </td>
                    </tr>
                    <tr>     
                    <th>회의실3</th>
          			      <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="18" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r18"  VALUE="3-1"></label></div>
	                      </td>
	                        <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="19" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r19"  VALUE="3-2"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="20" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r20"  VALUE="3-3"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="21" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r21"  VALUE="3-4"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="22" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r22"  VALUE="3-5"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="23" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r23"  VALUE="3-6"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="24" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r24"  VALUE="3-7"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="25" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r25"  VALUE="3-8"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="26" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r26"  VALUE="3-9"></label></div>
	                      </td>
                    </tr>
                 <tr>     
                    <th>회의실4</th>
          			      <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="27" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r27"  VALUE="4-1"></label></div>
	                      </td>
	                        <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="28" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r28"  VALUE="4-2"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="29" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  id="r29" VALUE="4-3"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="30" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r30"  VALUE="4-4"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="31" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r31"  VALUE="4-5"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="32" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r32"  VALUE="4-6"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="33" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  id="r33" VALUE="4-7"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="34" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r34"  VALUE="4-8"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" id="35" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" id="r35"  VALUE="4-9"></label></div>
	                      </td>
                    </tr>
                    <input type="hidden" name ="u_no" value=${sessionScope.login.user_num} >        
                  </tbody> 
                </table>
              </div>
              
              
              
              <!-- 예약하기 버튼 -->
              <!-- 
              <div class="button" align="center">
               		<button type="button" onclick="gosubmit()" class="btn btn-info btn-icon-split"
							style="float: right; margin-right: 10px;">
									<span class="text mypage-btn">예약하기 </span>
					</button>
               </div>
                -->
                 
              <!-- 예약하기 버튼 -->
              
     			<div>
							<input type="submit" value="예약하기" class="btn btn-info btn-icon-split"  Style="width:120px;height:50px;font-size:13pt">
               </div> 
 	
               
              
               
           </form>
       
                
              </div>
            </div>
          </div>

       
        <!-- /.container-fluid -->
 	</div>
      </div>
      </div>
      <!-- End of Main Content -->
      <!-- Footer -->
     <footer class="sticky-footer bg-white">
   		<%@ include file="./footer.jsp" %>
      </footer>

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
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>

