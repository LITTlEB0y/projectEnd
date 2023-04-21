<%-- 
    Document   : testexample
    Created on : Apr 12, 2023, 5:24:39 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<%
        String str = null;
if (str != null) {
    int length = str.length();
    out.print(length);
}

        %>