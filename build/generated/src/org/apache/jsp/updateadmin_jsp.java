package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public final class updateadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

   request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("config");
   String KeyDataUp = request.getParameter("KeyData");
   String table1Up = request.getParameter("table1");
   
   String table2Up = request.getParameter("table2");
   String table3Up = request.getParameter("table3");
   String table4Up = request.getParameter("table4");
   String table5Up = request.getParameter("table5");
  String age = session.getAttribute("idadmin").toString();
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/converterdb?user=root&password=");
        PreparedStatement ps = con.prepareStatement("UPDATE config SET config=?,KeyData=?,table1=?,table2=?,table3=?,table4=?,table5=? WHERE id=?");
        ps.setString(1, name);
        ps.setString(2, KeyDataUp);
        ps.setString(3, table1Up);
        ps.setString(4, table2Up);
        ps.setString(5, table3Up);
        ps.setString(6, table4Up);
        ps.setString(7, table5Up);
        ps.setString(8, age);
        
        int result = ps.executeUpdate();
        if (result > 0) {
            out.println("Record updated successfully");
            String path = "./adminBest.jsp";
            response.sendRedirect(path);
        } else {
            out.println("Record not found or update failed");
        }
        con.close();
    } catch (Exception e) {
        out.println(e);
    }

      out.write('\n');
      out.write('\n');
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
