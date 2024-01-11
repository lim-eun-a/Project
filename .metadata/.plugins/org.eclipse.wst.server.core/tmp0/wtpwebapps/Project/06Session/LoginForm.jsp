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

<style>
	.user_input{border:1px solid rgb(75, 75, 75);width:320px;height:40px;padding:10px;font-size:18px;}
	.user_login{margin-top: 2px;}
</style>

</head>
<body>
	<jsp:include page="../Common/Link.jsp"/>
	<span style="color: red; font-size: 1.2em;">
		<%= request.getAttribute("LoginErrMsg") == null ? 
				"" : request.getAttribute("LoginErrMsg") %>
	</span>
	<%
	if (session.getAttribute("UserId") == null) { //로그인 상태 확인
		// 로그아웃 상태
	%>
		<script>
		function validateForm(form){
			if(!form.user_id.value){
				alert("아이디를 입력하세요.");
				return false;
			}
			if(form.user_pw.value == ""){
				alert("패스워드를 입력하세요.");
				return false;
			}
		}
		</script>
		
		
	<fieldset>
		<div style="margin-top:70px;"></div>
		<table border="1" cellpadding="40" cellspacing="0" width="50%" align="center">
			<tr>
				<td align="center" valign="middle">
					<table border="0" cellpadding="0" cellspacing="0" width="470">
						<tr>
							<td align="center" style="font-size: 50px">LOGIN</td>
						</tr>
					</table>
					<div style="margin-top:30px;"></div>
					<form action="LoginProcess.jsp" method="post" name="loginFrm" onsubmit="return validateForm(this);">
					<table width="470" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="350">
								<input type="text" name="user_id" placeholder="ID" class="user_input" /><br/>
							</td>
							<td width="120" rowspan="3" align="center">
		                       	<input type="submit" class="user_login" value="LOGIN"/>
		                    </td>
						</tr>
						<tr height="10">
		                	<td></td>
		                </tr>
		                <tr>
							<td>
								<input type="password" name="user_pw" placeholder="PASSWORD" class="user_input" />
							</td>
						</tr>
					</table>
					<div style="margin-top:30px;"></div>
					<div style="margin-top:15px;"></div>
					<table width="470" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td align="left">
								<a href="#" onClick="">회원가입</a>
							</td>
							<td align="center">
								<a href="#" onClick="">아이디 찾기</a>
							</td>
							<td align="right">
								<a href="#" onClick="">비밀번호 찾기</a>
							</td>
						</tr>
					</table>
					</form>	
					<div style="margin-top:30px;"></div>
				</td>
			</tr>		
		</table>
	</fieldset>
	
	
	<%
	} else{ //로그인 된 상태
	%>
		<%= session.getAttribute("UserName") %> 회원님, 로그인하셨습니다. <br/>
		<a href="Logout.jsp">[로그아웃]</a>
	<%
	}	
	%>
</body>
</html>