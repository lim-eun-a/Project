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
          <a class="navbar-brand" href="NewFile1.jsp">
            <img src="https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png" 
            	 style="width:50px;">
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
           			<a class="nav-link" href="../06Session/IdForm.jsp">아이디찾기</a>
           		</li>
         		<li class="nav-item">
           			<a class="nav-link" href="../06Session/PwForm.jsp">비밀번호찾기</a>
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

</body>
</html>