package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.sql.*;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public final class databaseSelect4New_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    String id = request.getParameter("idupdate");
    String list1 = request.getParameter("databaseUpdate");
    String list2 = request.getParameter("table");
    
    try {
    Statement stmt1 = null;
    ResultSet rec1 = null;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
        con = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
        stmt1 = con.createStatement();
        rec1=stmt1.executeQuery("SELECT * FROM " + list2 +" limit 0,150" );
        ArrayList<String> columnNamesnew = new ArrayList<>();
  int columns1 = rec1.getMetaData().getColumnCount();
  String recordId1 = id;
 for (int i2 = 1; i2 <= columns1; i2++) {
     
 columnNamesnew.add(rec1.getMetaData().getColumnName(i2));
     
 }
        PreparedStatement ps = con.prepareStatement("SELECT * FROM "+list2+" WHERE `" + columnNamesnew.get(0) + "` = ?");
        ps.setString(1, recordId1);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
//            String name = rs.getString("id");
//            String age = rs.getString("antique_age_name");

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
      out.write("  width: 100%;\n");
      out.write("  background-color: #4CAF50;\n");
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
      out.write("        </style>\n");
      out.write("      <h1>Update Record</h1>\n");
      out.write("    <form action=\"update3.jsp\" method=\"post\">\n");
      out.write("                   \n");
      out.write("<!--                    <label>Name:</label>\n");
      out.write("                    <input type=\"text\" name=\"name\" value=\"\"><br><br>\n");
      out.write("                    <label>Age:</label>\n");
      out.write("                    <input type=\"text\" name=\"age\" value=\"\"><br><br>\n");
      out.write("                    <input type=\"submit\" value=\"Update\">-->\n");
      out.write("                </form>\n");
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
        String table2 = "<table><tr>";
        
  int columns = rec.getMetaData().getColumnCount();
  for (int i = 1; i <= columns; i++) {
    table2 += "<th>" + rec.getMetaData().getColumnName(i) +"</th>";
    
  if(i==columns){table2 +="<th>" + "Update" + "</th>";}
  }
  table2 += "</tr>";
  while (rec.next()) {
    
    table2 += "<tr>";
    for (int i = 1; i <= columns; i++) {
      Object data = rec.getObject(i);
      table2 += "<td>" +data+ "</td>";
    
      if(i==columns){table2 +="<th></th>";}
    }
    table2 += "</tr>";
  }
  table2 += "</table>";
  
  
  
  String input2 = "<form action='update3.jsp' method='post'>";
  int columns2 = rec.getMetaData().getColumnCount();
  int columns3 = rec.getMetaData().getColumnCount();
  String strId = request.getParameter("idupdate");
  int idInt = Integer.parseInt(strId);
  
//  find id
ArrayList<String> columnNames = new ArrayList<>();
  int columns5 = rec.getMetaData().getColumnCount();
  int recordId = idInt;
 for (int i2 = 1; i2 <= columns5; i2++) {
     
 columnNames.add(rec.getMetaData().getColumnName(i2));
 //ใส่array
     session.setAttribute("dataList", columnNames);
 }
String sqlId = "SELECT * FROM "+ list2 +" WHERE "+columnNames.get(0)+" = " + recordId;  
  stmtID = con2.createStatement();
    rsID = stmtID.executeQuery(sqlId);
    //ทดสอบ
 // Get a connection to the database
Connection contest = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
 

 String tableName = list2;
// String primaryKey = "id";
  
// out.println(columnNames+"55");
  
  PreparedStatement stmt = contest.prepareStatement("SELECT * FROM " + tableName + " WHERE `" + columnNames.get(0) + "` = ?");
 stmt.setInt(1, recordId);
  ResultSet rsRecord = stmt.executeQuery();
 

  // Generate the HTML form
  String formHtml = "<div><form action='update3test.jsp' method='post'>";
  formHtml += "<input type='hidden' name='tableName' value='" + tableName + "'>";
  formHtml += "<input type='hidden' name='primaryKey' value='" + columnNames.get(0) + "'>";
  formHtml += "<input type='hidden' name='id' value='" + recordId + "'>";
  while (rsRecord.next()) {
    for (String columnName : columnNames) {
      String columnValue = rsRecord.getString(columnName);
      formHtml += "<label>" + columnName + ":</label>";
      if(columnName==columnNames.get(0)){
      formHtml += "<input type='hidden' name='" + columnName + "' value='" + columnValue + "'><br>";
      }else{
      formHtml += "<input type='text' name='" + columnName + "' value='" + columnValue + "'><br>";
      }
    }
  }
  formHtml += "<input type='submit' value='Update'>";
  formHtml += "</form></div>";
  //sent data
session.setAttribute("idUpdate", new Integer(recordId));
session.setAttribute("list1", new String(list1));
session.setAttribute("list2", new String(list2));
  // Close the database connection
  rs.close();
  rsRecord.close();
  stmt.close();
  con.close();
  
  
  

  // Output the HTML form
  out.println(formHtml);
 
 
 
 
 
 
 
 //ทดสอบ
  
  for (int i2 = 1; i2 <= columns2; i2++) {
     
  input2 +="<label>"+ rec.getMetaData().getColumnName(i2) +":</label>";
//  while (rec.next()) {
//      for (int i3 = 1; i3 <= columns3; i3++) {
//          if(i3==2){
//      Object data = rec.getObject(i3);
//  input2 +="<input type='text' value='"+data+"'><br>";
//          }
//      }
//  }
//  if(i2==columns2){input2 +="<input type='submit' value='Update'>";}
//  
  
  if (rsID.next()) {
  
  String column1 = rsID.getString(rec.getMetaData().getColumnName(i2));
  String column2 = rsID.getString(rec.getMetaData().getColumnName(i2+1));
  input2 +="<input type='text' value='"+column1+"'><br>";
  input2 +="<input type='text' value='"+column2+"'><br>";
  } else {
//      out.println("No data found for ID ");
  }
  }
  input2 += "</form>";
 
 
      out.write("\n");
      out.write("  \n");
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
        out.println(e.getMessage());
        e.printStackTrace();
    } 

      out.write("\n");
      out.write("            </body>\n");
      out.write("            </html>\n");

        } else {
            out.println("Record not found");
        }
        con.close();
    } catch (Exception e) {
        out.println(e);
    }

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
