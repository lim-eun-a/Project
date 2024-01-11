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
            <img src="https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png" class="img-fluid">
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="../09PagingBoard/List.jsp">자유게시판</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">자료실</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">방명록</a>
              </li>  
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">드롭다운</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">SubMenu1</a></li>
                  <li><a class="dropdown-item" href="#">SubMenu2</a></li>
                  <li><a class="dropdown-item" href="#">SubMenu3</a></li>
                </ul>
              </li>
            </ul>
            <form class="d-flex">
                <input class="form-control" type="search" placeholder="Search">
                <button class="btn btn-primary" type="button"><i class="bi bi-search"></i></button>
              </form>
          </div>
          

          <div class="tnb-right-section">
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="bi bi-person-plus-fill"></i>회원가입</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="bi bi-person-lines-fill"></i>회원정보수정</a>
                  </li>
                  <li class="nav-item">
                  	<% if (session.getAttribute("UserId") == null) { %>
	           			<a class="nav-link" href="../06Session/LoginForm.jsp"><i class="bi bi-box-arrow-in-right"></i>로그인</a>
	        		<% } else { %>
	           			<a class="nav-link" href="../06Session/Logout.jsp"><i class="bi bi-box-arrow-in-left"></i>로그아웃</a>
	        		<% } %>
                  </li>   
                </ul>
              </div>
          </div>
        </div>
    </nav>
</body>
</html>