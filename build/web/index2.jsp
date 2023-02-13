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
       
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="center">
            <h1>Login </h1>
            <form action="login" method="POST">
              <div class="txt_field">
          <input type="text" class="form-control" name="username" placeholder="User name"
          <span></span>
          <label>Username</label>
        </div>  
         <div class="txt_field">
          <input type="password" class="form-control" name="password" placeholder="Password" 
          <span></span>
          <label>Password</label>
          <input class="btn-success" type="submit" value="Submit">
        </div>       
                
            </form>
        </div>
        
    
    
       
    
    </body>
</html>
