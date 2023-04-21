<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*, javax.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Search Results</title>
</head>
<body>
    <h1>Search Results</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Table Name</th>
                <%-- Column headers will be added dynamically --%>
            </tr>
        </thead>
        <tbody>
            <% 
            try {
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/all_db?user=root&password=");
                Statement stmt = conn.createStatement();
                
                String searchTerm = "วัดชนะสงคราม"; // replace with the actual search term
                out.print(searchTerm);
                ResultSet rsTables = stmt.executeQuery("SELECT * FROM information_schema.tables WHERE table_schema = 'all_db' AND (table_type = 'BASE TABLE' OR table_type = 'VIEW') AND table_name NOT LIKE 'sqlite_%'");
                
                out.print("Entering while loop...");
                while (rsTables.next()) {out.print("Entering while loop...");
                    
                    String tableName = rsTables.getString("TABLE_NAME");
                    ResultSet rsColumns = stmt.executeQuery("SELECT * FROM " + tableName + " LIMIT 10");
                    ResultSetMetaData rsmd = rsColumns.getMetaData();
                    int columnCount = rsmd.getColumnCount();
                    
                    // Add column headers to the table
                    out.print("<th>" + tableName + "</th>");
                    
                    // Build the query to search the current table
                    String query = "SELECT * FROM " + tableName + " WHERE ";
                    for (int i = 1; i <= columnCount; i++) {
                        query += rsmd.getColumnName(i) + " LIKE '%" + searchTerm + "%'";
                        if (i < columnCount) {
                            query += " OR ";
                        }
                    }
                    
                    // Execute the search query and display the results in the table
                    ResultSet rs = stmt.executeQuery(query);
                    while (rs.next()) {
                        out.print("<tr>");
                        out.print("<td>" + tableName + "</td>");
                        for (int i = 1; i <= columnCount; i++) {
                            out.print("<td>" + rs.getString(i) + "</td>");
                        }
                        out.print("</tr>");
                    }
                }
                
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
                out.print(e);
            }
            %>
        </tbody>
    </table>
</body>
</html>