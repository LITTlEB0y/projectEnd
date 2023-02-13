<%-- 
    Document   : index
    Created on : Sep 20, 2022, 9:23:37 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>Login</title>
    <link href="login.css" rel="stylesheet">
  </head>
  <body class="text-center">
    <main class="form-signin">
      <form action="login" method="POST">
        <img class="mb-4" src="./logo.png" alt="" height="300">
        <h1 class="h3 mb-3 fw-normal">Login</h1>
    
        <div class="form-floating">
          <input type="text" class="form-control" name="username" placeholder="Username"
         
        </div>
        <div class="form-floating">
          <input type="password" class="form-control" name="password" placeholder="Password"
          
        </div>
    
        <button class="w-100 btn btn-lg btn-primary mt-3" type="submit">Login</button>
        
      </form>
    </main>

    
    
  </body>
</html>
