package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loginp2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"xxx.css\">\n");
      out.write("        \n");
      out.write("       </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"box\">\n");
      out.write("            <span class=\"borderLine\"></span>\n");
      out.write("            <span class=\"borderLine2\"></span>\n");
      out.write("            <form action=\"loginreal.jsp\" method=\"POST\">\n");
      out.write("                \n");
      out.write("                <h2>Log in</h2>\n");
      out.write("                <div class=\"inputBox\">\n");
      out.write("                    <input type=\"text\" required=\"required\" name=\"username\">\n");
      out.write("                    <span>Username</span>\n");
      out.write("                    <i></i>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"inputBox\">\n");
      out.write("                    <input type=\"password\" required=\"required\" name=\"password\">\n");
      out.write("                    <span>Password</span>\n");
      out.write("                    <i></i>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"links\">\n");
      out.write("<!--                    <a href=\"#\">Forgot Password</a>\n");
      out.write("                    <a href=\"#\">Signup</a>-->\n");
      out.write("                </div>\n");
      out.write("                <input type=\"submit\" value=\"Login\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </form>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
