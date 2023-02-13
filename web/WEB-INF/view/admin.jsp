<%-- 
    Document   : admin
    Created on : Sep 20, 2022, 10:28:16 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    <title>Admin</title>
    <link rel="stylesheet" href="style2.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .Bsave{
         border: none;
  color: #d2d3d4;
  padding: 15px 25px;
  text-align: center;
  cursor: pointer;
  background-color: #0b5ed7;
/*  right: 15px; top: 15px*/
float: right;
   display: stretch;
  flex-flow: row wrap;
  align-items: center;
  margin-left:35px;
        }
        
        
        .Bpreview{
         border: none;
  color: #d2d3d4;
  padding: 15px 22px;
  text-align: center;
  cursor: pointer;
  background-color: #50C166;
/*  right: 15px; top: 15px*/
float: right;
   display: stretch;
  flex-flow: row wrap;
  align-items: center;
        }
        
        
        .Blogout{
         border: none;
  color: #d2d3d4;
  padding: 5px 15px;
  text-align: center;
  cursor: pointer;
  background-color: #DE2A2A;
/*  right: 15px; top: 15px*/
float: right;
   display: stretch;
  flex-flow: row wrap;
  align-items: center;
        }
        
        
        
    </style>
    </head>
    <body>
<!--    กล่องเปลี่ยนขนาด-->
    <div class="wrapper">
        <a href="CDSearch0_7.jsp">
            <button class="Blogout" >Logout</button>
        </a>
      <h2>Config</h2>
      <form action="jaspservlet" method="post">
       <textarea spellcheck="false" placeholder="SELECT id, antique_name, antique_type_id, history, size FROM antique" required  class="text" type="text" name="exsql"></textarea>
       <input type="text" name="id" placeholder="id"/>
      <input class="Bsave" type="submit" value="Save">
      <button class="Bpreview">Preview</button>
     </form>

    </div>

  </body>
</html>
