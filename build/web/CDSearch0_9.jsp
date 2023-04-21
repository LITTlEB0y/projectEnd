<%-- 
    Document   : CDSearch
    Created on : Nov 2, 2022, 10:39:22 AM
    Author     : user55
--%>


<%@page import="java.util.Arrays"%>
<%@page import="java.util.Scanner"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.Mongo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User</title>
        <style>
.button{
  border: none;
  color: white;
  padding: 15px 22px;
  text-align: center;
  cursor: pointer;
  background-color: #0b5ed7;
/*  right: 15px; top: 15px*/

float: right;
   display: stretch;
  flex-flow: row wrap;
  align-items: center;
}
button[type="submit"] {
    background-color: #65bfe6;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 80%;
    
    font-size: 16px;
    cursor: pointer;
}
.top-header{
    color: white;
    background-color: #DAF7FF;
    padding: 20px;
    top:0;
    left:0;
    right:0;
    z-index: 10;
    background: #4261cf;
  background: -moz-linear-gradient(45deg, #3023ae 0%, #53a0fd 100%);
  background: -webkit-gradient(linear, left bottom, right top, color-stop(0%, #3023ae), color-stop(100%, #53a0fd));
  background: -webkit-linear-gradient(45deg, #3023ae 0%, #53a0fd 100%);
  background: -o-linear-gradient(45deg, #3023ae 0%, #53a0fd 100%);
  background: -ms-linear-gradient(45deg, #3023ae 0%, #53a0fd 100%);
  background: linear-gradient(45deg, #3023ae 0%, #53a0fd 100%);
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='$gradient-start', endColorstr='$gradient-end',GradientType=1 );
  color: white;
}
.inputS{
    height: 2rem;
    width: 40rem;
    border: 2px solid black;
    border-radius: 1rem;
}
.submit{
    border: none;
  color: white;
  padding: 15px 22px;
  text-align: center;
  cursor: pointer;
  background-color: #0b5ed7;
}
.content{
    padding-top:100px; 
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

</style>
    </head>
    <body>
        <header class="top-header">
            <a href="loginp2.jsp">
            <button class="button" >Login</button>
        </a>
         <%request.setCharacterEncoding("UTF-8");
         
         %>
        <FORM action="CDSearch0_9.jsp" METHOD="POST">
            <% if(request.getParameter("user") == null){ %>
            <input type="text" name="user" class="inputS"   value=""/>
            <label for="number">Enter a number:</label>
  <input type="number" name="number" id="number" value="10"/>
<!--            <input type="submit" class="submit" value="Search"/>-->
            <button type="submit">
                <img src="https://cdn.iconscout.com/icon/free/png-512/search-1941-1143726.png?f=avif&w=256" width="25" height="25">
            </button>
            <%}%>
            <% if(request.getParameter("user") != null){ %>
            <input type="text" name="user" class="inputS" value=<%=request.getParameter("user")%> />
            <label for="number">Enter a number:</label>
           
  <input type="number" name="number" id="number" value="10"/>
          
         
            <button type="submit">
                <img src="https://cdn.iconscout.com/icon/free/png-512/search-1941-1143726.png?f=avif&w=256" width="25" height="25">
            </button>
<!--            <img src="search-interface-symbol.png" alt=""/>-->
            <%}%>
        </FORM>
        
        
        
        </header>
    <center>
        
        

            <% 
            String strNew="";
            String strNew2="";
            String strNew3="";
            String strNew4="";
            String strNewin="";
           String strNewin2="";
                //connection to mongodb server 
                Mongo mg = new Mongo("localhost", 27017);
                DB db = mg.getDB("search");
                DBCollection collection = db.getCollection("mongo2");
                
                //---------------------------
                //BasicDBObject me = new BasicDBObject();
                //me.put("name", "55");
                //collection.insert(me);
                //--------------------------
//                BasicDBObject whereQuery = new BasicDBObject();
                String searchTerm = request.getParameter("user");

BasicDBObject whereQuery = new BasicDBObject();
whereQuery.put("$or", Arrays.asList(
    new BasicDBObject("PIC_DESC", new BasicDBObject("$regex", ".*" + searchTerm + ".*").append("$options", "i")),
    new BasicDBObject("POS_NAME_T", new BasicDBObject("$regex", ".*" + searchTerm + ".*").append("$options", "i")),
    new BasicDBObject("REG_HISTORY", new BasicDBObject("$regex", ".*" + searchTerm + ".*").append("$options", "i")),
    new BasicDBObject("POS_ROAD", new BasicDBObject("$regex", ".*" + searchTerm + ".*").append("$options", "i"))
    // add additional columns as needed
));

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
                    out.print("");
                   
                }
                //--------------------------
                
                
                if (request.getParameter("user") != null) {
                    while (cursor.hasNext()) {
                        BasicDBObject obj = (BasicDBObject) cursor.next();
                         //.replaceAll("[","").replaceAll("]","");
                        
                        try{
                        String t =  obj.get("PIC_NAME").toString(); 
                        
                      strNew="http://58.181.189.35/DATAFILE/PICTURE/HISSITE/PICTURE/"+t;
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
                        String t =  obj.get("REG_HISTORY").toString(); 
                        String t2 =  obj.get("REG_PRESENT").toString();
                        String t3 =  obj.get("POS_ROAD").toString();
                        strNew3 = t;
                        strNewin = t2;
                        strNewin2 = t3;
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


            
            %>
            
            
           <% if( strNew4 == null || request.getParameter("user") == null  ) { //ไม่แสดงตาราง%>
            
            <%}%><%else {%>
            <table border="1" style="width:80%;margin:auto">
            <tr>
            <br>
            <th style="width:20%;margin:auto">Name</th>
                <th>Image</th>
                <th>Information</th>
                
            </tr>
<%}%> 
            
            
            
            
            <td><%out.print(obj.get("PIC_DESC"));%></td>
            <%
                if( strNew != null) { %>
            <%--<td><%out.print(obj.get("__hissite").getClass());%></td>--%>
            <td><img src='<%=strNew%>'width="250" 
     height="260" ></td>
            
            <%} 
          %>
          
       
          
          <%
                if( strNew == null) { %>
            <%--<td><%out.print(obj.get("__hissite").getClass());%></td>--%>
            <td><img src='<%=strNew%>'width="80" 
     height="90" ></td>
            
            <%} 
          %>
          
          
          
          <% if( strNew2 != null) { %>
            <td><%out.print(strNew2);%></td>
            <%}
          %> 
          <% if( strNew3 != null) { %>
            <td><%out.print(strNew3+"<br><br>รายละเอียดสถานที่ : "+strNewin+"<br><br>ถนน : "+strNewin2);%></td>
            <%}
          %> 
        
          

          
          
          
          

            <%}
                }
            %>


        </table>
    </center>
</body>
</html>
