<%@page import="common.MyClass"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!	
//선언부 파일 경로: C:\Dev\apache-tomcat-10.1.17\work\Catalina\localhost\MustHaveJSP\org\apache\jsp\_01DirectiveScript
//_jspservice메소드 밖에 존재
public int add(int num1, int num2){
	return num1 + num2;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트요소</title>
</head>
<body>
	<!--
		스크립트릿(Scriptlet): 주로 JSP코드를 작성하고 실행할 때 사용한다.
							_jspservice 메소드 내에 존재
		표현식(Expression): 변수를 웹브라우저상에 출력할 때 사용한다. 
 	-->
	<%
	int result = add(10,20);
	%>
	덧셈 결과1: <%=result %><br/>
	덧셈 결과1: <%=add(30,40) %>

	<h2>내가 만든 JAVA클래스의 메소드 호출하기</h2>
	<%
	int sum = MyClass.myFunc(1, 26);
	out.println("1~26까지의 합 = " + sum);
	%>
</body>
</html>