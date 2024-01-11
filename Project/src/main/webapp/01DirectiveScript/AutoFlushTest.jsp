<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="1kb" autoFlush="false"%> <!--  버퍼 설정 -->
	<!-- 
		JSP는 화면상에 내용을 출력할 때 항상 버퍼에 먼저 저장한다.
		buffer 속성을 통해 버퍼의 용량을 설정할 수 있고
		autoFlush 속성을 통해 버퍼가 꽉 찬 경우 내보내기 할 지를 설정한다.
	 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - buffer, autoFlush 속성</title>
</head>
<body>
<% 
	/*
		for문을 통해 10글자(10byte)를 100번 반복해서 출력하므로 1,000byte가 된다.
		해당 페이지의 용량은 1kb를 초과하게 되어 실행 시 에러가 발생한다.
		해결방법은 buffer 용량을 늘리거나, autoFlush를 true로 변경
	*/
for(int i=1; i<=100; i++){	//버퍼 채우기
	out.println("adcde12345");
}
	/*
		위와 같은 이유로 JSP에서 buffer의 용량을 지정하는 경우는 거의 없음.
	*/
%>

</body>
</html>