<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 변수 선언 -->
	<c:set var="number" value="100" />
	<c:set var="string" value="JSP" />
	
	<h4>JSTL의 if 태그로 짝수/홀수 판단하기</h4>
	<c:if test="${number mod 2 eq 0 }" var="result">
		${number }는 짝수입니다. <br/>
	</c:if>
	result: ${result }<br/>
	
	<h4>문자열 비교와 else 구문 흉내내기</h4>
	<c:if test="${string eq 'Java' }" var="result2">
		문자열은 Java입니다.<br/>
	</c:if>
	<c:if test="${not result2 }">
		'Java'가 아닙니다. <br/>
	</c:if>
	
	<h4>조건식 주의사항</h4>
	<c:if test="100" var="result3">
		EL이 아닌 정수를 지정하면 false
	</c:if>
	result3: ${result3 }<br/>
	
	<c:if test="tRuE" var="result4">
		대소문자 구분 없이 "tRuE"인 경우 true <br/>
	</c:if>
	result4: ${result4 } <br/>
	
	<c:if test="${ true }" var="result5">
		EL 양쪽에 빈 공백이 있는 경우 false<br/>
	</c:if>
	result5: ${result5 } <br/>
	
	<c:if test="${true}" var="result6">
		EL 양쪽에 빈 공백이 있는 경우 false<br/>
	</c:if>
	result6: ${result6 } <br/>
	
	
	
	<h4>연습문제: if태그</h4>
	<!-- 
		아이디, 패스워드를 입력 후 submit버튼을 누르면 EL식을 통해 파라미터를 받은 후 musthave/1234인 경우 
		'musthave님, 반갑습니다~'이라고 출력한다.
	-->
	<form method="get">
		아이디: <input type="text" name="user" />	
		<br/>
		패스워드: <input type="text" name="pass" />
		<br/>
		<input type="submit" value="로그인" />
	</form>
	
	<c:if test="${not empty param.user }">
		전송된 아이디: ${param.user }<br/>
		전송된 패스워드: ${param.pass }<br/>
	</c:if>
	<c:if test= "${param.user eq 'musthave' and param.pass eq '1234'}">
		musthave님 반갑습니다.
	</c:if>
</body>
</html>








