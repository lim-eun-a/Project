<%@page import="utils.BoardPage"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="model1.board.BoardDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="model1.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<%
//DB���� �� CRUD�۾��� ���� DAO��ü�� �����Ѵ�.
BoardDAO dao = new BoardDAO(application);

/*
�˻�� �ִ� ��� Ŭ���̾�Ʈ�� ������ �ʵ��� �˻�� ������ 
Map�÷����� �����Ѵ�.
*/
Map<String, Object> param = new HashMap<String, Object>();
/*
�˻������� �Է��� �˻���� �ʵ���� �Ķ���ͷ� �޾ƿ´�.
�ش� <form>�� ���۹���� get, action�Ӽ��� ���� �����̹Ƿ�
���� �������� ������ ���۵ȴ�.
*/
String searchField = request.getParameter("searchField");
String searchWord = request.getParameter("searchWord");
//����ڰ� �Է��� �˻�� �ִٸ�...
if (searchWord != null) {
/* Map�÷��ǿ� �÷���� �˻�� �߰��Ѵ�. */
param.put("searchField", searchField);
param.put("searchWord", searchWord);
}
//Map�ݷ����� �μ��� �Խù��� ������ ī��Ʈ�Ѵ�.
int totalCount = dao.selectCount(param);  

/*** ����¡ �ڵ� �߰� �κ� ***/
//web.xml�� ������ ���ؽ�Ʈ �ʱ�ȭ �Ķ���͸� �о�ͼ� ��������� ����
//����(int)�� ��ȯ�Ѵ�. ��ü �������� ���
int pageSize = 
Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
int blockPage = 
Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));
/*
��ü ���������� ����Ѵ�.
(��ü �Խù����� / �������� ����� �Խù� ����) => ������� �ø�ó��
���� �Խù��� ������ 51����� �������� ����� 5.1�� �ȴ�. �̶� ������
�ø�ó�� �Ͽ� 6�������� ������ �ȴ�.
���� totalcount�� double�� ����ȯ���� ������ ������ ����� �����ԵǹǷ�
6�������� �ƴ϶� 5�������� �˴ϴ�. ���� �����ؾ� �Ѵ�.
*/
int totalPage = (int)Math.ceil((double)totalCount / pageSize); 	// ��ü ��������

/*
��Ͽ� ó�� �������� ���� ���������� �Ķ���Ͱ� ���� �����̹Ƿ� ������ 
1page�� �����Ѵ�. ���� �Ķ���� pageNum�� �ִٸ� request���尴ü�� ����
�޾ƿ� �� ��������ȣ�� �����Ѵ�.
List.jsp => �̿Ͱ��� �Ķ���Ͱ� ���� �����϶��� null
List.jsp?pageNum= => �̿Ͱ��� �Ķ���ʹ� �ִµ� ���� ���� ���� ������
	üũ�ȴ�. ������ �Ʒ� if���� 2���� �������� �����ؾ� �Ѵ�.
*/
//���� ������ Ȯ��
int pageNum = 1; 
String pageTemp = request.getParameter("pageNum");
if (pageTemp != null && !pageTemp.equals(""))
pageNum = Integer.parseInt(pageTemp); 	// ��û���� �������� ����

/*
�Խù��� ������ ����Ѵ�.
�� �������� ���۹�ȣ�� �����ȣ�� ������������ȣ�� ����������� ����
����� �� DAO�� �����ϱ� ���� Map�÷��ǿ� �߰��Ѵ�.
*/
//��Ͽ� ����� �Խù� ���� ���
int start = (pageNum - 1) * pageSize + 1;	// ù �Խù� ��ȣ
int end = pageNum * pageSize;	// ������ �Խù� ��ȣ
param.put("start", start);
param.put("end", end);
/*** ����¡ �ڵ� �߰� �κ� end ***/

//��Ͽ� ����� �Խù��� �����Ͽ� ��ȯ�޴´�.
List<BoardDTO> boardLists = dao.selectListPage(param);
//�ڿ�����
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../Common/Link.jsp" />
<div style="margin-top:70px;"></div>
<h1 align="center">COMMUNITY</h1>
    <form method="get">  
    <table class="table table-hover" border="1" width="90%" align="center">
    <tr>
        <td align="center">
        	<!-- �˻� �׸�(searchField)�� ����� ���� �� ���� -->
            <select name="searchField"> 
                <option value="title">����</option> 
                <option value="content">����</option>
            </select>
            <input type="text" name="searchWord" />
            <input type="submit" value="�˻��ϱ�" />
        </td>
    </tr>   
    </table>
    </form>
    <!-- �Խù� ��� ���̺�(ǥ) -->
    <table class="table table-hover" border="1" width="90%" align="center">
    	<!-- �� �÷��� �̸� -->
        <tr>
            <th width="10%">��ȣ</th>
            <th width="50%">����</th>
            <th width="15%">�ۼ���</th>
            <th width="10%">��ȸ��</th>
            <th width="15%">�ۼ���</th>
        </tr>
        <!-- ����� ���� -->
<%
if (boardLists.isEmpty()) {
%>
        <tr>
            <td colspan="5" align="center">
                ��ϵ� �Խù��� �����ϴ�^^*
            </td>
        </tr>
<%
}
else {
	// ����� �Խù��� �ִ� ��쿡�� Ȯ�� for������ List�÷��ǿ�
	// ����� �������� ������ŭ �ݺ��Ͽ� ����Ѵ�.
    int virtualNum = 0; 
	
 	// �������� ����� �����ȣ�� ����ϱ� ���� ������ ����
    int countNum = 0;
 	
    for (BoardDTO dto : boardLists)
    {
    	// ���� ����� �Խù��� ������ ���� ��¹�ȣ�� �޶����Ƿ�
    	// totalCount�� ����Ͽ� �����ȣ�� �ο��Ѵ�.
       /*  virtualNum = totalCount--;    */
       
       	// ���� ��������ȣ�� ������ �����ȣ ����ϱ�
    	// ��ü �Խù��� - (((����������-1)*��������°���) + countNum����ġ)
    	virtualNum = totalCount - (((pageNum - 1) * pageSize) + countNum++);
       
%>
        <tr align="center">
        	<!-- �Խù��� ���� ��ȣ -->
            <td><%= virtualNum %></td>  
            <!-- ���� -->
            <td align="left"> 
            	<!--  �Խù��� �Ϸù�ȣ�� �Ű������� ���� -->
                <a href="View.jsp?num=<%= dto.getNum() %>"><%= dto.getTitle() %></a> 
            </td>
            <!-- �ۼ��� ���̵� -->
            <td align="center"><%= dto.getId() %></td>    
            <!-- ��ȸ�� -->       
            <td align="center"><%= dto.getVisitcount() %></td>   
            <!-- �ۼ��� -->
            <td align="center"><%= dto.getPostdate() %></td>    
        </tr>
<%
    }
}
%>
    </table>
   
    <table class="table table-hover" border="1" width="90%" align="center">
        <tr align="right">
        	<td align="center">
        		<!-- 
        			totalCount : ��ü �Խù��� ����
        			pageSize : ���������� ����� �Խù��� ����
        			blockPage : �Ѻ��� ����� ��������ȣ�� ����
        			pageNum : ���� ������ ��ȣ
        			request.getRequestURI() : request���尴ü�� ���� ������������
        				HOST�� ������ ������ ��θ��� ���� �� �ִ�. ���⼭ ����
        				��θ��� ���� "��ϸ�.jsp?pageNum=��������ȣ"�� ���� �ٷ�
        				���� ��ũ�� �����Ѵ�.
        		 -->
        		<% 
        		System.out.println("������="+ request.getRequestURI());
        		%>
        		<%= BoardPage.pagingStr(totalCount, pageSize,
                       blockPage, pageNum, request.getRequestURI()) %> 
        	</td>
            <td><button type="button" onclick="location.href='Write.jsp';">�۾���
                </button></td>
        </tr>
    </table>
</body>
</html>