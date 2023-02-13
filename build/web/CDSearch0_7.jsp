<%-- 
    Document   : CDSearch
    Created on : Nov 2, 2022, 10:39:22 AM
    Author     : user
--%>


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
.top-header{
    color: white;
    background-color: #DAF7FF;
    padding: 20px;
    top:0;
    left:0;
    right:0;
    z-index: 10;
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
            <a href="index3.jsp">
            <button class="button" >Login</button>
        </a>
         <%request.setCharacterEncoding("UTF-8");
         
         %>
        <FORM action="CDSearch0_7.jsp" METHOD="POST">
            <% if(request.getParameter("user") == null){ %>
            <input type="text" name="user" class="inputS"   value=""/>
                <input type="submit" class="submit" value="Search"/>
            <%}%>
            <% if(request.getParameter("user") != null){ %>
            <input type="text" name="user" class="inputS" value=<%=request.getParameter("user")%> />
            <input type="submit" class="submit" value="Search"/>
            <%}%>
        </FORM>
        
        
        
        </header>
    <center>
        
        

            <% 
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
                DBCursor cursor = collection.find(whereQuery);
                
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
            
            
            
            
            <td><%out.print(obj.get("keyword"));%></td>
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
            <td><%out.print(strNew3);%></td>
            <%}
          %> 
        
          

          
          
          
          

            <%}
                }
            %>


        </table>
    </center>
</body>
</html>
