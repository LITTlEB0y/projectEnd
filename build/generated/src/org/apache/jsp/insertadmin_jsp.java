package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class insertadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');

   request.setCharacterEncoding("UTF-8");
   
    String name = session.getAttribute("usernamein").toString();
     
    String age = session.getAttribute("idadmin").toString();
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/converterdb?user=root&password=");
        if (request.getParameter("submit") != null) {
    String config2 = request.getParameter("ordersql");
    String KeyData2 = request.getParameter("KeyData");
    String table1R = request.getParameter("table1");
    String table2R = request.getParameter("table2");
    String table3R = request.getParameter("table3");
    String table4R = request.getParameter("table4");
    String table5R = request.getParameter("table5");
    String sql = "INSERT INTO config (config, create_by,KeyData,table1,table2,table3,table4,table5) VALUES (?,?,?,?,?,?,?,?)";
    PreparedStatement statement = con.prepareStatement(sql);
    statement.setString(1, config2);
    statement.setString(2, name);
    statement.setString(3, KeyData2);
    statement.setString(4, table1R);
    statement.setString(5, table2R);
    statement.setString(6, table3R);
    statement.setString(7, table4R);
    statement.setString(8, table5R);
    int rowsInserted = statement.executeUpdate();
    String path = "./adminBest.jsp";
    response.sendRedirect(path);
    statement.close();
}

con.close();
    } catch (Exception e) {
        out.println(e);
      
  
  

    }

      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<title>Insert Data into MySQL Table</title>\n");
      out.write("        <style>\n");
      out.write("\t\tbody {\n");
      out.write("\t\t\tbackground-color: #F7F7F7;\n");
      out.write("\t\t\tfont-family: Arial, sans-serif;\n");
      out.write("\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\tform {\n");
      out.write("\t\t\tbackground-color: #FFFFFF;\n");
      out.write("\t\t\tborder-radius: 5px;\n");
      out.write("\t\t\tbox-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);\n");
      out.write("\t\t\tmargin: 50px auto;\n");
      out.write("\t\t\tmax-width: 500px;\n");
      out.write("\t\t\tpadding: 30px;\n");
      out.write("\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\tlabel {\n");
      out.write("\t\t\tcolor: #333333;\n");
      out.write("\t\t\tdisplay: block;\n");
      out.write("\t\t\tfont-size: 16px;\n");
      out.write("\t\t\tfont-weight: bold;\n");
      out.write("\t\t\tmargin-bottom: 10px;\n");
      out.write("\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\tinput[type=\"text\"] {\n");
      out.write("\t\t\tborder: 1px solid #CCCCCC;\n");
      out.write("\t\t\tborder-radius: 3px;\n");
      out.write("\t\t\tfont-size: 16px;\n");
      out.write("\t\t\tmargin-bottom: 20px;\n");
      out.write("\t\t\tpadding: 10px;\n");
      out.write("\t\t\twidth: 100%;\n");
      out.write("\t\t\t\n");
      out.write("\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\tinput[type=\"submit\"] {\n");
      out.write("\t\t\tbackground-color: #009688;\n");
      out.write("\t\t\tborder: none;\n");
      out.write("\t\t\tborder-radius: 3px;\n");
      out.write("\t\t\tcolor: #FFFFFF;\n");
      out.write("\t\t\tcursor: pointer;\n");
      out.write("\t\t\tfont-size: 16px;\n");
      out.write("\t\t\tpadding: 10px;\n");
      out.write("\t\t\ttransition: background-color 0.3s ease-in-out;\n");
      out.write("\t\t\twidth: 100%;\n");
      out.write("                        \n");
      out.write("\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\tinput[type=\"submit\"]:hover {\n");
      out.write("\t\t\tbackground-color: #008080;\n");
      out.write("\t\t}\n");
      out.write("                #ordersql {\n");
      out.write("        font-size: 26px; /* set the font size to 16 pixels */\n");
      out.write("    }\n");
      out.write("                #KeyData,#table1,#table2,#table3,#table4,#table5 {\n");
      out.write("        font-size: 20px; /* set the font size to 16 pixels */\n");
      out.write("    }\n");
      out.write("\t</style>\n");
      out.write("        \t\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<form method=\"post\" action=\"insertadmin.jsp\">\n");
      out.write("\t\t<label for=\"config\">Config:</label>\n");
      out.write("<!--\t\t<input type=\"text\" name=\"ordersql\" id=\"ordersql\" ><br>-->\n");
      out.write("                <textarea name='ordersql'  id='ordersql' rows='13' style=\"width: 100%;height: 200px;resize: vertical; overflow-y: auto; wrap='hard'\"></textarea><br>\n");
      out.write("\t\t<label >KeyData:</label><textarea name='KeyData' id='KeyData' rows='2' style=\"width: 130px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard' \"></textarea><br>\n");
      out.write("                <label >table1:</label><textarea name='table1' id='table1' rows='2' style=\"width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard' \"></textarea><br>\n");
      out.write("                <label >table2:</label><textarea name='table2' id='table2' rows='2' style=\"width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard' \"></textarea><br>\n");
      out.write("                <label >table3:</label><textarea name='table3' id='table3' rows='2' style=\"width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard' \"></textarea><br>\n");
      out.write("                <label >table4:</label><textarea name='table4' id='table4' rows='2' style=\"width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard' \"></textarea><br>\n");
      out.write("                <label >table5:</label><textarea name='table5' id='table5' rows='2' style=\"width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard' \"></textarea><br>\n");
      out.write("                <br><input type=\"submit\" name=\"submit\" value=\"Submit\">\n");
      out.write("\t</form>\n");
      out.write("    <script>\n");
      out.write("  let textarea = document.getElementById('ordersql');\n");
      out.write("\n");
      out.write("  textarea.addEventListener('input', function () {\n");
      out.write("    this.style.height = 'auto';\n");
      out.write("    this.style.height = this.scrollHeight + 'px';\n");
      out.write("  });\n");
      out.write("</script>\n");
      out.write("</body>\n");
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
