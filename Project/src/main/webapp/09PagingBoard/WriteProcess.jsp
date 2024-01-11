<%@ page import="model1.board.BoardDAO" %>
<%@ page import="model1.board.BoardDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp" %>
<%
String title = request.getParameter("title");
String content = request.getParameter("content");

BoardDTO dto = new BoardDTO();
dto.setTitle(title);
dto.setContent(content);
dto.setId(session.getAttribute("UserId").toString());

// DAO 객체를 통해 DB에 DTO 저장
BoardDAO dao = new BoardDAO(application);

// 기존 코드
/* int iResult = dao.insertWrite(dto); */

// 더미 데이터를 삽입하기 위핞 코드
int iResult = 0;
for(int i=1; i<=100; i++){
	dto.setTitle(title + "-" + i);
	iResult = dao.insertWrite(dto);
}

dao.close();

if(iResult==1){
	response.sendRedirect("List.jsp");
}else{
	JSFunction.alertBack("글쓰기에 실패하였습니다.", out);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>