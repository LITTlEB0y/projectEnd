package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.json.simple.JSONObject;
import java.sql.*;

public final class ViewSelect4_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<style>\n");
      out.write("    .container {\n");
      out.write("  display: flex;\n");
      out.write("  justify-content: space-between;\n");
      out.write("  align-items: center;\n");
      out.write("  padding: 20px;\n");
      out.write("}\n");
      out.write("    .buttonlogout{\n");
      out.write("     margin-left: auto;\n");
      out.write("  \n");
      out.write("  \n");
      out.write("    }\n");
      out.write("    #logout {\n");
      out.write("  background-color: red;\n");
      out.write("  height: 48px;\n");
      out.write("  position: fixed;\n");
      out.write("    top: 34px;\n");
      out.write("    right: 61px;\n");
      out.write("    border-radius: 10px;\n");
      out.write("}\n");
      out.write("table.dataTable.no-footer {\n");
      out.write(" color: black;   \n");
      out.write("}\n");
      out.write(".dataTables_wrapper table {\n");
      out.write("  border-color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css\" />\n");
      out.write("        <div class=\"container\">\n");
      out.write("    <form action=\"logout.jsp\">\n");
      out.write("        <button style=\"--c:#E95A49\" type=\"submit\" id=\"logout\">Logout</button>\n");
      out.write("    </form>\n");
      out.write("            </div>\n");
      out.write("</head>\n");
String[] select = new String[1];
      out.write("  \n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <style>\n");
      out.write("        table {\n");
      out.write("            font-family: arial, sans-serif;\n");
      out.write("            border-collapse: collapse;\n");
      out.write("            width: 150%;\n");
      out.write("                margin-bottom: 1rem;\n");
      out.write("                table-layout: fixed;\n");
      out.write("        }\n");
      out.write(" \n");
      out.write("        th {\n");
      out.write("            border: 1px solid #dddddd;\n");
      out.write("            text-align: left;\n");
      out.write("            padding: 8px;\n");
      out.write("            border: 1px solid black;\n");
      out.write("        }\n");
      out.write("       td{\n");
      out.write("  white-space: nowrap;\n");
      out.write("    overflow: hidden;\n");
      out.write("    width: 40px;\n");
      out.write("    text-overflow: ellipsis;\n");
      out.write("    border: 1px solid black;\n");
      out.write("   \n");
      out.write("}\n");
      out.write("/*        table {\n");
      out.write("    table-layout: fixed;\n");
      out.write("     width: 800px;\n");
      out.write("    white-space: nowrap;\n");
      out.write("    overflow: hidden;  \n");
      out.write("}\n");
      out.write(" \n");
      out.write("table th {\n");
      out.write("    white-space: nowrap;\n");
      out.write("    overflow: hidden;\n");
      out.write("}\n");
      out.write(" \n");
      out.write("table td {\n");
      out.write("    \n");
      out.write("    white-space: nowrap;\n");
      out.write("    overflow: hidden;\n");
      out.write("    width: 40px;\n");
      out.write("    text-overflow: ellipsis;\n");
      out.write("}*/\n");
      out.write("\n");
      out.write("\n");
      out.write("        body{\n");
      out.write("            color: black;\n");
      out.write("\n");
      out.write("            padding: 20px;\n");
      out.write("            top:0;\n");
      out.write("            left:0;\n");
      out.write("            right:0;\n");
      out.write("            z-index: 10;\n");
      out.write("            background: white;\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("\n");
      out.write("        button {\n");
      out.write("            --c:  #229091; /* the color*/\n");
      out.write("             font-size: 16px;\n");
      out.write("  padding: 10px;\n");
      out.write("\n");
      out.write("            box-shadow: 0 0 0 .1em inset var(--c); \n");
      out.write("            --_g: linear-gradient(var(--c) 0 0) no-repeat;\n");
      out.write("            background: \n");
      out.write("                var(--_g) calc(var(--_p,0%) - 100%) 0%,\n");
      out.write("                var(--_g) calc(200% - var(--_p,0%)) 0%,\n");
      out.write("                var(--_g) calc(var(--_p,0%) - 100%) 100%,\n");
      out.write("                var(--_g) calc(200% - var(--_p,0%)) 100%;\n");
      out.write("            background-size: 50.5% calc(var(--_p,0%)/2 + .5%);\n");
      out.write("            outline-offset: .1em;\n");
      out.write("            transition: background-size .4s, background-position 0s .4s;\n");
      out.write("        }\n");
      out.write("        button:hover {\n");
      out.write("            --_p: 100%;\n");
      out.write("            transition: background-position .4s, background-size 0s;\n");
      out.write("        }\n");
      out.write("        button:active {\n");
      out.write("\n");
      out.write("            background-color: var(--c);\n");
      out.write("            color: #fff;\n");
      out.write("        }\n");
      out.write("        select#list1 {\n");
      out.write("  font-size: 16px;\n");
      out.write("  padding: 10px;\n");
      out.write("}\n");
      out.write("select#listtable {\n");
      out.write("  font-size: 16px;\n");
      out.write("  padding: 10px;\n");
      out.write("}\n");
      out.write("table.display td {\n");
      out.write("overflow: hidden;\n");
      out.write("white-space: nowrap;\n");
      out.write("text-overflow: ellipsis;\n");
      out.write("-o-text-overflow: ellipsis;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dataTables_wrapper .dataTables_info,label{\n");
      out.write("    color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    ");
    ////////////////////
        String list1 = "gistable";
        
        out.print("<script> document.getElementById('list1').value = '" + list1 + "'; </script>");
        ////////////////////
    
      out.write("\n");
      out.write("    <c:set var=\"select[0]\" value=\"fineart3\" />\n");
      out.write("    <!--ถามอาจาร  -->\n");
      out.write("    <script>\n");
      out.write("        let count = 0;\n");
      out.write("        function myFunction()\n");
      out.write("        {\n");
      out.write("\n");
      out.write("            var listtable = document.getElementById('listtable').value;\n");
      out.write("            //    alert(listtable+'');\n");
      out.write("\n");
      out.write("            var current_page = window.location.href;\n");
      out.write("            var href = new URL(current_page.toString());\n");
      out.write("            href.searchParams.set(\"listtable\", listtable);\n");
      out.write("            //    var new_page = current_page+\"&listtable=\"+listtable;\n");
      out.write("            //    alert(new_page+'');\n");
      out.write("            //document.getElementById('listtable').value = '\"+listtable+\"';\n");
      out.write("\n");
      out.write("            window.location.href = href.toString();\n");
      out.write("\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("    ");

        String list2 = request.getParameter("listtable");
//    out.print(list2);
out.print("<script> document.getElementById('listtable').value = '" + list2 + "'; </script>");
    
      out.write("\n");
      out.write("    \n");
      out.write("<!--    <script> document.getElementById('listtable').value = list2;</script>-->\n");
      out.write("\n");
      out.write("    <!--<form action=\"databaseSelect2.jsp\">-->\n");
      out.write("     \n");
      out.write("    <select name=\"listtable\" id=\"listtable\">\n");
      out.write("        ");
            String listtable = request.getParameter("listtable");
      out.write("\n");
      out.write("        <option value=\"");
      out.print(listtable);
      out.write("\">Select</option>\n");
      out.write("\n");
      out.write("        ");


            //   table
            Connection conntable = null;
            Statement stmttable = null;
            ResultSet rstable = null;
            String database = "";
            String table = "";
            try {

                conntable = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + list1 + "?user=root&password=");
                database = list1;
                stmttable = conntable.createStatement();
                String querytable = "SHOW TABLES";
                rstable = stmttable.executeQuery(querytable);

                while (rstable.next()) {
                    String tablename = rstable.getString(1);
                    out.println("tablename: " + tablename);

        
      out.write("\n");
      out.write("        <option>");
      out.print(rstable.getString(1));
      out.write("</option>\n");
      out.write("\n");
      out.write("        ");

                }
            } catch (Exception e) {
                //       e.printStackTrace();

            }
      out.write("</select>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!--        table select-->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <button onclick=\"myFunction()\">Find</button>\n");
      out.write("    <!--<button type=\"submit\">Submittable</button>-->    \n");
      out.write("\n");
      out.write("    <!--</form>-->    \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--<h1>Hello World! ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.list1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(' ');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.listtable}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h1>-->\n");
      out.write("    \n");
      out.write("   \n");
      out.write("   \n");
      out.write(" \n");
      out.write("\n");
      out.write("    ");

        Connection con2 = null;
        Statement stmt2 = null;
        ResultSet rec = null;
       
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con2 = DriverManager.getConnection("jdbc:mysql://localhost/" + list1 + "?user=root&password=");
            stmt2 = con2.createStatement();
            
//            if(db = reg)
//            {
//               rec = stmt2.executeQuery("SELECT * FROM " + list2 + " limit 0,150"); 
//            }
//            else if (db = pic)
//            {
//                
//            }
            
            
            rec = stmt2.executeQuery("SELECT * FROM " + list2 + " limit 0,300");
            
            

            //table
            String table2 = "<h1>Table: "+list2+"</h1>"+"<form action='ViewInsert.jsp' method='post' onsubmit='return confirm(\"Are you sure you want to insert Data" + "\")'>" +
              
              "<input type='hidden' name='list1' value='" + list1 + "'>" +
              "<input type='hidden' name='table' value='" + listtable + "'>" +
              "<button type='submit'>InsertData</button>" +
            "</form>" + "<table id='myTable5'style='width:auto' ><thead>";
            int columns = rec.getMetaData().getColumnCount();
            table2 += "<th>" + "row" + "</th>"; 
            table2 += "<th>" + "Action&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" + "</th>";
            for (int i = 1; i <= columns; i++) {
                table2 += "<th>" + rec.getMetaData().getColumnName(i) + "</th>";

            }
           

            table2 += "</thead><tbody>";
            int rowdelete=1;
            while (rec.next()) {
                
    ResultSetMetaData metaData = rec.getMetaData();
    int columnCount = metaData.getColumnCount();
    String[] columnNames = new String[columnCount];
    for (int i = 1; i <= columnCount; i++) {
      columnNames[i - 1] = metaData.getColumnName(i);
    }
  
    // get column values
    Object[] rowValues = new Object[columnCount];
    for (int i = 1; i <= columnCount; i++) {
      rowValues[i - 1] = rec.getObject(i);
    }
  
    // create JSON object with column names and values
    JSONObject row = new JSONObject();
    for (int i = 0; i < columnCount; i++) {
      row.put(columnNames[i], rowValues[i]);
    }

                table2 += "<tr>";
                
                for (int i = 1; i <= columns; i++) {
                    if (i == 1) {
                    table2+="<td >"+rowdelete+"</td>";
                    }
                    if (i == 1) {
                        
                        table2 += "<td>"+"<form action='ViewUpdate2.jsp' method='post' onsubmit='return confirm(\"Are you sure you want to Update Row:" + rowdelete+"\")'>" +
              "<input type='hidden' name='data' value='" + row.toString() + "'>" +
              "<input type='hidden' name='list1' value='" + list1 + "'>" +
              "<input type='hidden' name='table' value='" + listtable + "'>" +
              "<button type='submit'>Update</button>" +
            "</form>" + "<form action='Viewdelete2.jsp' method='post' onsubmit='return confirm(\"Are you sure you want to delete Row:" + rowdelete+"\")'>" +
              "<input type='hidden' name='data' value='" + row.toString() + "'>" +
              "<input type='hidden' name='list1' value='" + list1 + "'>" +
              "<input type='hidden' name='table' value='" + listtable + "'>" +
              "<button  style='float:right; margin-right:0%; margin-top:-27.4%; --c:#E95A49' type='submit'>Delete</button>" +
            "</form>"  + "</td>";
                    }
                    Object data = rec.getObject(i);
                    table2 += "<td>" + data + "</td>";
                    
                }
                rowdelete++;
                table2 += "</tr>";
                
            }
            table2 += "</tbody></table>";
      out.write("\n");
      out.write("    ");
 //end 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    ");
      out.print(table2);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    ");
} catch (Exception e) {
//        out.println(e.getMessage());
            e.printStackTrace();
        }
    
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!--//cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css-->\n");
      out.write("    <!--//cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js-->\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js\"></script>\n");
      out.write("\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.6.4.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js\"></script>\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        \n");
      out.write("        $(document).ready(function () {\n");
      out.write("            \n");
      out.write("            $('#myTable5').DataTable({\n");
      out.write("                responsive: true,\n");
      out.write("        pageLength: 15\n");
      out.write("        \n");
      out.write("            });\n");
      out.write("        });\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
