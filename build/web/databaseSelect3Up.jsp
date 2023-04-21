<%-- 
    Document   : databaseSelect
    Created on : Jan 14, 2023, 9:39:17 PM
    Author     : user
--%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<style>
    .container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 20px;
}
    .buttonlogout{
     margin-left: auto;
  
  
    }
    #logout {
  background-color: red;
  height: 48px;
  text-align: right;
  position: relative;
  left: 1700%;
}
table.dataTable.no-footer {
 color: black;   
}
.dataTables_wrapper table {
  border-color: black;
}
</style>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css" />
        <div class="container">
    <form action="logout.jsp">
        <button style="--c:#E95A49" type="submit" id="logout">Logout</button>
    </form>
            </div>
</head>
<%String[] select = new String[1];%>  
<body>

    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 150%;
                margin-bottom: 1rem;
                table-layout: fixed;
        }
 
        th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
            border: 1px solid black;
        }
       td{
  white-space: nowrap;
    overflow: hidden;
    width: 40px;
    text-overflow: ellipsis;
    border: 1px solid black;
   
}
/*        table {
    table-layout: fixed;
     width: 800px;
    white-space: nowrap;
    overflow: hidden;  
}
 
table th {
    white-space: nowrap;
    overflow: hidden;
}
 
table td {
    
    white-space: nowrap;
    overflow: hidden;
    width: 40px;
    text-overflow: ellipsis;
}*/


        body{
            color: black;

            padding: 20px;
            top:0;
            left:0;
            right:0;
            z-index: 10;
            background: white;
            
            
        }

        button {
            --c:  #229091; /* the color*/
             font-size: 16px;
  padding: 10px;

            box-shadow: 0 0 0 .1em inset var(--c); 
            --_g: linear-gradient(var(--c) 0 0) no-repeat;
            background: 
                var(--_g) calc(var(--_p,0%) - 100%) 0%,
                var(--_g) calc(200% - var(--_p,0%)) 0%,
                var(--_g) calc(var(--_p,0%) - 100%) 100%,
                var(--_g) calc(200% - var(--_p,0%)) 100%;
            background-size: 50.5% calc(var(--_p,0%)/2 + .5%);
            outline-offset: .1em;
            transition: background-size .4s, background-position 0s .4s;
        }
        button:hover {
            --_p: 100%;
            transition: background-position .4s, background-size 0s;
        }
        button:active {

            background-color: var(--c);
            color: #fff;
        }
        select#list1 {
  font-size: 16px;
  padding: 10px;
}
select#listtable {
  font-size: 16px;
  padding: 10px;
}
table.display td {
overflow: hidden;
white-space: nowrap;
text-overflow: ellipsis;
-o-text-overflow: ellipsis;
}

.dataTables_wrapper .dataTables_info,label{
    color: black;
}

    </style>


    <form action="databaseSelect3Up.jsp">
        

            <select name="list1" id="list1">
                <option>Select</option>
                <%

                    Connection conn = null;
                    Statement stmt = null;

                    try {
                        Class.forName("com.mysql.jdbc.Driver");

                        //     out.println("Connecting to database...");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + "?user=root&password=");

                        //      out.println("Creating statement...");
                        stmt = conn.createStatement();
                        String sql;
                        sql = "SHOW DATABASES";
                        ResultSet rs = stmt.executeQuery(sql);

                        while (rs.next()) {
                            String dbname = rs.getString("Database");
                %>
                <option ><%=rs.getString("Database")%></option> 

                <%
                            //         out.println("dbname: " + dbname);

                        }
                        select[0] = request.getParameter("list1");

                        rs.close();
                        stmt.close();
                        conn.close();
                    } catch (SQLException se) {
                        se.printStackTrace();
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        try {
                            if (stmt != null) {
                                stmt.close();
                            }
                        } catch (SQLException se2) {
                        }
                        try {
                            if (conn != null) {
                                conn.close();
                            }
                        } catch (SQLException se) {
                            se.printStackTrace();
                        }
                    }


                %>
            </select>

            <!--        table select-->




            <button type="submit">Submit</button>
        
    </form> 





    <%    ////////////////////
        String list1 = request.getParameter("list1");

        out.print("<script> document.getElementById('list1').value = '" + list1 + "'; </script>");
        ////////////////////
    %>
    
    <!--ถามอาจาร  -->
    <script>
        let count = 0;
        function myFunction()
        {

            var listtable = document.getElementById('listtable').value;
            //    alert(listtable+'');

            var current_page = window.location.href;
            var href = new URL(current_page.toString());
            href.searchParams.set("listtable", listtable);
            //    var new_page = current_page+"&listtable="+listtable;
            //    alert(new_page+'');
            //document.getElementById('listtable').value = '"+listtable+"';

            window.location.href = href.toString();


        }
    </script>
    <%
        String list2 = request.getParameter("listtable");
//    out.print(list2);
out.print("<script> document.getElementById('listtable').value = '" + list2 + "'; </script>");
    %>
    
<!--    <script> document.getElementById('listtable').value = list2;</script>-->

    <!--<form action="databaseSelect2.jsp">-->
    <select name="listtable" id="listtable">
        <%            String listtable = request.getParameter("listtable");%>
        <option value="<%=listtable%>">Select</option>

        <%

            //   table
            Connection conntable = null;
            Statement stmttable = null;
            ResultSet rstable = null;
            String database = "";
            String table = "";
            try {

                conntable = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + select[0] + "?user=root&password=");
                database = request.getParameter("list1");
                stmttable = conntable.createStatement();
                String querytable = "SHOW TABLES";
                rstable = stmttable.executeQuery(querytable);

                while (rstable.next()) {
                    String tablename = rstable.getString(1);
                    out.println("tablename: " + tablename);

        %>
        <option><%=rstable.getString(1)%></option>

        <%
                }
            } catch (Exception e) {
                //        e.printStackTrace();

            }%></select>

    <!--        table select-->


    <button onclick="myFunction()">Find</button>
    <!--<button type="submit">Submittable</button>-->    

    <!--</form>-->    



<!--<h1>Hello World! ${param.list1} ${param.listtable}</h1>-->
    <script>

        function myFunction2(id)
        {
            var databaseUpdate = document.getElementById("list1").value;

            var listtable = document.getElementById('listtable').value;
            window.location.href = "databaseSelect4New.jsp?databaseUpdate=" + databaseUpdate + "&idupdate=" + id + "&table=" + listtable;


            console.log(id);
        }
    </script>
    <script>

        function myFunction3(id)
        {
            var databaseUpdate = document.getElementById("list1").value;

            var listtable = document.getElementById('listtable').value;
            var result = confirm("Are you sure you want to delete this ID:" + id + "?");
            if (result) {
                window.location.href = "databasedelete.jsp?databaseUpdate=" + databaseUpdate + "&idupdate=" + id + "&table=" + listtable;
            } else {
                // User clicked Cancel, do nothing
                // ...
            }

            console.log(id);
        }
    </script>

    <script>

        function myFunction4()
        {
            var databaseUpdate = document.getElementById("list1").value;

            var listtable = document.getElementById('listtable').value;
            window.location.href = "databaseSelectInsert4New.jsp?databaseUpdate=" + databaseUpdate + "&table=" + listtable;



        }
    </script>

    <%
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
            
            
            rec = stmt2.executeQuery("SELECT * FROM " + list2 + " limit 0,150");
            
            

            //table
            String table2 = " <button onclick='myFunction4()'>Insert " + "</button>" + "<table id='myTable5' style='width:150%'><thead>";
            int columns = rec.getMetaData().getColumnCount();
             table2 += "<th>" + "Action" + "</th>";
            for (int i = 1; i <= columns; i++) {
                table2 += "<th>" + rec.getMetaData().getColumnName(i) + "</th>";

            }
           

            table2 += "</thead><tbody>";
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
                        table2 += "<td>" + " <button onclick='myFunction2(" + rec.getObject(1) + ")'>Update " + "</button>" + " <button style='--c:#E95A49' onclick='myFunction3( \"1\"," + row.toString() + ")'>delete " + "</button>" + "</td>";
                    }
                    Object data = rec.getObject(i);
                    table2 += "<td>" + data + "</td>";
                    
                }
                table2 += "</tr>";
            }
            table2 += "</tbody></table>";%>
    <% //end %>



    <%=table2%>


    <%} catch (Exception e) {
//        out.println(e.getMessage());
            e.printStackTrace();
        }
    %>


    <!--//cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css-->
    <!--//cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js-->
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script>

    <script >
        $(document).ready(function () {
            $('#myTable5').DataTable({
                responsive: true,
                 language: {
            search: 'filter:'
        }
            });
        });
        
    </script>



</body>
</html>
