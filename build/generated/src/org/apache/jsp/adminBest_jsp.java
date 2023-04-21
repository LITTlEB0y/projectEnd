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
      out.write(" \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            h1{\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("    color: white;\n");
      out.write("    background-color: white;\n");
      out.write("    padding: 20px;\n");
      out.write("    top:0;\n");
      out.write("    left:0;\n");
      out.write("    right:0;\n");
      out.write("    z-index: 10;\n");
      out.write("    \n");
      out.write(" \n");
      out.write("  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='$gradient-start', endColorstr='$gradient-end',GradientType=1 );\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("input[type=text]{\n");
      out.write("  width: 10%;\n");
      out.write("    padding: 12px 20px;\n");
      out.write("    margin: 8px 0;\n");
      out.write("    display: inline-block;\n");
      out.write("    border: 1px solid #ccc;\n");
      out.write("    border-radius: 4px;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("    resize: vertical; /* enable vertical resizing */\n");
      out.write("    overflow: auto; /* enable scrolling when content overflows */\n");
      out.write("}\n");
      out.write("select {\n");
      out.write("  width: 35%;\n");
      out.write("  height: 40px;\n");
      out.write("  padding: 12px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  display: inline-block;\n");
      out.write("  border: 1px solid #ccc;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  box-sizing: border-box;\n");
      out.write("}\n");
      out.write("input[type=submit] {\n");
      out.write("  width: 10%;\n");
      out.write("  background-color: #95D878;\n");
      out.write("  color: white;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  font-size: 20px;\n");
      out.write("}\n");
      out.write("input[type=submit].update{\n");
      out.write("  width: 10%;\n");
      out.write("  background-color: #95D878;\n");
      out.write("  color: white;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  font-size: 20px;\n");
      out.write("  position: relative;\n");
      out.write("  right: 15%;\n");
      out.write("}\n");
      out.write("input[type=submit].setdefault {\n");
      out.write("  width: 10%;\n");
      out.write("  background-color: #6E88FF;\n");
      out.write("  color: white;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  font-size: 20px;\n");
      out.write("  position: relative;\n");
      out.write("  top: -67px;\n");
      out.write("  right: 0%;\n");
      out.write("}\n");
      out.write("input[type=submit].SearchConfig{\n");
      out.write("  width: 13%;\n");
      out.write("  background-color: #95D878;\n");
      out.write("  color: white;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  font-size: 20px;\n");
      out.write("  margin-left: 30px;\n");
      out.write("}\n");
      out.write("input.delete{\n");
      out.write("    width: 10%;\n");
      out.write("  background-color: #E17474;\n");
      out.write("  color: white;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  position: relative;\n");
      out.write("    top: -136px;\n");
      out.write("    right: -15%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input[type=submit]:hover {\n");
      out.write("  background-color: #e6e8e6;\n");
      out.write("}\n");
      out.write("input.delete[type=submit]:hover {\n");
      out.write("  background-color: red;\n");
      out.write("}\n");
      out.write("input.SearchConfig[type=submit]:hover,input.update[type=submit]:hover {\n");
      out.write("  background-color: #7ce84d;\n");
      out.write("}\n");
      out.write("input.setdefault[type=submit]:hover {\n");
      out.write("  background-color: #3556f0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("div {\n");
      out.write("/*  border-radius: 5px;\n");
      out.write("  background-color: #f2f2f2;\n");
      out.write("  padding: 20px;*/\n");
      out.write("}\n");
      out.write(".divpage {\n");
      out.write("  background-color: white;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write("label{\n");
      out.write("    color: black;\n");
      out.write("}\n");
      out.write("p{\n");
      out.write("    color: black;\n");
      out.write("    font-size: 35px;\n");
      out.write("font-weight: bold;\n");
      out.write("}\n");
      out.write("button{\n");
      out.write("  width: 13%;\n");
      out.write("  background-color: #6E88FF;\n");
      out.write("  color: white;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  font-size: 20px;\n");
      out.write("      position: relative;\n");
      out.write("     bottom: 67px;\n");
      out.write("    left: 33%;\n");
      out.write("      \n");
      out.write("}\n");
      out.write("textarea {\n");
      out.write("\t\t\twidth: 80%;\n");
      out.write("\t\t\theight: auto;\n");
      out.write("\t\t\tresize: none;\n");
      out.write("\t\t\tpadding: 10px;\n");
      out.write("\t\t\tborder: 1px solid #ccc;\n");
      out.write("\t\t\tborder-radius: 4px;\n");
      out.write("\t\t\tbox-sizing: border-box;\n");
      out.write("                        font-size: 20px;\n");
      out.write("\t\t}\n");
      out.write("                \n");
      out.write("/*                  button.logout {\n");
      out.write(" width: 6%;\n");
      out.write("    background-color: #E17474;\n");
      out.write("    color: white;\n");
      out.write("    padding: 14px 20px;\n");
      out.write("    margin: 8px 0;\n");
      out.write("    border: none;\n");
      out.write("    border-radius: 4px;\n");
      out.write("    cursor: pointer;\n");
      out.write("  position: absolute;\n");
      out.write("    left: 88%;\n");
      out.write("    bottom: auto;\n");
      out.write("}\n");
      out.write(" button.logout[type=submit]:hover {\n");
      out.write("  background-color: red;\n");
      out.write("}*/\n");
      out.write("/*button.addConfig[type=submit]:hover {\n");
      out.write("  background-color: #3556f0;\n");
      out.write("}*/\n");
      out.write("\n");
      out.write("button.addConfig{\n");
      out.write("    display: flex;\n");
      out.write("\theight: 50px;\n");
      out.write("        width:204px;\n");
      out.write("\tpadding: 0;\n");
      out.write("\tbackground: #9a9c9b;\n");
      out.write("\tborder: none;\n");
      out.write("\toutline: none;\n");
      out.write("\tborder-radius: 5px;\n");
      out.write("\toverflow: hidden;\n");
      out.write("\tfont-family: \"Quicksand\", sans-serif;\n");
      out.write("\tfont-size: 16px;\n");
      out.write("\tfont-weight: 500;\n");
      out.write("\tcursor: pointer;\n");
      out.write("        position: absolute;\n");
      out.write("    left: 15%;\n");
      out.write("    top: 7%;\n");
      out.write("}\n");
      out.write(".addConfig:hover {\n");
      out.write("\tbackground: #828282;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".addConfig:active {\n");
      out.write("\tbackground: #636363;\n");
      out.write("}\n");
      out.write("\n");
      out.write("span.addConfig__text,\n");
      out.write("span.addConfig__icon {\n");
      out.write("\tdisplay: inline-flex;\n");
      out.write("\talign-items: center;\n");
      out.write("\tpadding: 0 23px;\n");
      out.write("\tcolor: #fff;\n");
      out.write("\theight: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("span.addConfig__icon {\n");
      out.write("\tfont-size: 2em;\n");
      out.write("\tbackground: rgba(0, 0, 0, 0.08);\n");
      out.write("}\n");
      out.write("\n");
      out.write("button.logout{\n");
      out.write("    display: flex;\n");
      out.write("\theight: 54px;\n");
      out.write("        width: 134px;\n");
      out.write("\tpadding: 0;\n");
      out.write("\tbackground: #E17474;\n");
      out.write("\tborder: none;\n");
      out.write("\toutline: none;\n");
      out.write("\tborder-radius: 5px;\n");
      out.write("\toverflow: hidden;\n");
      out.write("\tfont-family: \"Quicksand\", sans-serif;\n");
      out.write("\tfont-size: 16px;\n");
      out.write("\tfont-weight: 500;\n");
      out.write("\tcursor: pointer;\n");
      out.write("        position: absolute;\n");
      out.write("    top: 5%;\n");
      out.write("    left: 85%;\n");
      out.write("    \n");
      out.write("}\n");
      out.write(".logout:hover {\n");
      out.write("\tbackground: #e85151;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".logout:active {\n");
      out.write("\tbackground: #f03737;\n");
      out.write("}\n");
      out.write("\n");
      out.write("span.logout__text,\n");
      out.write("span.logout__icon {\n");
      out.write("\tdisplay: inline-flex;\n");
      out.write("\talign-items: center;\n");
      out.write("\tpadding: 0 15px;\n");
      out.write("\tcolor: #fff;\n");
      out.write("\theight: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("span.logout__icon {\n");
      out.write("\tfont-size: 2em;\n");
      out.write("\tbackground: rgba(0, 0, 0, 0.08);\n");
      out.write("}\n");
      out.write("h1.searchsize{\n");
      out.write("    display: block;\n");
      out.write("    font-size: 3em;\n");
      out.write("    margin-block-start: 0.67em;\n");
      out.write("    margin-block-end: 0.67em;\n");
      out.write("    margin-inline-start: 0px;\n");
      out.write("    margin-inline-end: 0px;\n");
      out.write("    font-weight: bold;\n");
      out.write("}\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("        <form action=\"logout.jsp\">\n");
      out.write("    <button class=\"logout\" type=\"submit\" id=\"logout\"><span class=\"logout__text\">Logout</span><span class='logout__icon'><ion-icon name=\"log-out-outline\"></ion-icon></span></button>\n");
      out.write("    </form>\n");
      out.write("        <div class=\"divpage\" style=\"text-align: center;\">\n");
      out.write("            <h1 class=\"searchsize\">Search Config by ID</h1>\n");
      out.write("\n");
      out.write("  ");

      // Get the submitted username and password
  Connection con = null;
    // Connect to the MySQL database
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/converterdb?user=root&password=");

    // Query the database for the list of IDs
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT id FROM config");
String buttonInsert="<form method='get' action='insertadmin.jsp'>";
        buttonInsert +="<button class='addConfig' type='submit'><span class='addConfig__text'>Add Config</span>"
                + "<span class='addConfig__icon'><ion-icon name='add-outline'></ion-icon></span></button>";
        buttonInsert +="</form>";
        
  
    // Create a drop-down list with the list of IDs
    out.print("<form method=\"post\">");
    
    out.print("<select name=\"id\">");
    while (rs.next()) {
  String id = rs.getString("id");
  String selected = "";
  if (id.equals(request.getParameter("id"))) {
    selected = "selected";
  }
  out.print("<option value=\"" + id + "\"" + selected + ">" + id + "</option>");
}
    
    out.print("<input class='SearchConfig' type=\"submit\" value=\"Search Config\">");
    
    out.print("</form>");
    

out.print(buttonInsert);

   
    // If the form has been submitted, retrieve and display the order value
    if (request.getMethod().equals("POST")) {
      String id = request.getParameter("id");
      session.setAttribute("idadmin", new String(id));
      PreparedStatement ps = con.prepareStatement("SELECT * FROM config WHERE id=?");
      ps.setString(1, id);
      rs = ps.executeQuery();
      if (rs.next()) {
        out.print("<p>Edit in ID : " + id + "</p>");
        String inputupdateadmin = "<form action='updateadmin.jsp' method='post' onsubmit='return confirm(\"Are you sure you want to update ID: " + id +"\")'>";
        inputupdateadmin +="";
        //inputupdateadmin += "<label for='KeyData'>KeyData:</label> <textarea name='KeyData' id='KeyData' rows='3' style='width: 130px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("KeyData")+"</textarea><br>";
        inputupdateadmin +="<textarea name='config' id='config' rows='3' style='width: 35%;height: 200px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("config")+"</textarea><br>";
        inputupdateadmin +="<label >KeyData:</label><textarea name='KeyData' id='KeyData' rows='3' style='width: 130px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("KeyData")+"</textarea><br>";
        inputupdateadmin +="<label >table1:</label><textarea name='table1' id='table1' rows='3' style='width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("table1")+"</textarea><br>";
        inputupdateadmin +="<label >table2:</label><textarea name='table2' id='table2' rows='3' style='width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("table2")+"</textarea><br>";
        inputupdateadmin +="<label >table3:</label><textarea name='table3' id='table3' rows='3' style='width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("table3")+"</textarea><br>";
        inputupdateadmin +="<label >table4:</label><textarea name='table4' id='table4' rows='3' style='width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("table4")+"</textarea><br>";
        
        //inputupdateadmin += "<label for='table5'>Table5:</label><br>";
        inputupdateadmin +="<label >table5:</label><textarea name='table5' id='table5' rows='3' style='width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("table5")+"</textarea><br><br><br>";
        
        inputupdateadmin +="<input class='update' type='submit' value='Update'>";
        inputupdateadmin += "</form>";
 

        
        String buttonDelete = "<form action='deleteadmin.jsp' method='post' onsubmit='return confirm(\"Are you sure you want to delete ID: " + id +"\")'>" +
                      "<input type='hidden' name='id' value='" + id + "'>" +
                      "<input type='submit' class='delete' value='Delete'>" +
                      "</form>";
        
        String buttonSetdefault = "<form action='Setdefaultadmin.jsp' method='post'  onsubmit='return confirm(\"Are you sure you want to set ID: " + id + " as default?\")'>" +
                      "<input type='hidden' name='id' value='" + id + "'>" +
                      "<input class='setdefault' type='submit' value='Set Default'>" +
                      "</form>";
        
        
out.print(inputupdateadmin);



out.print(buttonSetdefault);



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
      out.write("  <script>\n");
      out.write("  let textarea = document.getElementById('config');\n");
      out.write("\n");
      out.write("  textarea.addEventListener('input', function () {\n");
      out.write("    this.style.height = 'auto';\n");
      out.write("    this.style.height = this.scrollHeight + 'px';\n");
      out.write("  });\n");
      out.write("</script>\n");
      out.write("<script src=\"https://unpkg.com/ionicons@5.4.0/dist/ionicons.js\"></script>\n");
      out.write("</div>\n");
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
