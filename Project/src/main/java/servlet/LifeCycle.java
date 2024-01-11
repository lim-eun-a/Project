package servlet;

import java.io.IOException;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/12Servlet/LifeCycle.do")
public class LifeCycle extends HttpServlet{
	
	// 서블릿 수명주기에서 최초로 호출되는 메서드
	@PostConstruct
	public void myPostConstruct() {
		System.out.println("myPostConstruct() 호출");
	}
	
	// 서블릿 객체 생성 후 딱 한 번만 호출되는 메서드(서블릿을 초기화하는 역할을 함)
	@Override
	public void init() throws ServletException {
		System.out.println("init() 호출");
	}
	
	// 클라이언트의 요청을 분석하기 위해 호출하는 메서드
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		System.out.println("service() 호출");
		super.service(req, resp);
	}
	
	// get방식의 요청을 처리
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		System.out.println("doGet() 호출");
		req.getRequestDispatcher("/12Servlet/LifeCycle.jsp").forward(req, resp);
	}
	
	// post방식의 요청을 처리
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		System.out.println("doPost() 호출");
		req.getRequestDispatcher("/12Servlet/LifeCycle.jsp").forward(req, resp);
	}
	
	// 서블릿이 새롭게 컴파일 되거나 서버가 종료될 때 호출된다.
	@Override
	public void destroy() {
		System.out.println("destroy() 호출");
	}
	
	
	@PreDestroy
	public void mypreDestroy() {
		System.out.println("mypreDestroy() 호출");
	}
}
