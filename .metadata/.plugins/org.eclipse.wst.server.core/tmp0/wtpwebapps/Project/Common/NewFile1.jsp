<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-light navbar-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">
            <img src="https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png" style="width:50px;">
          </a>
          
          <div class="collapse navbar-collapse justify-content-center" id="collapsibleNavbar">
            <ul class="navbar-nav">
              <li class="navbar-brand">
                <a class="nav-link" href="../09PagingBoard/List.jsp">자유게시판</a>
              </li>
              <li class="navbar-brand">
                <a class="nav-link" href="#">자료실</a>
              </li>
              <li class="navbar-brand">
                <a class="nav-link" href="#">방명록</a>
              </li>  
              <li class="navbar-brand dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">드롭다운</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">SubMenu1</a></li>
                  <li><a class="dropdown-item" href="#">SubMenu2</a></li>
                  <li><a class="dropdown-item" href="#">SubMenu3</a></li>
                </ul>
              </li>
            </ul>
          </div>
          
          <div class="collapse navbar-collapse justify-content-end">
       		<ul class="navbar-nav text-xs text-gray-600">
         		<% if (session.getAttribute("UserId") == null) { %>
           		<li class="nav-item">
            		<a class="nav-link" href="../06Session/LoginForm.jsp">로그인</a>
      	   		</li>
      	   		<li class="nav-item">
           			<a class="nav-link" href="#">아이디찾기</a>
           		</li>
         		<li class="nav-item">
           			<a class="nav-link" href="#">비밀번호찾기</a>
         		</li>
         		<li class="nav-item">
           			<a class="nav-link" href="#">회원가입</a>
         		</li>
         		<% } else { %>
         		<li class="nav-item">
           			<a class="nav-link" href="../06Session/Logout.jsp">로그아웃</a>
           		</li>
           		<li class="nav-item">
           			<a class="nav-link" href="#">마이페이지</a>
         		</li>
         		<% } %> 
       		</ul>
   		</div>
        </div>
    </nav>
    
    
    
    
    <!-- Carousel -->
	<div id="demo" class="carousel slide" data-bs-ride="carousel">

	  <!-- Indicators/dots -->
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
	    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
	    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
	  </div>
	  
	  <!-- The slideshow/carousel -->
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="360.jpg" alt="Los Angeles" class="d-block" style="width:100%">
	    </div>
	    <div class="carousel-item">
	      <img src="360.jpg" alt="Chicago" class="d-block" style="width:100%">
	    </div>
	    <div class="carousel-item">
	      <img src="360.jpg" alt="New York" class="d-block" style="width:100%">
	    </div>
	  </div>
	  
	  <!-- Left and right controls/icons -->
	  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon"></span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
	    <span class="carousel-control-next-icon"></span>
	  </button>
	</div>
	

</body>
</html>