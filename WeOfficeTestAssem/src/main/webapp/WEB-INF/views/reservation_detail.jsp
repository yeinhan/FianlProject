<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<link rel="shortcut icon" type="image⁄x-icon" href="./resources/resource/img/laugh-wink-regular.svg">
<title>We Office - MyPage</title>


<!-- Custom fonts for this template-->
<link href="./resources/resource/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="./resources/resource/css/sb-admin-2.min.css" rel="stylesheet">
<link href="./resources/resource/css/style.css" rel="stylesheet">

<script type="text/javascript">
function goBack() {
    window.history.back();
}
</script>

</head>


<body id="page-top">

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
				<div class="container-fluid"  style="width:40%"  >

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800" >회의실 대관 예약</h1>

					</div>

					      
          <div class="card shadow mb-4" >
           <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">예약 내용확인</h6>
            </div>
            
            <div class="card-body" align="center">
          
          
         
               <div align="right">
              
               </div>
     
               <br>
               <!-- 예약상황조회 -->
             
         
               <c:forEach items="${detail}" var="dto">
               <div class="table-responsive">             
                <table class="table table-bordered" id="dataTable" style="width:70%" cellspacing="0" style="text-align:center">
              
                    <tr>
		                <th style="width:40%">예약 날짜: </th>
		                <td>${dto.day}</td>
                    </tr>
                     <tr>
		                <th>회의실 : </th>
		                <td>${dto.room} </td>
                    </tr>
                     <tr>
		                <th> 예약 시간: </th>
		                <td>${dto.time}  </td>
		                
                    </tr>

                </table>
              </div>
                 <hr>
      
        	 </c:forEach>
        	 
        	
        	<!-- insert용 정보 넘기기  -->
       <div >
        <form name="reservstion" action="reserinsert.do" method="post" style="display:none;">
       <input type="text" name=day value=${day}>
       <input type="text" name=reser value=${reser}>
       <input type="text" name ="u_no" value=${u_no}>  
   
       </div>
       
           
                
     			<div>
     			<table>
     			<tr>
     			<td colspan="2" style="height:12px">
     			<span>상기 내역에 문제가 없을경우 결제를 진행해주세요.</span>
     			
     			</td>
     			</tr>
     			<tr>
     			<td align=center >
     			<input type="button" value="돌아가기" onclick="goBack()" class="btn btn btn-danger btn-icon-split"  Style="width:120px;height:50px;font-size:13pt">
     			</td>
     			<td align=center>
				<input type="submit" value="예약하기" class="btn btn-info btn-icon-split"  Style="width:120px;height:50px;font-size:13pt">
               	</td>
               </tr>
                   </form>
               </table>
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
	
	<%@ include file="./logout.jsp"%>

	<!-- Bootstrap core JavaScript-->
	<script src="resource/vendor/jquery/jquery.min.js"></script>
	<script src="resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="resource/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="resource/js/sb-admin-2.min.js"></script>
</body>

</html>
