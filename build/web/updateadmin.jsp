<%-- 
    Document   : update3
    Created on : Feb 19, 2023, 7:04:44 PM
    Author     : user
--%>
<%@ page import="javax.servlet.RequestDispatcher" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="java.sql.*" %>
<%
   request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("config");
   String KeyDataUp = request.getParameter("KeyData");
   String table1Up = request.getParameter("table1");
   
   String table2Up = request.getParameter("table2");
   String table3Up = request.getParameter("table3");
   String table4Up = request.getParameter("table4");
   String table5Up = request.getParameter("table5");
  String age = session.getAttribute("idadmin").toString();
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/converterdb?user=root&password=");
        PreparedStatement ps = con.prepareStatement("UPDATE config SET config=?,KeyData=?,table1=?,table2=?,table3=?,table4=?,table5=? WHERE id=?");
        ps.setString(1, name);
        ps.setString(2, KeyDataUp);
        ps.setString(3, table1Up);
        ps.setString(4, table2Up);
        ps.setString(5, table3Up);
        ps.setString(6, table4Up);
        ps.setString(7, table5Up);
        ps.setString(8, age);
        
        int result = ps.executeUpdate();
        if (result > 0) {
            out.println("Record updated successfully");
            String path = "./adminBest.jsp";
            response.sendRedirect(path);
        } else {
            out.println("Record not found or update failed");
        }
        con.close();
    } catch (Exception e) {
        out.println(e);
    }
%>

