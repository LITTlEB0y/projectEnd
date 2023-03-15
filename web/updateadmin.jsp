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
    String name = request.getParameter("ordersql");
   
    String age = session.getAttribute("idadmin").toString();
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/loginpend?user=root&password=");
        PreparedStatement ps = con.prepareStatement("UPDATE tableorder SET ordersql=? WHERE id=?");
        ps.setString(1, name);
        ps.setString(2, age);
        
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

