<%-- 
    Document   : logout
    Created on : Mar 20, 2023, 7:26:04 PM
    Author     : user
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // Invalidate the current user session
    session.invalidate();
    Cookie[] cookies = request.getCookies();
   if (cookies != null) {
      for (Cookie cookie : cookies) {
         if (cookie.getName().equals("usernamein") || cookie.getName().equals("passwordin")) {
            cookie.setMaxAge(0);
            response.addCookie(cookie);
         }
      }
   }
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
    // Redirect the user to the login page
    response.sendRedirect(request.getContextPath() + "/CDSearch0_9S.jsp");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Hello World!</h1>
    </body>
</html>
