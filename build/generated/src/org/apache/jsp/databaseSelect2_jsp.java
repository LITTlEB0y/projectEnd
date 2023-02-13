package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class databaseSelect2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    ");
String[] select=new String[1];
      out.write("  \n");
      out.write("    <body>\n");
      out.write("        <style>\n");
      out.write("table {\n");
      out.write("  font-family: arial, sans-serif;\n");
      out.write("  border-collapse: collapse;\n");
      out.write("  width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("td, th {\n");
      out.write("  border: 1px solid #dddddd;\n");
      out.write("  text-align: left;\n");
      out.write("  padding: 8px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("        <form action=\"databaseSelect2.jsp\">\n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("        <select name=\"list1\" id=\"list1\">\n");
      out.write("            <option>Select</option>\n");
      out.write("            ");

   
   Connection conn = null;
   Statement stmt = null;
   
   

   try{
      Class.forName("com.mysql.jdbc.Driver");

//     out.println("Connecting to database...");
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"?user=root&password=");

//      out.println("Creating statement...");
      stmt = conn.createStatement();
      String sql;
      sql = "SHOW DATABASES";
      ResultSet rs = stmt.executeQuery(sql);

      while(rs.next()){
         String dbname = rs.getString("Database");
         
      out.write("\n");
      out.write("    <option>");
      out.print(rs.getString("Database"));
      out.write("</option> \n");
      out.write("   \n");

//         out.println("dbname: " + dbname);
         
      }
      select[0]=request.getParameter("list1");

      rs.close();
      stmt.close();
      conn.close();
   }catch(SQLException se){
      se.printStackTrace();
   }catch(Exception e){
      e.printStackTrace();
   }finally{
      try{
         if(stmt!=null)
            stmt.close();
      }catch(SQLException se2){
      }
      try{
         if(conn!=null)
            conn.close();
      }catch(SQLException se){
         se.printStackTrace();
      }
   }






            
      out.write("\n");
      out.write("        </select>\n");
      out.write("     \n");
      out.write("<!--        table select-->\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <button type=\"submit\">Submit</button>\n");
      out.write("    </center>\n");
      out.write("          </form> \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");

        ////////////////////
        String list1 = request.getParameter("list1");
        
        out.print("<script> document.getElementById('list1').value = '"+list1+"'; </script>");
        ////////////////////

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("function myFunction ()\n");
      out.write("{\n");
      out.write("    var listtable = document.getElementById('listtable').value;\n");
      out.write("    var current_page = window.location.href;\n");
      out.write("    var new_page = current_page+\"&listtable=\"+listtable;\n");
      out.write("    alert(new_page+'');\n");
      out.write("    //document.getElementById('listtable').value = '\"+listtable+\"';\n");
      out.write("    window.location.href = new_page;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("    ");

        String list2 = request.getParameter("listtable");
    out.print(list2);
    
    
      out.write("\n");
      out.write("        <script> document.getElementById('listtable').value = list2;</script>\n");
      out.write("    \n");
      out.write("    <!--<form action=\"databaseSelect2.jsp\">-->\n");
      out.write("    <select name=\"listtable\" id=\"listtable\" value=\"list2\">\n");
      out.write("            <option value=list2>Select</option>\n");
      out.write("    ");

        

        
        
        
                
  
        //   table
   Connection conntable = null;
   Statement stmttable = null;
ResultSet rstable=null;
String database="";
String table="";
try {

conntable = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+select[0]+"?user=root&password=");
database=request.getParameter("list1");
stmttable = conntable.createStatement();
      String querytable = "SHOW TABLES";
      rstable = stmttable.executeQuery(querytable);
      
      
      while(rstable.next()) { 
         String tablename = rstable.getString(1);
         out.println("tablename: " + tablename);
      

      out.write("\n");
      out.write("<option>");
      out.print(rstable.getString(1));
      out.write("</option>\n");
      out.write("\n");

  }  
} catch (Exception e) {
        e.printStackTrace();
        
    }
      out.write("</select>\n");
      out.write("       \n");
      out.write("<!--        table select-->\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <button onclick=\"myFunction()\">Click me</button>\n");
      out.write("<!--<button type=\"submit\">Submittable</button>-->    \n");
      out.write("        \n");
      out.write("   <!--</form>-->    \n");
      out.write("\n");
      out.write("\n");
out.println(select[0]);
      out.write(' ');
      out.write('\n');
out.println(select[0]);
      out.write(' ');
      out.write('\n');
out.println(select[0]);
      out.write(" \n");
      out.write("<h1>Hello World! ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.list1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(' ');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.listtable}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h1>\n");
      out.write("        \n");
      out.write("    ");

    Connection con2 = null;
    Statement stmt2 = null;
    ResultSet rec = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con2 = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
        stmt2 = con2.createStatement();
        rec=stmt2.executeQuery("SELECT * FROM " + list2 +" limit 0,150" );
        String table2 = "<table><tr>";
  int columns = rec.getMetaData().getColumnCount();
  for (int i = 1; i <= columns; i++) {
    table2 += "<th>" + rec.getMetaData().getColumnName(i) + "</th>";
  }
  table2 += "</tr>";
  while (rec.next()) {
    table2 += "<tr>";
    for (int i = 1; i <= columns; i++) {
      Object data = rec.getObject(i);
      table2 += "<td>" + data + "</td>";
    }
    table2 += "</tr>";
  }
  table2 += "</table>";
      out.write("\n");
      out.write("  ");
      out.print( table2 );
      out.write("\n");
      out.write("    ");
} catch (Exception e) {
        out.println(e.getMessage());
        e.printStackTrace();
    } 

      out.write("\n");
      out.write("       \n");
      out.write("\n");
      out.write("\n");
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
