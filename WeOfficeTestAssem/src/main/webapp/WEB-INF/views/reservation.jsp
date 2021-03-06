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
var newJquery = $.noConflict(true);

newJquery(function() {
	newJquery( "#testDatepicker" ).datepicker({
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
		<%@ include file="./top_nav.jsp"%>
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
			<!-- End of Main Content -->
			
			

			<!-- Footer -->
			<%@ include file="./footer.jsp"%>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->
	</div>

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