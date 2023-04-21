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
  position: fixed;
    top: 34px;
    right: 61px;
    border-radius: 10px;
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


    





    <%    ////////////////////
        String list1 = "gistable";
        
        out.print("<script> document.getElementById('list1').value = '" + list1 + "'; </script>");
        ////////////////////
    %>
    <c:set var="select[0]" value="fineart3" />
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

                conntable = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + list1 + "?user=root&password=");
                database = list1;
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
                //       e.printStackTrace();

            }%></select>





    <!--        table select-->


    <button onclick="myFunction()">Find</button>
    <!--<button type="submit">Submittable</button>-->    

    <!--</form>-->    



<!--<h1>Hello World! ${param.list1} ${param.listtable}</h1>-->
    
   
   
 

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

    <script>
        
        $(document).ready(function () {
            
            $('#myTable5').DataTable({
                responsive: true,
        pageLength: 15
        
            });
        });
        
        
    </script>



</body>
</html>
