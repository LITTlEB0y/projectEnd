<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="xxx.css">
        
       </head>
    <body>
        <div class="box">
            <span class="borderLine"></span>
            <span class="borderLine2"></span>
            <form action="loginreal.jsp" method="POST">
                
                <h2>Log in</h2>
                <div class="inputBox">
                    <input type="text" required="required" name="username">
                    <span>Username</span>
                    <i></i>
                </div>
                <div class="inputBox">
                    <input type="password" required="required" name="password">
                    <span>Password</span>
                    <i></i>
                </div>
                <div class="links">
<!--                    <a href="#">Forgot Password</a>
                    <a href="#">Signup</a>-->
                </div>
                <input type="submit" value="Login">
                
                
                
                
                
            </form>
        
        
        
        
        </div>
    </body>
</html>
