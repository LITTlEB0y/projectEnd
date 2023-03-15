package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.sql.*;

public final class insert3test_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

// Get the form data
request.setCharacterEncoding("UTF-8");
String list2 = session.getAttribute("list2").toString();
String list1 = session.getAttribute("list1").toString();
ArrayList<String> columnNames = (ArrayList<String>) session.getAttribute("dataListinsert");
String[] columnValues = new String[columnNames.size()];

// Get the column values from the form inputs
for (int i = 0; i < columnNames.size(); i++) {
    String columnName = columnNames.get(i);
    String columnValue = request.getParameter(columnName);
    out.println(columnValue);
    columnValues[i] = columnValue;
}
//check
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");

// Check if id already exists in the table
PreparedStatement ps = con.prepareStatement("SELECT * FROM "+list2+" WHERE id = ?");

int id = Integer.parseInt(columnValues[0]);
ps.setInt(1, id);
ResultSet rs = ps.executeQuery();

if (rs.next()) {
 out.println("Error: ID already exists.");
}
else {
// Construct the SQL INSERT statement
String sql = "INSERT INTO " + list2 + " (";
for (int i = 0; i < columnNames.size(); i++) {
    sql += columnNames.get(i);
    if (i < columnNames.size() - 1) {
        sql += ", ";
    }
}
sql += ") VALUES (";
for (int i = 0; i < columnValues.length; i++) {
    sql += "?";
    if (i < columnValues.length - 1) {
        sql += ", ";
    }
}
sql += ")";

// Insert the data into the database
Connection conn = null;
PreparedStatement stmt = null;
try {
    conn = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
    stmt = conn.prepareStatement(sql);
    for (int i = 0; i < columnValues.length; i++) {
        stmt.setString(i + 1, columnValues[i]);
    }
    int numRowsAffected = stmt.executeUpdate();
    String path = "http://localhost:8084/login/databaseSelect3.jsp?list1="+list1+"&listtable="+list2+"";
    response.sendRedirect(path);
    
//    out.println(numRowsAffected + " rows inserted successfully.");
} catch (SQLException ex) {
    out.println(list2);
    out.println("Error: " + ex.getMessage());
    
} finally {
    
   stmt.close();
  conn.close();
}
}

      out.write("\n");
      out.write("       \n");
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
