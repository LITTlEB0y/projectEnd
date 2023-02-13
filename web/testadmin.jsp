<%-- 
    Document   : testadmin
    Created on : Dec 26, 2022, 6:10:36 PM
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
    <center>
        <form action="jaspservlet" method="post">
            <table>
                <tr>
                    <td><label>First Name:</label></td>
                    <td><input type="text" name="firstname" placeholder="Enter First Name"/></td>
                </tr>
                
                <tr>
                    <td><label>Last Name:</label></td>
                    <td><input type="text" name="lastname" placeholder="Enter last Name"/></td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="submit" />
                    </td>
                </tr>
            </table>
        </form>
    </center>
    </body>
</html>
