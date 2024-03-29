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
	*{padding: 0;font-size: 12px;}
	h2{font-size: 25px;font-family: 굴림;}
	#AllWrap{margin:0 auto; text-align:center;}
	#RadioBox{margin:0 0 10px 0;text-align:left;}
	#IdBox{border:10px solid rgb(218, 218, 218);padding: 10px; width: 50%;  align:center;}
	#InputTable{border:0px solid red; border-spacing: 0; border-collapse: collapse;}        
	#InputTable th{text-align:left; padding: 10px;}
	#InputTable td{text-align:left; padding: 10px;}
	#InputTable input{border:1px solid gray;height: 23px;padding:0 0 0 3px;}
	#InputTable select{border:1px solid gray;height: 25px;padding: 4px;}
	#btn{
	    background-color: rgb(212, 0, 0);color: white;padding: 5px 20px;border:0;
	    font-size: 13px;font-weight: bold;border-radius: 5px;
	}
	.bullet{color: red;font-weight: bold;margin-right: 5px;font-size: 16px;}
</style>


</head>
<body>
	<jsp:include page="../Common/Link.jsp"/>
	<div style="margin-top:30px;"></div>
	<div id="AllWrap" >
		<h2>아이디 찾기</h2>
		<div style="margin-top:30px;"></div>
	<div id="IdBox">
	<table id="InputTable" align="center">
		<colgroup>
			<col width="30%" />
			<col width="70%" />
		</colgroup>
		<tr>
			<th><span class="bullet">&gt;</span><strong>이름(대표자명)</strong></th>
			<td>
				<input type="text" name="" style="width:200px;">
			</td>
		</tr>
		<tr>
			<th>
				<span class="bullet">&gt;</span><strong>휴대전화</strong></th>
			<td>
				<input type="text" name="" style="width:40px;"> -
				<input type="text" name="" style="width:50px;"> -
				<input type="text" name="" style="width:50px;">
			</td>
		</tr>
	</table>
	<div>
		<img src="./images/g_line.gif" width="400" height="1" border="0" />
		<br><br><br>
		아이디를 찾기 위해서 이름과 휴대전화를 입력하세요.
		<br><br><br>
	</div>
	</div>    
	<div style="margin-top:20px;">
		<input type="button" value="아이디 찾기 &gt;" id="btn">
	</div>
	</div>
</body>
</html>