package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
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

public final class CDSearch0_005f7_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>User</title>\n");
      out.write("        <style>\n");
      out.write(".button{\n");
      out.write("  border: none;\n");
      out.write("  color: white;\n");
      out.write("  padding: 15px 22px;\n");
      out.write("  text-align: center;\n");
      out.write("  cursor: pointer;\n");
      out.write("  background-color: #0b5ed7;\n");
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
      out.write(".top-header{\n");
      out.write("    color: white;\n");
      out.write("    background-color: #DAF7FF;\n");
      out.write("    padding: 20px;\n");
      out.write("    top:0;\n");
      out.write("    left:0;\n");
      out.write("    right:0;\n");
      out.write("    z-index: 10;\n");
      out.write("    background: #4261cf;\n");
      out.write("  background: -moz-linear-gradient(45deg, #3023ae 0%, #53a0fd 100%);\n");
      out.write("  background: -webkit-gradient(linear, left bottom, right top, color-stop(0%, #3023ae), color-stop(100%, #53a0fd));\n");
      out.write("  background: -webkit-linear-gradient(45deg, #3023ae 0%, #53a0fd 100%);\n");
      out.write("  background: -o-linear-gradient(45deg, #3023ae 0%, #53a0fd 100%);\n");
      out.write("  background: -ms-linear-gradient(45deg, #3023ae 0%, #53a0fd 100%);\n");
      out.write("  background: linear-gradient(45deg, #3023ae 0%, #53a0fd 100%);\n");
      out.write("  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='$gradient-start', endColorstr='$gradient-end',GradientType=1 );\n");
      out.write("  color: white;\n");
      out.write("}\n");
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
      out.write("\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header class=\"top-header\">\n");
      out.write("            <a href=\"loginp2.jsp\">\n");
      out.write("            <button class=\"button\" >Login</button>\n");
      out.write("        </a>\n");
      out.write("         ");
request.setCharacterEncoding("UTF-8");
         
         
      out.write("\n");
      out.write("        <FORM action=\"CDSearch0_7.jsp\" METHOD=\"POST\">\n");
      out.write("            ");
 if(request.getParameter("user") == null){ 
      out.write("\n");
      out.write("            <input type=\"text\" name=\"user\" class=\"inputS\"   value=\"\"/>\n");
      out.write("            <label for=\"number\">Enter a number:</label>\n");
      out.write("  <input type=\"number\" name=\"number\" id=\"number\" value=\"10\"/>\n");
      out.write("<!--            <input type=\"submit\" class=\"submit\" value=\"Search\"/>-->\n");
      out.write("            <button type=\"submit\">\n");
      out.write("                <img src=\"https://cdn.iconscout.com/icon/free/png-512/search-1941-1143726.png?f=avif&w=256\" width=\"25\" height=\"25\">\n");
      out.write("            </button>\n");
      out.write("            ");
}
      out.write("\n");
      out.write("            ");
 if(request.getParameter("user") != null){ 
      out.write("\n");
      out.write("            <input type=\"text\" name=\"user\" class=\"inputS\" value=");
      out.print(request.getParameter("user"));
      out.write(" />\n");
      out.write("            <label for=\"number\">Enter a number:</label>\n");
      out.write("           \n");
      out.write("  <input type=\"number\" name=\"number\" id=\"number\" value=\"10\"/>\n");
      out.write("          \n");
      out.write("         \n");
      out.write("            <button type=\"submit\">\n");
      out.write("                <img src=\"https://cdn.iconscout.com/icon/free/png-512/search-1941-1143726.png?f=avif&w=256\" width=\"25\" height=\"25\">\n");
      out.write("            </button>\n");
      out.write("<!--            <img src=\"search-interface-symbol.png\" alt=\"\"/>-->\n");
      out.write("            ");
}
      out.write("\n");
      out.write("        </FORM>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        </header>\n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("\n");
      out.write("            ");
 
            String strNew="";
            String strNew2="";
            String strNew3="";
            String strNew4="";
           
                //connection to mongodb server 
                Mongo mg = new Mongo("localhost", 27017);
                DB db = mg.getDB("testruntime2");
                DBCollection collection = db.getCollection("run");
                
                //---------------------------
                //BasicDBObject me = new BasicDBObject();
                //me.put("name", "55");
                //collection.insert(me);
                //--------------------------
//                BasicDBObject whereQuery = new BasicDBObject();
                BasicDBObject whereQuery = new BasicDBObject("keyword", new BasicDBObject("$regex", ".*" + request.getParameter("user") + ".*")
                                                        .append("$options", "i"));

//                whereQuery.put("keyword", request.getParameter("user"));
                //BasicDBObject fields = new BasicDBObject();
                //fields.put("employeeId", 1);
                String strNumber = request.getParameter("number");
                int number = 0;
                if (strNumber != null) {
                    number = Integer.parseInt(strNumber);
                }
                if(number != 0){
//                out.print("Number of rows"+number);
                }
                DBCursor cursor = collection.find(whereQuery).limit(number);
                
                //เมื่อหาไม่เจอ-------------------
                DBCursor cursorNotfind = collection.find(whereQuery);
                while (cursorNotfind.hasNext()) {
                        BasicDBObject obj2 = (BasicDBObject) cursorNotfind.next();
                strNew4 =  obj2.toString();
                        //out.print(strNew4);
                }
                if(strNew4==""){
                    out.print("ไม่พบข้อมูล");
                   
                }
                //--------------------------
                
                
                if (request.getParameter("user") != null) {
                    while (cursor.hasNext()) {
                        BasicDBObject obj = (BasicDBObject) cursor.next();
                         //.replaceAll("[","").replaceAll("]","");
                        
                        try{
                        String t =  obj.get("__hissite").toString(); 
                        String tt[] = t.split("//");
                        String t2[] = tt[1].split(",");
                       strNew = t2[0].replaceAll("\"","");
                      strNew="http://"+strNew;
                        //out.print(strNew);
                        
                        String tt2[] = t.split("//");
                        }catch(Exception e){
                            strNew=null;
                            
                        }
                    try{
                        String t =  obj.get("__hissite").toString(); 
                        String tt[] = t.split(",");
                        String ttt = tt[7].replaceAll("\"","");
                        String tt2[] = ttt.split(":");
                        strNew2 = tt2[1];
                    }catch(Exception e){
                            strNew2=null;
                            
                        }  
                      
                        
                        try{
                        String t =  obj.get("__archives").toString(); 
                        String tt[] = t.split(",");
                        String Abstract = tt[2].replaceAll("\"","");
                        String tt2[] = Abstract.split(":");
                        strNew3 = tt2[1];
                        //out.print(strNew3);
                        //out.print(tt[7]);
                    }catch(Exception e){
                            strNew3=null;
                            
                        } 
                       
                      
                        
//            String temp = "";
//            JSONParser parser = new JSONParser();
//            JSONObject jb = (JSONObject) parser.parse(temp);
//            String a1 = (String) jb.get("b1");
//            String a2 = (String) jb.get("b2"); 
//            String a3 = (String) jb.get("b3");
//            String a4 = (String) jb.get("b4"); 
                        
                        
//String str = obj.get("__hissite").get();
//         String[] strArray = new String[] {obj.get("__hissite")};


            
            
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("           ");
 if( strNew4 == null || request.getParameter("user") == null  ) { //ไม่แสดงตาราง
      out.write("\n");
      out.write("            \n");
      out.write("            ");
}
else {
      out.write("\n");
      out.write("            <table border=\"1\" style=\"width:80%;margin:auto\">\n");
      out.write("            <tr>\n");
      out.write("            <br>\n");
      out.write("            <th style=\"width:20%;margin:auto\">Name</th>\n");
      out.write("                <th>Image</th>\n");
      out.write("                <th>Information</th>\n");
      out.write("            </tr>\n");
}
      out.write(" \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <td>");
out.print(obj.get("keyword"));
      out.write("</td>\n");
      out.write("            ");

                if( strNew != null) { 
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("            <td><img src='");
      out.print(strNew);
      out.write("'width=\"250\" \n");
      out.write("     height=\"260\" ></td>\n");
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
      out.write("     height=\"90\" ></td>\n");
      out.write("            \n");
      out.write("            ");
} 
          
      out.write("\n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          ");
 if( strNew2 != null) { 
      out.write("\n");
      out.write("            <td>");
out.print(strNew2);
      out.write("</td>\n");
      out.write("            ");
}
          
      out.write(" \n");
      out.write("          ");
 if( strNew3 != null) { 
      out.write("\n");
      out.write("            <td>");
out.print(strNew3);
      out.write("</td>\n");
      out.write("            ");
}
          
      out.write(" \n");
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
                }
            
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </center>\n");
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
