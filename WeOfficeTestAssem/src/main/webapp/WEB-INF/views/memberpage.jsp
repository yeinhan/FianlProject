<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
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
<title>We Office - Main</title>

<!-- Custom fonts for this template-->
<link href="./resources/resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="./resources/resource/css/sb-admin-2.min.css" rel="stylesheet">

</head>
<script>
    function dmPage_move(url, m1, m1_n, m2, m2_n) {
        var form = document.createElement("form");

        form.setAttribute("charset","UTF-8");
        form.action = url;
        form.method = "post";
       
        input1 = document.createElement("input");
        input1.setAttribute("type", "hidden");
        input1.setAttribute("name", "m1");
        input1.setAttribute("value", m1);
        
        input2 = document.createElement("input");
        input2.setAttribute("type", "hidden");
        input2.setAttribute("name", "m1_n");
        input2.setAttribute("value", m1_n);
        
        input3 = document.createElement("input");
        input3.setAttribute("type", "hidden");
        input3.setAttribute("name", "m2");
        input3.setAttribute("value", m2);
        
        input4 = document.createElement("input");
        input4.setAttribute("type", "hidden");
        input4.setAttribute("name", "m2_n");
        input4.setAttribute("value", m2_n);
        
        form.appendChild(input1);
        form.appendChild(input2);
        form.appendChild(input3);
        form.appendChild(input4);
        
        document.body.appendChild(form);
        form.submit();
    }
</script>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">


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
				<div class="container-fluid">

					<!-- content -->

					<!-- DataTales Example -->
          <div class="card shadow mb-4" style="max-width:70%;">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Member Page</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive" >
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align:center;">
                  <thead>
                  
                    <tr>
                      <th>이름</th>
                      <th>이메일</th>
                      <th>휴대폰</th>
                      <th>부서</th>
                      <th>담당명</th>
                      <th>DM</th>
                    </tr>
                  </thead>
                 
                  <tbody>
                  <c:choose>
		<c:when test="${empty member}">
			<tr>
				<td colspan ="6 align="conter"> ----------멤버가 없습니다.---------</td>
			</tr>
		</c:when>
		<c:otherwise>
                  
                 	<c:forEach  items="${member}" var="m" varStatus="status">
									
                    <tr>
                      <td><a href="m_detail.do?user_num=${m.user_num}">${m.name}</td>
                      <td>${m.email}</td>
                      <td>${m.phone}</td>
                      <td>${m.department}</td>
                      <td></td>
                      <td>
                      	<c:if test = "${m.user_num != sessionScope.login.user_num }">
                      		<a href="#" onclick="javascript:dmPage_move('http://192.168.130.35:8989/dm','${sessionScope.login.user_num }','${sessionScope.login.name }','${m.user_num}','${m.name}');">1:1</a>
                      	</c:if>
                      </td>
                    </tr>
              	</c:forEach>
              	</c:otherwise>
              	</c:choose>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<%@ include file="footer.jsp"%>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->


	<!-- Scroll to Top Button-->
	<!-- Logout Modal-->
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
