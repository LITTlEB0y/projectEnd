package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Iterator;
import com.mongodb.util.JSON;
import java.net.URLDecoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.sql.*;
import org.json.*;

public final class ViewUpdate2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <h1>Update Record</h1>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      \n");
      out.write("        ");

            request.setCharacterEncoding("UTF-8");
             String list1 = request.getParameter("list1");
    String list2 = request.getParameter("table");
            
    String data = request.getParameter("data");
    if(data != null) {
    data = data.replaceAll("(?i)null", "ว่าง");
    
}

    
 
  JSONObject jsonObject = new JSONObject(data);
  String sqlQuery = "SELECT * FROM " + list2 + " WHERE ";
  
int i = 0;
  for (String key : jsonObject.keySet()) {
     
      if(!jsonObject.get(key).toString().equals("ว่าง")&&!jsonObject.get(key).toString().equals("ไพลิน  ปัญญาทะ")){
      if(jsonObject.get(key).toString().length()<18){
  if (i > 0) {
    sqlQuery += " AND ";
    
  }
  
  
    sqlQuery += key + " = ?";
   
  
  i++;
  
      }}
      
  }
  
  sqlQuery += " LIMIT 1";
 
Connection connection = null;
PreparedStatement stmt = null;
ResultSet rs = null;
    try {
    
       
Class.forName("com.mysql.cj.jdbc.Driver");

    
    connection = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
   
    stmt = connection.prepareStatement(sqlQuery);
    
    i = 1;
    for (Object value : jsonObject.toMap().values()) {
        if(!value.toString().equals("ว่าง")&&!value.toString().equals("ไพลิน  ปัญญาทะ")){
        if(value.toString().length()<18){
   if (value.toString() != null) {
    stmt.setString(i, value.toString());
  }else {
    stmt.setString(i, "null");
  } 
        
      i++;
      //out.print(i+"**=++"+value.toString().length()+"//");
        }}
        
    }
    rs = stmt.executeQuery();
    ResultSetMetaData rsmd = rs.getMetaData();
    int columnCount = rsmd.getColumnCount();
    ArrayList<String> columnNames = new ArrayList<>();
    for (int c = 1; c <= columnCount; c++) {
        String columnName = rsmd.getColumnName(c);
        columnNames.add(columnName);
        
    }
    session.setAttribute("dataListView", columnNames);
//out.println(stmt);
// Generate the HTML form
  String formHtml = "<div class='form-container'><form action='ViewUpdate3test.jsp' method='post'>";
  formHtml += "<input type='hidden' name='tableName' value='" + list2 + "'>";
formHtml += "<input type='hidden' name='list1' value='" + list1 + "'>";
  formHtml += "<input type='hidden' name='id' value='" + data + "'>";
  while (rs.next()) {
    for (String columnName : columnNames) {
      String columnValue = rs.getString(columnName);
      formHtml += "<label>" + columnName + ":</label>";
      
      formHtml += "<textarea name='" + columnName + "'>" + columnValue + "</textarea><br>";
      
    }
  }
  formHtml += "<input type='submit' value='Update'>";
  formHtml += "</form></div>";

rs.close();

  out.println(formHtml);
//        int rowsAffected = stmt.executeUpdate();
 //String path = "http://localhost:8084/login/ViewSelect4.jsp?list1="+list1+"&listtable="+list2+"";
 //response.sendRedirect(path);
  

// Close the database connection
  
 // out.println(rowsAffected + " rows deleted");
} catch (Exception e) {
        out.println(e);
    }finally {
    if (stmt != null) {
      stmt.close();
    }
    if (connection!= null) {
      connection.close();
    }
  }

      out.write("\n");
      out.write("        \n");
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
