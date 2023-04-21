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
               String searchTerm ="วัด"; 
              try{
        Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/all_db?user=root&password=");
//                String query = "SELECT * FROM hissite_join WHERE PIC_DESC LIKE ? OR POS_NAME_T LIKE ? OR REG_HISTORY LIKE ? OR POS_ROAD LIKE ? OR PIC_DESC LIKE ? OR PIC_NAME LIKE ? OR REG_ART_CULTURE LIKE ? ";
String query = "SELECT * FROM hissite_join WHERE PIC_DESC LIKE ? OR POS_NAME_T LIKE ? OR REG_ART_CULTURE LIKE ? limit 10";           //     
PreparedStatement pstmt = conn.prepareStatement(query);
        pstmt.setString(1, "%" + searchTerm + "%");
        pstmt.setString(2, "%" + searchTerm + "%");
        pstmt.setString(3, "%" + searchTerm + "%");
        
       pstmt.executeQuery();
        }catch(Exception e){
                            
                        out.print(e);    
                        }
            %>
        </tbody>
    </table>
</body>
</html>