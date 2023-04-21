package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.sql.*;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public final class ViewInsert_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

    
//    String list1 = request.getParameter("databaseUpdate");
//    String list2 = request.getParameter("table");
    String list1 = request.getParameter("list1");
   String list2 = request.getParameter("table");
 

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    \n");
      out.write("<!--        <p>Name: ");
      out.print( request.getParameter("databaseUpdate") );
      out.write("</p>\n");
      out.write("        <p>NameID: ");
      out.print( request.getParameter("idupdate") );
      out.write("</p>\n");
      out.write("        <p>Nametable: ");
      out.print( request.getParameter("table") );
      out.write("</p>-->\n");
      out.write("        <style>\n");
      out.write("  /* Style the form container */\n");
      out.write("  .form-container {\n");
      out.write("    width: 50%;\n");
      out.write("    margin: 0 auto;\n");
      out.write("    padding: 20px;\n");
      out.write("    background-color: #f2f2f2;\n");
      out.write("    border-radius: 10px;\n");
      out.write("    box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.75);\n");
      out.write("  }\n");
      out.write("  \n");
      out.write("  /* Style the form inputs */\n");
      out.write("  label, textarea {\n");
      out.write("    display: block;\n");
      out.write("    margin-bottom: 10px;\n");
      out.write("    font-size: 18px;\n");
      out.write("    font-weight: bold;\n");
      out.write("    color: #333;\n");
      out.write("  }\n");
      out.write("  \n");
      out.write("  textarea {\n");
      out.write("    width: 97%;\n");
      out.write("    max-width: 100%;\n");
      out.write("    height: 100px;\n");
      out.write("    padding: 10px;\n");
      out.write("    font-size: 16px;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    border: 2px solid #ccc;\n");
      out.write("  }\n");
      out.write("  \n");
      out.write("  input[type=\"submit\"] {\n");
      out.write("    background-color: #4CAF50;\n");
      out.write("    color: white;\n");
      out.write("    padding: 10px 20px;\n");
      out.write("    border: none;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    cursor: pointer;\n");
      out.write("    font-size: 18px;\n");
      out.write("  }\n");
      out.write("  \n");
      out.write("  input[type=\"submit\"]:hover {\n");
      out.write("    background-color: #3e8e41;\n");
      out.write("  }\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         \n");
      out.write("        \n");
      out.write("      <h1>Insert Record</h1>\n");
      out.write(" \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write(" ");

    Connection con2 = null;
    Statement stmt2 = null;
    ResultSet rec = null;
    
    
    //id
    Statement stmtID = null;
   ResultSet rsID = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con2 = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
        stmt2 = con2.createStatement();
        rec=stmt2.executeQuery("SELECT * FROM " + list2 +" limit 0,150" );
      
        


  
  
//  find id
ArrayList<String> columnNames = new ArrayList<>();
  int columns5 = rec.getMetaData().getColumnCount();
  
 for (int i2 = 1; i2 <= columns5; i2++) {
     
 columnNames.add(rec.getMetaData().getColumnName(i2));
 //ใส่array
     session.setAttribute("ViewdataListinsert", columnNames);
 }



  

  

 

  // HTML form
  String formHtml = "<div class='form-container'><form action='ViewInsert3test.jsp' method='post'>";
  
  
  formHtml += "<input type='hidden' name='tableName' value='" + list2 + "'>";
formHtml += "<input type='hidden' name='list1' value='" + list1 + "'>";
  
    for (String columnName : columnNames) {
      
      
      formHtml += "<label>" + columnName + "</label>";
      
      
      formHtml += "<textarea name='" + columnName + "'>"+"</textarea><br>";
      
    }
  
  formHtml += "<input type='submit' value='Insert'>";
  formHtml += "</form></div>";
 

  // Close the database connection
 
  rec.close();
  stmt2.close();

  
  
  

  // Output the HTML form
  out.println(formHtml);
 
 
 
 
 
 
 
 
 
 
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("    ");
} catch (Exception e) {
//        out.println(e.getMessage());
        e.printStackTrace();
    } 

      out.write("\n");
      out.write("            </body>\n");
      out.write("            </html>\n");
      out.write("\n");
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
