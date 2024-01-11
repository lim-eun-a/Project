package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 서블릿 클래스를 만들기 위한 절차
public class HelloServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;	// 없으면 경고 뜸
	
	//doget + Ctrl + Space 자동완성
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException
	{
		// 리퀘스트 영역에 속성값 저장
		req.setAttribute("message", "Hello Servlet..!!");
		// View에 해당하는 JSP페이지로 포워드
		req.getRequestDispatcher("/12Servlet/HelloServlet.jsp").forward(req, resp);
	}
}
