package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class adminBest_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Retrieve Order by ID</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            body{\n");
      out.write("    color: white;\n");
      out.write("    background-color: #DAF7FF;\n");
      out.write("    padding: 20px;\n");
      out.write("    top:0;\n");
      out.write("    left:0;\n");
      out.write("    right:0;\n");
      out.write("    z-index: 10;\n");
      out.write("    background: #4261cf;\n");
      out.write("  background: -moz-linear-gradient(45deg, #9ca0a6 0%, #bac2cc 100%);\n");
      out.write("  background: -webkit-gradient(linear, left bottom, right top, color-stop(0%, #9ca0a6), color-stop(100%, #bac2cc));\n");
      out.write("  background: -webkit-linear-gradient(45deg, #9ca0a6 0%, #bac2cc 100%);\n");
      out.write("  background: -o-linear-gradient(45deg, #9ca0a6 0%, #bac2cc 100%);\n");
      out.write("  background: -ms-linear-gradient(45deg, #9ca0a6 0%, #bac2cc 100%);\n");
      out.write("  background: linear-gradient(45deg, #9ca0a6 0%, #bac2cc 100%);\n");
      out.write("  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='$gradient-start', endColorstr='$gradient-end',GradientType=1 );\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("input[type=text], select {\n");
      out.write("  width: 100%;\n");
      out.write("  padding: 12px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  display: inline-block;\n");
      out.write("  border: 1px solid #ccc;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input[type=submit] {\n");
      out.write("  width: 20%;\n");
      out.write("  background-color: #4CAF50;\n");
      out.write("  color: black;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write("input.delete{\n");
      out.write("    width: 20%;\n");
      out.write("  background-color: red;\n");
      out.write("  color: black;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input[type=submit]:hover {\n");
      out.write("  background-color: #45a049;\n");
      out.write("}\n");
      out.write("\n");
      out.write("div {\n");
      out.write("  border-radius: 5px;\n");
      out.write("  background-color: #f2f2f2;\n");
      out.write("  padding: 20px;\n");
      out.write("}\n");
      out.write("label{\n");
      out.write("    color: black;\n");
      out.write("}\n");
      out.write("p{\n");
      out.write("    color: black;\n");
      out.write("}\n");
      out.write("button{\n");
      out.write("    width: 20%;\n");
      out.write("  background-color: #4CAF50;\n");
      out.write("  color: black;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("        <h1>Retrieve Order by ID</h1>\n");
      out.write("\n");
      out.write("  ");

      // Get the submitted username and password
  Connection con = null;
    // Connect to the MySQL database
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginpend?user=root&password=");

    // Query the database for the list of IDs
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT id FROM tableorder");

    // Create a drop-down list with the list of IDs
    out.print("<form method=\"post\">");
    out.print("<select name=\"id\">");
    while (rs.next()) {
      out.print("<option value=\"" + rs.getString("id") + "\">" + rs.getString("id") + "</option>");
    }
    out.print("</select>");
    out.print("<input type=\"submit\" value=\"Retrieve Order\">");
    out.print("</form>");

    // If the form has been submitted, retrieve and display the order value
    if (request.getMethod().equals("POST")) {
      String id = request.getParameter("id");
      session.setAttribute("idadmin", new String(id));
      PreparedStatement ps = con.prepareStatement("SELECT `ordersql` FROM tableorder WHERE id=?");
      ps.setString(1, id);
      rs = ps.executeQuery();
      if (rs.next()) {
        out.print("<p>Order for ID " + id + ": " + rs.getString("ordersql") + "</p>");
        String inputupdateadmin = "<form action='updateadmin.jsp' method='post'>";
        inputupdateadmin +="<label>Order:</label>";
        inputupdateadmin +="<input type='text' name='ordersql' value='"+rs.getString("ordersql")+"'><br>";
        inputupdateadmin +="<input type='submit' value='Update'>";
        inputupdateadmin += "</form>";
        
        String buttonInsert="<form method='get' action='insertadmin.jsp'>";
        buttonInsert +="<button type='submit'>Insert</button>";
        buttonInsert +="</form>";
        
        String buttonDelete = "<form action='deleteadmin.jsp' method='post'>" +
                      "<input type='hidden' name='id' value='" + id + "'>" +
                      "<input type='submit' class='delete' value='Delete'>" +
                      "</form>";
        
        
        
        out.print(inputupdateadmin);
        out.print(buttonInsert);
        out.print(buttonDelete);
      } else {
        out.print("<p>Invalid ID</p>");
      }
      ps.close();
    }

    // Close the database connection
    rs.close();
    stmt.close();
    con.close();
  
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
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
