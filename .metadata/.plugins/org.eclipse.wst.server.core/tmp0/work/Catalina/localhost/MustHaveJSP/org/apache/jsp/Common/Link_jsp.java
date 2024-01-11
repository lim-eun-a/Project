/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.17
 * Generated at: 2024-01-11 02:03:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Common;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class Link_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"http://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css\">\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<nav class=\"navbar navbar-expand-sm bg-light navbar-light\">\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("          <a class=\"navbar-brand\" href=\"NewFile1.jsp\">\r\n");
      out.write("            <img src=\"https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png\" \r\n");
      out.write("            	 style=\"width:50px;\">\r\n");
      out.write("          </a>\r\n");
      out.write("          \r\n");
      out.write("          <div class=\"collapse navbar-collapse justify-content-center\" id=\"collapsibleNavbar\">\r\n");
      out.write("            <ul class=\"navbar-nav\">\r\n");
      out.write("              <li class=\"navbar-brand\">\r\n");
      out.write("                <a class=\"nav-link\" href=\"../09PagingBoard/List.jsp\">자유게시판</a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"navbar-brand\">\r\n");
      out.write("                <a class=\"nav-link\" href=\"#\">자료실</a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"navbar-brand\">\r\n");
      out.write("                <a class=\"nav-link\" href=\"#\">방명록</a>\r\n");
      out.write("              </li>  \r\n");
      out.write("              <li class=\"navbar-brand dropdown\">\r\n");
      out.write("                <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\">드롭다운</a>\r\n");
      out.write("                <ul class=\"dropdown-menu\">\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"#\">SubMenu1</a></li>\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"#\">SubMenu2</a></li>\r\n");
      out.write("                  <li><a class=\"dropdown-item\" href=\"#\">SubMenu3</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("              </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("          </div>\r\n");
      out.write("          \r\n");
      out.write("          <div class=\"collapse navbar-collapse justify-content-end\">\r\n");
      out.write("       		<ul class=\"navbar-nav text-xs text-gray-600\">\r\n");
      out.write("         		");
 if (session.getAttribute("UserId") == null) { 
      out.write("\r\n");
      out.write("           		<li class=\"nav-item\">\r\n");
      out.write("            		<a class=\"nav-link\" href=\"../06Session/LoginForm.jsp\">로그인</a>\r\n");
      out.write("      	   		</li>\r\n");
      out.write("      	   		<li class=\"nav-item\">\r\n");
      out.write("           			<a class=\"nav-link\" href=\"../06Session/IdForm.jsp\">아이디찾기</a>\r\n");
      out.write("           		</li>\r\n");
      out.write("         		<li class=\"nav-item\">\r\n");
      out.write("           			<a class=\"nav-link\" href=\"../06Session/PwForm.jsp\">비밀번호찾기</a>\r\n");
      out.write("         		</li>\r\n");
      out.write("         		<li class=\"nav-item\">\r\n");
      out.write("           			<a class=\"nav-link\" href=\"#\">회원가입</a>\r\n");
      out.write("         		</li>\r\n");
      out.write("         		");
 } else { 
      out.write("\r\n");
      out.write("         		<li class=\"nav-item\">\r\n");
      out.write("           			<a class=\"nav-link\" href=\"../06Session/Logout.jsp\">로그아웃</a>\r\n");
      out.write("           		</li>\r\n");
      out.write("           		<li class=\"nav-item\">\r\n");
      out.write("           			<a class=\"nav-link\" href=\"#\">마이페이지</a>\r\n");
      out.write("         		</li>\r\n");
      out.write("         		");
 } 
      out.write(" \r\n");
      out.write("       		</ul>\r\n");
      out.write("   		</div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
