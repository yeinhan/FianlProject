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
				<div class="container-fluid"  style="width:30%"  >

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800" >회의실 대관 예약</h1>

					</div>

					      
          <div class="card shadow mb-4" >
           <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">예약 완료</h6>
            </div>
            
            <div class="card-body" align="center">
          
          
         
               <div align="right">
              
               </div>
     
               <br>
               <!-- 예약상황조회 -->
             
         
               <div class="table-responsive">             
                <table class="table table-bordered" id="dataTable" style="width:70%;text-align:center;margin:auto;" cellspacing="0">
              
                    <tr>
			          <th>
			          	<h5>예약이 완료되었습니다.</h5>
			          </th>
                    </tr>
                    <tr>
	                  <td>
	                   	예약 내역은 마이페이지에서<p> 확인 할 수있습니다
	                  </td>
                    </tr>

                </table>
              </div>
                 <hr>
      

          
                
     			<div>
     			<table>
     			<tr>
     			<td colspan="2" style="height:12px">

     			</td>
     			</tr>
     			<tr>
     			<td align=center>
				<input type="button" value="예약확인" onclick="location.href='mypage.do?user_num=${u_no}'" class="btn btn-info btn-icon-split"  Style="width:120px;height:50px;font-size:13pt">
               	</td>
     			<td align=center >
     			<input type="button" value="완료" onclick="location.href='reservation.do'" class="btn btn btn-danger btn-icon-split"  Style="width:120px;height:50px;font-size:13pt">
     			</td>
     			
               </tr>
                   </form>
               </table>
               </div> 
 	
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
