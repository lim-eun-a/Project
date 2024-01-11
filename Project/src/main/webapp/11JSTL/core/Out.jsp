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
	<c:set var="iTag">
		i 태그는 <i>기울임</i>을 표현합니다.
	</c:set>
	
	<!-- HTML이 그대로 출력 -->
	<h4>기본 사용</h4>
	<c:out value="${iTag }" />
	
	<!-- false가 되면 HTML태그가 적용되어 출력. 즉, innerHTML()과 동일 -->
	<h4>escapeXml 속성</h4>
	<c:out value="${iTag }" escapeXml="false"/>
	
	<h4>default 속성</h4>
	<c:out value="${param.name}" default="이름 없음" />
	<!-- value속성이 null이면 default값이 출력되고, 빈 값인 경우 출력되지 않음 -->
	<c:out value="" default="빈 문자열도 값입니다."/>
</body>
</html>