package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.commons.lang3.time.StopWatch;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import com.mongodb.AggregationOutput;
import java.util.List;
import java.util.Arrays;
import java.util.Scanner;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import org.bson.Document;
import com.mongodb.DBCursor;
import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import com.mongodb.DBCollection;
import com.mongodb.DB;
import com.mongodb.Mongo;

public final class testSqlSearchGPT_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>User</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css\" />\n");
      out.write("        <style>\n");
      out.write("            #wrapperx\n");
      out.write("{\n");
      out.write("\n");
      out.write("\tmin-width: 940px;\n");
      out.write("\tmax-width: 1000px;\n");
      out.write("}\n");
      out.write("#wrapperx #layout_middle\n");
      out.write("{\n");
      out.write("\twidth: 100%;\n");
      out.write("\tmax-width: 1000px;\n");
      out.write("}\n");
      out.write(".buttonlogin{\n");
      out.write("  border: none;\n");
      out.write("  color: white;\n");
      out.write("  padding: 18px 32px;\n");
      out.write("  text-align: center;\n");
      out.write("  cursor: pointer;\n");
      out.write("  background-color: #947D6F;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 16px;\n");
      out.write("  right: 20px;\n");
      out.write("  border-radius: 100px;\n");
      out.write("  font-size: 20px;\n");
      out.write("/*  right: 15px; top: 15px*/\n");
      out.write("\n");
      out.write("float: right;\n");
      out.write("   display: stretch;\n");
      out.write("  flex-flow: row wrap;\n");
      out.write("  align-items: center;\n");
      out.write("}\n");
      out.write("button[type=\"submit\"] {\n");
      out.write("    background-color: #65bfe6;\n");
      out.write("    color: white;\n");
      out.write("    border: none;\n");
      out.write("    padding: 10px 20px;\n");
      out.write("    border-radius: 80%;\n");
      out.write("    \n");
      out.write("    font-size: 16px;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".inputS{\n");
      out.write("    height: 2rem;\n");
      out.write("    width: 40rem;\n");
      out.write("    border: 2px solid black;\n");
      out.write("    border-radius: 1rem;\n");
      out.write("}\n");
      out.write(".submit{\n");
      out.write("    border: none;\n");
      out.write("  color: white;\n");
      out.write("  padding: 15px 22px;\n");
      out.write("  text-align: center;\n");
      out.write("  cursor: pointer;\n");
      out.write("  background-color: #0b5ed7;\n");
      out.write("}\n");
      out.write(".content{\n");
      out.write("    padding-top:100px; \n");
      out.write("}\n");
      out.write("input {\n");
      out.write("    writing-mode: horizontal-tb !important;\n");
      out.write("    font-style: ;\n");
      out.write("    font-variant-ligatures: ;\n");
      out.write("    font-variant-caps: ;\n");
      out.write("    font-variant-numeric: ;\n");
      out.write("    font-variant-east-asian: ;\n");
      out.write("    font-variant-alternates: ;\n");
      out.write("    font-weight: ;\n");
      out.write("    font-stretch: ;\n");
      out.write("    font-size: ;\n");
      out.write("    font-family: ;\n");
      out.write("    font-optical-sizing: ;\n");
      out.write("    font-kerning: ;\n");
      out.write("    font-feature-settings: ;\n");
      out.write("    font-variation-settings: ;\n");
      out.write("    text-rendering: auto;\n");
      out.write("    color: fieldtext;\n");
      out.write("    letter-spacing: normal;\n");
      out.write("    word-spacing: normal;\n");
      out.write("    line-height: normal;\n");
      out.write("    text-transform: none;\n");
      out.write("    text-indent: 0px;\n");
      out.write("    text-shadow: none;\n");
      out.write("    display: inline-block;\n");
      out.write("    text-align: start;\n");
      out.write("    appearance: auto;\n");
      out.write("    -webkit-rtl-ordering: logical;\n");
      out.write("    cursor: text;\n");
      out.write("    background-color: field;\n");
      out.write("    margin: 0em;\n");
      out.write("    padding: 1px 2px;\n");
      out.write("    border-width: 2px;\n");
      out.write("    border-style: inset;\n");
      out.write("    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));\n");
      out.write("    border-image: initial;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("#search_container {\n");
      out.write("    position: absolute;\n");
      out.write("    top: 10px;\n");
      out.write("    left: 100px;\n");
      out.write("    width: 48%;\n");
      out.write("    margin-left: 100px;\n");
      out.write("    margin-top: 5px;\n");
      out.write("    background-color: #ffffff;\n");
      out.write("    border: 4px solid #ffffff;\n");
      out.write("    border-radius: 100px;\n");
      out.write("    box-shadow: 5px 4px 12px 1px rgba(0, 0, 0, 0.32);\n");
      out.write("}\n");
      out.write("#search_container > table\n");
      out.write("{\n");
      out.write("\twidth: 100%;\n");
      out.write("}\n");
      out.write("*, a, input, textarea, button, input:focus, textarea:focus {\n");
      out.write("    outline: 0 !important;\n");
      out.write("    -webkit-tap-highlight-color: rgba(255, 255, 255, 0);\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Top Menu */\n");
      out.write(".top_menu { float: left; margin-left: 20px;}\n");
      out.write(".top_menu > ul { display: inline-block; margin: 0px 0px 3px 15px; padding: 0px; border-bottom: none; }\n");
      out.write(".top_menu > ul > li { display: inline-block; list-style: none; }\n");
      out.write(".top_menu > ul > li > a { color: #c8d8ef; display: block; padding: 0px 10px; line-height: 29px; text-decoration: none; font-weight: bold; font-size: 14px; border-bottom: 2px solid transparent; }\n");
      out.write(".top_menu > ul > li > a:hover { color: #f76d6a; }\n");
      out.write(".top_menu > ul > li.active > a { color: #f76d6a; position: relative; border-bottom: 2px solid #f76d6a; }\n");
      out.write("\n");
      out.write("body .gsc-author {\n");
      out.write("  display: none;\n");
      out.write("}\n");
      out.write(".gsc-webResult.gsc-result, .gsc-results .gsc-imageResult {\n");
      out.write("    border-color: transparent;\n");
      out.write("    background-color: transparent;\n");
      out.write("}\n");
      out.write(".gsc-webResult.gsc-result:hover, .gsc-imageResult:hover {\n");
      out.write("    border-color: transparent;\n");
      out.write("    background-color: transparent;\n");
      out.write("}\n");
      out.write(".cse .gsc-control-cse, .gsc-control-cse {\n");
      out.write("    padding: 0em;\n");
      out.write("    width: auto;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body .gcsc-find-more-on-google {\n");
      out.write("    display: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body .gcsc-find-more-on-google-branding {\n");
      out.write("    display: block;\n");
      out.write("    float: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".gsc-webResult .gsc-url-bottom {\n");
      out.write("    display: block;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".gsc-webResult .gsc-url-top {\n");
      out.write("    display: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".gs-result .gs-image,\n");
      out.write(".gs-result .gs-promotion-image {\n");
      out.write("  vertical-align: middle;\n");
      out.write("  border: none;\n");
      out.write("  float: none;\n");
      out.write("}\n");
      out.write("#search_container.active #search_form_input_clear_one.search_form_input_clear_opened {\n");
      out.write("    background-position: center center;\n");
      out.write("}\n");
      out.write("#search_form_input_clear_one {\n");
      out.write("    display: table-cell;\n");
      out.write("    width: 34px;\n");
      out.write("    padding: 0px;\n");
      out.write("    margin: 0px;\n");
      out.write("    height: 34px;\n");
      out.write("    text-indent: -9999em;\n");
      out.write("    border: none;\n");
      out.write("    cursor: pointer;\n");
      out.write("    border-radius: 0px;\n");
      out.write("    background: url(https://www.kiddle.co/clear_but.png) transparent no-repeat -100px -100px;\n");
      out.write("}\n");
      out.write("button.s_btn {\n");
      out.write("    background: url(https://www.kiddle.co/search_icon_m.png) no-repeat center 13px;\n");
      out.write("    background-color: #ffffff;\n");
      out.write("    text-indent: -9999em;\n");
      out.write("    cursor: pointer;\n");
      out.write("    width: 45px;\n");
      out.write("    height: 45px;\n");
      out.write("    padding: 0px 0px;\n");
      out.write("    margin-left: 0px;\n");
      out.write("    color: #ffffff;\n");
      out.write("    border: none !important;\n");
      out.write("    border-left: none !important;\n");
      out.write("    vertical-align: top;\n");
      out.write("    border-radius: 100px;\n");
      out.write("    font-family: Arial,Helvetica,sans-serif;\n");
      out.write("    font-size: 13px;\n");
      out.write("}\n");
      out.write(".body1 {\n");
      out.write("  background: url('https://cdn.discordapp.com/attachments/1002950629100101642/1092285061774184538/Get_Our_Latest_1.png') no-repeat center center fixed; /* Replace 'your-image-url.jpg' with the URL of your background image */\n");
      out.write("  background-size: cover;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".search_field_clear input#q, .search_field_clear input#q2\n");
      out.write("{\n");
      out.write("  width: 400px;\n");
      out.write("  line-height: 23px;\n");
      out.write("  height: 23px;\n");
      out.write("  font-family: arial, sans-serif;\n");
      out.write("  color: #141414;\n");
      out.write("  font-size: 16px;\n");
      out.write("  background: transparent;\n");
      out.write("  border: none !important; \n");
      out.write("  padding: 6px 0px 6px 6px;\n");
      out.write("  vertical-align: top;\n");
      out.write("  outline: none;\n");
      out.write("  -webkit-box-shadow: none;\n");
      out.write("  -moz-box-shadow: none;\n");
      out.write("  box-shadow: none;\n");
      out.write("  -webkit-border-radius: 0px;\n");
      out.write("  -moz-border-radius: 0px;\n");
      out.write("  border-radius: 0px;\n");
      out.write("}\n");
      out.write(".search_field_clear #search_form_input_clear_one, .search_field_clear #search_form_input_clear_two\n");
      out.write("{\n");
      out.write("  background: url(/clear_but.png) no-repeat center center;\n");
      out.write("  width: 30px;\n");
      out.write("  margin-left: -3px;\n");
      out.write("  padding: 0px;\n");
      out.write("  height: 34px;\n");
      out.write("  text-indent: -9999em;\n");
      out.write("  border: none;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write(".search_field_clear #search_form_input_clear_one.search_form_input_clear_closed, .search_field_clear #search_form_input_clear_two.search_form_input_clear_closed\n");
      out.write("{\n");
      out.write("  background: transparent;\n");
      out.write("}\n");
      out.write(".search_inner input.submit\n");
      out.write("{\n");
      out.write("  float: left;\n");
      out.write("}\n");
      out.write("input::-ms-clear {\n");
      out.write("  display: none;\n");
      out.write("}\n");
      out.write(".table2 {\n");
      out.write("  font-family: arial, sans-serif;\n");
      out.write("  border-collapse: collapse;\n");
      out.write("  width: 100%;\n");
      out.write("  background-color: white;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 106px;\n");
      out.write("  left: 135px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".table2 th {\n");
      out.write("  border: 1px solid #dddddd;\n");
      out.write("  text-align: left;\n");
      out.write("  padding: 8px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".table2 td {\n");
      out.write("  border: 1px solid #dddddd;\n");
      out.write("  text-align: left;\n");
      out.write("  padding: 8px;\n");
      out.write("}\n");
      out.write(".top-header{\n");
      out.write("    background-color: #f8efc6;\n");
      out.write("    position: relative;\n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    background-position-x: -170px;\n");
      out.write("    padding-bottom: 118px;\n");
      out.write("    margin-bottom: -39px;\n");
      out.write("    border-bottom: 2px solid #ddd;\n");
      out.write("}\n");
      out.write(".dataTables_wrapper {\n");
      out.write("    position: relative;\n");
      out.write("    top: 12px;\n");
      out.write("    clear: both;\n");
      out.write("}\n");
      out.write(".Headmongo{\n");
      out.write("text-align: left;\n");
      out.write("\n");
      out.write("}\n");
      out.write(".Headmongo h1{\n");
      out.write("    \n");
      out.write("    font-size:35px; \n");
      out.write("    color: #141414;\n");
      out.write("    font-weight: 600;\n");
      out.write("    position: absolute;\n");
      out.write("    left: 55px;\n");
      out.write("}\n");
      out.write(".buttonswitch{\n");
      out.write("    border: none;\n");
      out.write("    color: white;\n");
      out.write("    padding: 18px 32px;\n");
      out.write("    text-align: center;\n");
      out.write("    cursor: pointer;\n");
      out.write("    background-color: #947D6F;\n");
      out.write("    position: absolute;\n");
      out.write("    top: 16px;\n");
      out.write("    right: 30%;\n");
      out.write("    border-radius: 100px;\n");
      out.write("    font-size: 20px;\n");
      out.write("    float: right;\n");
      out.write("}\n");
      out.write(".timestop{\n");
      out.write("    position: relative;\n");
      out.write("    top: 25px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <header class=\"top-header\">\n");
      out.write("            <div class=\"Headmongo\"><h1>SQL</h1></div>\n");
      out.write("            \n");
      out.write("<!--            <img class=\"jfN4p\" src=\"https://w7.pngwing.com/pngs/63/19/png-transparent-mongodb-database-nosql-postgresql-mongo-text-logo-business.png\" style=\"background:none\" alt=\"Google\" height=\"150\" width=\"150\" data-atf=\"1\" data-frt=\"0\">-->\n");
      out.write("           <a href=\"CDSearch0_9S.jsp\">\n");
      out.write("            <button class=\"buttonswitch\" >MongoDB</button>\n");
      out.write("        </a>\n");
      out.write("\n");
      out.write("<a href=\"loginp2.jsp\">\n");
      out.write("            <button class=\"buttonlogin\" >Login</button>\n");
      out.write("        </a>\n");
      out.write("         ");
request.setCharacterEncoding("UTF-8");
         
         
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <table id=\"search_container\" class=\"active\">\n");
      out.write("              <tbody ><tr>\n");
      out.write("              \n");
      out.write("                <td class=\"search_field_clear\">\n");
      out.write("                    ");
if(request.getParameter("q")==null){
      out.write("\n");
      out.write("                  <form action=\"testSqlSearchGPT.jsp\" method=\"POST\">\n");
      out.write("  <input type=\"text\" name=\"q\" id=\"q\" value=\"\" size=\"45\" autocapitalize=\"off\" autocomplete=\"off\" autocorrect=\"off\" onfocus=\"if (this.value === '') { document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_closed'; }\n");
      out.write("  if (this.value !== '') { document.getElementById('search_container').className = 'active'; } \" onblur=\"document.getElementById('search_container').className = ''; \" onkeydown=\"document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_opened';\n");
      out.write("  document.getElementById('search_container').className = 'active';\" onkeyup=\"if (this.value === '') { document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_closed';\n");
      out.write("  document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_closed';\n");
      out.write("  document.getElementById('search_container').className = 'active'; };\" fdprocessedid=\"4yzn4\">\n");
      out.write("  <td class=\"search_form_input_clear\">\n");
      out.write("                  <button id=\"search_form_input_clear_one\" class=\"search_form_input_clear_opened\" type=\"button\" value=\"X\" onclick=\"document.getElementById('q').value=''; document.getElementById('q').focus();\" fdprocessedid=\"88z0q\">Clear</button>\n");
      out.write("                </td>\n");
      out.write("                <td class=\"search_button\">\n");
      out.write("                  <button type=\"submit\" value=\"Search\" class=\"submit s_btn\" fdprocessedid=\"x3pe5u\" >Search</button>\n");
      out.write("                </td> \n");
      out.write("  \n");
      out.write("</form>");
}
else{
      out.write("\n");
      out.write("<form action=\"testSqlSearchGPT.jsp\" method=\"POST\">\n");
      out.write("    <input type=\"text\" name=\"q\" id=\"q\" value='");
      out.print(request.getParameter("q"));
      out.write("' size=\"45\" autocapitalize=\"off\" autocomplete=\"off\" autocorrect=\"off\" onfocus=\"if (this.value === '') { document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_closed'; }\n");
      out.write("  if (this.value !== '') { document.getElementById('search_container').className = 'active'; } \" onblur=\"document.getElementById('search_container').className = ''; \" onkeydown=\"document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_opened';\n");
      out.write("  document.getElementById('search_container').className = 'active';\" onkeyup=\"if (this.value === '') { document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_closed';\n");
      out.write("  document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_closed';\n");
      out.write("  document.getElementById('search_container').className = 'active'; };\" fdprocessedid=\"4yzn4\">\n");
      out.write("  <td class=\"search_form_input_clear\">\n");
      out.write("                  <button id=\"search_form_input_clear_one\" class=\"search_form_input_clear_opened\" type=\"button\" value=\"X\" onclick=\"document.getElementById('q').value=''; document.getElementById('q').focus();\" fdprocessedid=\"88z0q\">Clear</button>\n");
      out.write("                </td>\n");
      out.write("                <td class=\"search_button\">\n");
      out.write("                  <button type=\"submit\" value=\"Search\" class=\"submit s_btn\" fdprocessedid=\"x3pe5u\" >Search</button>\n");
      out.write("                </td> \n");
      out.write("  \n");
      out.write("</form>\n");
}
      out.write("\n");
      out.write("                \n");
      out.write("\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                             \n");
      out.write("              \n");
      out.write("              </tr>\n");
      out.write("            </tbody></table> \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                             \n");
      out.write("              \n");
      out.write("            \n");
      out.write("        \n");
      out.write("          \n");
      out.write("          \n");
      out.write("           \n");
      out.write("        </header>\n");
      out.write("         \n");
      out.write("            <body class=\"body1\">\n");
      out.write("         \n");
      out.write("        </body>       \n");
      out.write("  \n");
      out.write("    \n");
      out.write("        \n");
      out.write("  \n");
      out.write("\n");
      out.write("            ");
 
            String strNew="";
            String strNew2="";
            String strNew3="";
            String strNew4="";
            String strNewin="";
           String strNewin2="";
           String sameword="";
           String pic_DESC="";
           String CULTURE="";
           
           int count = 0;
           int countbody1 = 0;
           int countbody2 = 0;
           String searchTerm = request.getParameter("q"); // replace with the actual search term
          // String searchTerm = "วัดปรินายก";
        StopWatch stopwatch = new StopWatch();
        stopwatch.start();
                
       
        Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/all_db?user=root&password=");
//                String query = "SELECT * FROM hissite_join WHERE PIC_DESC LIKE ? OR POS_NAME_T LIKE ? OR REG_HISTORY LIKE ? OR POS_ROAD LIKE ? OR PIC_DESC LIKE ? OR PIC_NAME LIKE ? OR REG_ART_CULTURE LIKE ? ";
String query = "SELECT * FROM hissite_join WHERE PIC_DESC LIKE ? OR POS_NAME_T LIKE ? OR REG_ART_CULTURE LIKE ? limit 5";                
PreparedStatement pstmt = conn.prepareStatement(query);
        pstmt.setString(1, "%" + searchTerm + "%");
        pstmt.setString(2, "%" + searchTerm + "%");
        pstmt.setString(3, "%" + searchTerm + "%");
        
        System.out.print(pstmt.toString());
        
        
        ResultSet rs = pstmt.executeQuery();
        
        // Process the query results
        if (request.getParameter("q") != null) {
        while (rs.next()) {
            try{
            String t = rs.getString("PIC_NAME"); 
            strNew = "http://58.181.189.35/DATAFILE/PICTURE/HISSITE/PICTURE/" + t;

            }catch(Exception e){
                            System.out.println(e);
                            
                        }
            try{
            strNew3 = rs.getString("REG_HISTORY");
            
          
            strNewin = rs.getString("REG_PRESENT");
            
            strNewin2 = rs.getString("POS_ROAD");
            sameword = rs.getString("POS_NAME_T");
            pic_DESC = rs.getString("PIC_DESC");
            CULTURE = rs.getString("REG_ART_CULTURE");
        }catch(Exception e){
                             System.out.println(e);
                            //out.print(e);
                        }

      
    
                
    
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
 if( strNew4 == null || request.getParameter("q") == null  ) { //ไม่แสดงตาราง
      out.write("\n");
      out.write("            \n");
      out.write("            ");
}
else if(count==0){
      out.write("\n");
      out.write("                <body class=\"body2\">\n");
      out.write("            \n");
      out.write("            </body>\n");
      out.write("            <table id=\"myTableSearch\" class=\"table2\" border=\"1\" style=\"width:80%;margin:auto\">\n");
      out.write("                <thead>\n");
      out.write("                \n");
      out.write("            \n");
      out.write("            <th style=\"width:20%;margin:auto\">Name</th>\n");
      out.write("                <th>Image</th>\n");
      out.write("                <th>Information</th>\n");
      out.write("                \n");
      out.write("            \n");
      out.write("            </thead>\n");
      out.write("            ");
count=1;
      out.write('\n');
}
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("            ");
if(countbody1==0){
      out.write("\n");
      out.write("            \n");
      out.write("            <tbody>\n");
      out.write("                ");
countbody1=1;
      out.write("\n");
      out.write("                ");
}
      out.write(" \n");
      out.write("                <tr>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("            <td>");
out.print(sameword); 
      out.write("</td>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            ");

                if( strNew != null) { 
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("            <td><img src='");
      out.print(strNew);
      out.write("'width=\"250\" \n");
      out.write("     height=\"260\" ><br>");
out.print(pic_DESC); 
      out.write("</td>\n");
      out.write("            \n");
      out.write("            ");
} 
          
      out.write("\n");
      out.write("          \n");
      out.write("       \n");
      out.write("          \n");
      out.write("          ");

                if( strNew == null) { 
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("            <td><img src='");
      out.print(strNew);
      out.write("'width=\"80\" \n");
      out.write("     height=\"90\" ><br>");
out.print(pic_DESC); 
      out.write("</td>\n");
      out.write("            \n");
      out.write("            ");
} 
          
      out.write("\n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("        \n");
      out.write("         \n");
      out.write("          ");
 if( strNew3 != null) { 
      out.write("\n");
      out.write("            <td>");
out.print(strNew3+"<br><br>รายละเอียดสถานที่ : "+strNewin+"<br><br>ถนน : "+strNewin2);
      out.write("</td>\n");
      out.write("            ");
}else if(strNew3 == null){
      out.write(" <td>");
out.print("วัฒนธรรม: "+CULTURE);
      out.write(" </td> ");
}
      out.write("\n");
      out.write("           \n");
      out.write("        \n");
      out.write("          \n");
      out.write("\n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("\n");
      out.write("            ");
}
  rs.close();
        pstmt.close();
        conn.close(); 
stopwatch.stop();
double mysqlTime = stopwatch.getTime();
out.print("<h2 class='timestop'>Time: " + mysqlTime/1000 + " seconds</h2>");
                }
  // Close the database connection
             
                
            
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("</tr>\n");
      out.write(" ");
if(countbody2==0){
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("            </tbody>\n");
      out.write("               ");
countbody2=1;
      out.write("\n");
      out.write("                ");
}
      out.write(" \n");
      out.write(" \n");
      out.write("        </table>\n");
      out.write("                \n");
      out.write("   <script src=\"https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js\"></script>\n");
      out.write("\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.6.4.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js\"></script>\n");
      out.write("\n");
      out.write("    <script >\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            $('#myTableSearch').DataTable({\n");
      out.write("                responsive: true,\n");
      out.write("                 language: {\n");
      out.write("            search: \"Find:\"\n");
      out.write("        }\n");
      out.write("            });\n");
      out.write("        });\n");
      out.write("        \n");
      out.write("    </script>\n");
      out.write("</body>\n");
      out.write(" \n");
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
