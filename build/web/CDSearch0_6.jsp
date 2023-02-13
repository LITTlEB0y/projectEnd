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
  background-color: #4CAF50;
/*  right: 15px; top: 15px*/
float: right;
   display: stretch;
  flex-flow: row wrap;
  align-items: center;
}
.top-header{
    color: white;
    background-color: orange;
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
  background-color: #4CAF50;
}
.content{
    padding-top:100px; 
}
</style>
    </head>
    <body>
        <header class="top-header">
            <a href="index3.jsp">
            <button class="button" >Login</button>
        </a>
        <FORM action="CDSearch0_6.jsp" METHOD="POST">
            <input type="text" name="user" class="inputS"/>
            <input type="submit" class="submit"/>
        </FORM>
        
        <%request.setCharacterEncoding("UTF-8");%>
        </header>
    <center>
        <table border="1">
            <tr>
                <th>name</th>
                <th>image</th>
                <th>information</th>
            </tr>

            <% String strNew="";
            String strNew2="";
                //connection to mongodb server 
                Mongo mg = new Mongo("localhost", 27017);
                DB db = mg.getDB("testruntime2");
                DBCollection collection = db.getCollection("run");
                //---------------------------
                //BasicDBObject me = new BasicDBObject();
                //me.put("name", "55");
                //collection.insert(me);
                //--------------------------
                BasicDBObject whereQuery = new BasicDBObject();

                whereQuery.put("keyword", request.getParameter("user"));
                //BasicDBObject fields = new BasicDBObject();
                //fields.put("employeeId", 1);
                DBCursor cursor = collection.find(whereQuery);
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
                        strNew2 = tt[7].replaceAll("\"","");
                    }catch(Exception e){
                            strNew2=null;
                            
                        }  
                      
                        //out.print(strNew2);
                        
                       
                      
                        
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
            
            <td><%out.print(obj.get("keyword"));%></td>
            <%--<td><%out.print(obj.get("__hissite").getClass());%></td>--%>
            <td><img src='<%=strNew%>'width="80" 
     height="90" ></td>
            <td><%out.print(strNew2);%></td>
          


            <%}
                }
            %>


        </table>
    </center>
</body>
</html>
