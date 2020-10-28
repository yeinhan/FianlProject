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

<link rel="shortcut icon" type="image⁄x-icon" href="./resources/resource/img/laugh-wink-regular.svg">
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

 function Chk(){

	var doc = document.getElementsByName("day")[0].value;
	console.log(doc);

	
	if(doc.trim() == "" || doc == null){
		alert("날짜를 선택해주세요.");
	}else{
		location.href="reserchk.do?day="+doc;
	}
	};


	 function check(){
		 
		 alert("조회를 먼저해주세요");
	
		 document.getElementsByName("day")[0].focus();
		 document.getElementById("day_in").style.color="#e74a3b";
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
               <p>1) 예약 가능한 시간은 9:00부터 18:00까지이며, 1시간을 기준으로 예약을 신청할 수 있습니다.</p>
               <p>2) 예약 및 조회가 가능한 날짜는 당일을 기준으로 일주일 내로만 가능합니다.그 외  조회 및 예약이 필요한 경우 담당자에게 연락부탁드립니다. </p>
               <p>3) 한사람의 과도한 독점사항이 발생할 경우 통보없이 강제 취소 되며, 경고조치됩니다.</p>
               <p>4) 3회 이상의 경고를 받은 경우 강제 제명 처리되오니 양해 부탁드립니다.</p>
          	   <p>5) 6시간 이상의 회의실 이용이 필요하신 경우 담당자에세 연락 부탁드립니다.</p>
               <p>6) 그 외 모든 문의 사항은 담당자에게 문의 주십시오</p> 
   			   <p>				담당자 홍주연(010-1234-5678,kkuknatda@khbyebye.yes)</p> 
   
               
               
               
               
               
              </div>
            </div>
          </div>
        
      
          
          <div class="card shadow mb-4" >
           <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">예약 상황 조회</h6>
            </div>
            
            <div class="card-body" align="center">
          
          
              <div class="table-responsive" style="max-width:90%">
               <div align="right">
	               	<table>
	               <tr >
		               <th><span><b>예약상황:</b>  </span></th>
		             	<td align="right" style="font-size:10pt">  <span>  </span>
		               <span><a class="btn btn-primary btn-icon-split" style="width:20px;height:15px" readonly="readonly"></a></span>
		               <span> : 예약가능</span>
		               <span><a class="btn btn-danger btn-icon-split" style="width:20px;height:15px" readonly="readonly"></a></span>
		                <span> : 예약불가</span> 
		               </td> 
	                </tr>
	                <tr><td></td><td></td></tr>
	                 <tr >	
	                 	<th><span><b>날짜: </b></span></th>
	              		 <td><span><input type="text" id="testDatepicker" name ="day" readonly="readonly"></span>
	               			<sapn><button type="button" onclick="Chk()">조회</button></sapn>
	               		</td>
	               	</tr>
	               	<tr >	
	                 	<th><span id="day_in"><b>※날짜를 선택하여 조회해주세요.</b></span></th>
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
          			      <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary"  onclick="check()" style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"   VALUE="1-1"></label></div>
	                      </td>
	                        <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="1-2"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"   VALUE="1-3"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"  style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"   VALUE="1-4"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"    VALUE="1-5"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"   VALUE="1-6"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="1-7"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="1-8"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"   VALUE="1-9"></label></div>
	                      </td>
                    </tr>
                    <tr>     
                    <th>회의실2</th>
          			      <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="2-1"></label></div>
	                      </td>
	                        <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="2-2"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="2-3"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="2-4"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="2-5"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="2-6"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="2-7"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="2-8"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="2-9"></label></div>
	                      </td>
                    </tr>
                    <tr>     
                    <th>회의실3</th>
          			      <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser" onclick="check()"  VALUE="3-1"></label></div>
	                      </td>
	                        <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="3-2"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="3-3"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="3-4"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="3-5"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="3-6"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="3-7"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="3-8"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="3-9"></label></div>
	                      </td>
                    </tr>
                 <tr>     
                    <th>회의실4</th>
          			      <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="4-1"></label></div>
	                      </td>
	                        <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="4-2"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="4-3"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="4-4"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="4-5"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="4-6"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="4-7"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="4-8"></label></div>
	                      </td>
	                         <td> <div class="btn-group-toggle"  data-toggle="buttons"><label class="btn btn-primary" onclick="check()"   style="width:80px;height:40px">
	                      					<input type="checkbox" name="reser"  VALUE="4-9"></label></div>
	                      </td>
                    </tr>
                  
                  </tbody> 
                </table>
              </div>
              
          
         
       
               <br>
                  <br>
                  
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
