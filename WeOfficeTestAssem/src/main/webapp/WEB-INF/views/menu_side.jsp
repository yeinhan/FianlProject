<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>We Office - Main</title>

  <!-- Custom fonts for this template-->
  <link href="./resources/resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="./resources/resource/css/sb-admin-2.min.css" rel="stylesheet">
  <link href="./resources/resource/css/style.css" rel="stylesheet">

</head>
<body>
  <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="main.do">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">We Office</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">



      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        PROJECT
      </div>
      
      <li class="nav-item">
        <a class="nav-link" href="notice.do">
          <i class="fas fa-exclamation-circle" style="width:15px; margin-left:1px;"></i>
          <span>NOTICE</span></a>
      </li>

      <!-- 업무관리 -->
      <li class="nav-item">
        <a class="nav-link" href="project.do" style="padding-top:8px;">
          <i class="fas fa-folder-open" style="width:17px;"></i>
          <span>프로젝트</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        COMMUNITY
      </div>


      <!-- 멤버 -->
      <li class="nav-item">
        <a class="nav-link" href="member.do">
          <i class="fas fa-fw fa-users" style="width:17px;"></i>
          <span>멤버</span></a>
      </li>
      
      <!-- 채팅 -->
        <li class="nav-item">
        <a class="nav-link collapsed" href="#" style="padding-top:8px;" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-comments" style="width:16px; margin-left:1px;"></i>
          <span>채팅</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Utilities</h6>
            <a class="collapse-item" href="channel.do">협업</a>
            <a class="collapse-item" href="utilities-border.jsp">DM</a>
          </div>
        </div>
      </li>
      

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">
      
      <!-- 예약 -->
      <li class="nav-item">
        <a class="nav-link" href="reservation.do" style="padding-top:3px;">
          <i class="fas fa-thumbtack" style="width:13px; margin-left:2px;"></i>
          <span>회의실 예약</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">
            
      <!-- 마이페이지 -->
      <li class="nav-item">
        <a class="nav-link" href="mypage.do" style="padding-top:3px;">
          <i class="fas fa-user-edit" style="width:17px;"></i>
          <span>마이페이지</span></a>
      </li>

      <!-- Sidebar Toggler (Sidebar) -->
      <br>
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
</body>
</html>