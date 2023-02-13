<%-- 
    Document   : index
    Created on : Sep 20, 2022, 9:23:37 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
        <style>
            td{
                padding: 10px;
            }
        </style>
    </head>
    <body>
    <center><h1>Login </h1></center>
    <center>
        <div>
            <form action="login" method="POST">
            <table>
                <tr>
                    <td>User name : </td>
                    <td><input type="text" class="form-control" name="username" placeholder="User name"</td>
                </tr>
                <tr>
                    
                    <td>Passwords : </td>
                    <td><input type="password" class="form-control" name="password" placeholder="Password"</td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center"><input class="btn-success" type="submit" value="Submit"></td>
                </tr> 
                
            </table>
             </form>
        </div>
    </center>
    </body>
</html>
