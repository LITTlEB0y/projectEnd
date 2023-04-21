<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Retrieve Order by ID</title>
 
    </head>
    <body>
        
        <style>
            h1{
                color: black;
            }
            body{
    color: white;
    background-color: white;
    padding: 20px;
    top:0;
    left:0;
    right:0;
    z-index: 10;
    
 
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='$gradient-start', endColorstr='$gradient-end',GradientType=1 );
  color: white;
}
input[type=text]{
  width: 10%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical; /* enable vertical resizing */
    overflow: auto; /* enable scrolling when content overflows */
}
select {
  width: 35%;
  height: 40px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 10%;
  background-color: #95D878;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 20px;
}
input[type=submit].update{
  width: 10%;
  background-color: #95D878;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 20px;
  position: relative;
  right: 15%;
}
input[type=submit].setdefault {
  width: 10%;
  background-color: #6E88FF;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 20px;
  position: relative;
  top: -67px;
  right: 0%;
}
input[type=submit].SearchConfig{
  width: 13%;
  background-color: #95D878;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 20px;
  margin-left: 30px;
}
input.delete{
    width: 10%;
  background-color: #E17474;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  position: relative;
    top: -136px;
    right: -15%;
}

input[type=submit]:hover {
  background-color: #e6e8e6;
}
input.delete[type=submit]:hover {
  background-color: red;
}
input.SearchConfig[type=submit]:hover,input.update[type=submit]:hover {
  background-color: #7ce84d;
}
input.setdefault[type=submit]:hover {
  background-color: #3556f0;
}

div {
/*  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;*/
}
.divpage {
  background-color: white;
  
}

label{
    color: black;
}
p{
    color: black;
    font-size: 35px;
font-weight: bold;
}
button{
  width: 13%;
  background-color: #6E88FF;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 20px;
      position: relative;
     bottom: 67px;
    left: 33%;
      
}
textarea {
			width: 80%;
			height: auto;
			resize: none;
			padding: 10px;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
                        font-size: 20px;
		}
                
/*                  button.logout {
 width: 6%;
    background-color: #E17474;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  position: absolute;
    left: 88%;
    bottom: auto;
}
 button.logout[type=submit]:hover {
  background-color: red;
}*/
/*button.addConfig[type=submit]:hover {
  background-color: #3556f0;
}*/

button.addConfig{
    display: flex;
	height: 50px;
        width:204px;
	padding: 0;
	background: #9a9c9b;
	border: none;
	outline: none;
	border-radius: 5px;
	overflow: hidden;
	font-family: "Quicksand", sans-serif;
	font-size: 16px;
	font-weight: 500;
	cursor: pointer;
        position: absolute;
    left: 15%;
    top: 7%;
}
.addConfig:hover {
	background: #828282;
}

.addConfig:active {
	background: #636363;
}

span.addConfig__text,
span.addConfig__icon {
	display: inline-flex;
	align-items: center;
	padding: 0 23px;
	color: #fff;
	height: 100%;
}

span.addConfig__icon {
	font-size: 2em;
	background: rgba(0, 0, 0, 0.08);
}

button.logout{
    display: flex;
	height: 54px;
        width: 134px;
	padding: 0;
	background: #E17474;
	border: none;
	outline: none;
	border-radius: 5px;
	overflow: hidden;
	font-family: "Quicksand", sans-serif;
	font-size: 16px;
	font-weight: 500;
	cursor: pointer;
        position: absolute;
    top: 5%;
    left: 85%;
    
}
.logout:hover {
	background: #e85151;
}

.logout:active {
	background: #f03737;
}

span.logout__text,
span.logout__icon {
	display: inline-flex;
	align-items: center;
	padding: 0 15px;
	color: #fff;
	height: 100%;
}

span.logout__icon {
	font-size: 2em;
	background: rgba(0, 0, 0, 0.08);
}
h1.searchsize{
    display: block;
    font-size: 3em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

        </style>
        <form action="logout.jsp">
    <button class="logout" type="submit" id="logout"><span class="logout__text">Logout</span><span class='logout__icon'><ion-icon name="log-out-outline"></ion-icon></span></button>
    </form>
        <div class="divpage" style="text-align: center;">
            <h1 class="searchsize">Search Config by ID</h1>

  <%
      // Get the submitted username and password
  Connection con = null;
    // Connect to the MySQL database
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/converterdb?user=root&password=");

    // Query the database for the list of IDs
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT id FROM config");
String buttonInsert="<form method='get' action='insertadmin.jsp'>";
        buttonInsert +="<button class='addConfig' type='submit'><span class='addConfig__text'>Add Config</span>"
                + "<span class='addConfig__icon'><ion-icon name='add-outline'></ion-icon></span></button>";
        buttonInsert +="</form>";
        
  
    // Create a drop-down list with the list of IDs
    out.print("<form method=\"post\">");
    
    out.print("<select name=\"id\">");
    while (rs.next()) {
  String id = rs.getString("id");
  String selected = "";
  if (id.equals(request.getParameter("id"))) {
    selected = "selected";
  }
  out.print("<option value=\"" + id + "\"" + selected + ">" + id + "</option>");
}
    
    out.print("<input class='SearchConfig' type=\"submit\" value=\"Search Config\">");
    
    out.print("</form>");
    

out.print(buttonInsert);

   
    // If the form has been submitted, retrieve and display the order value
    if (request.getMethod().equals("POST")) {
      String id = request.getParameter("id");
      session.setAttribute("idadmin", new String(id));
      PreparedStatement ps = con.prepareStatement("SELECT * FROM config WHERE id=?");
      ps.setString(1, id);
      rs = ps.executeQuery();
      if (rs.next()) {
        out.print("<p>Edit in ID : " + id + "</p>");
        String inputupdateadmin = "<form action='updateadmin.jsp' method='post' onsubmit='return confirm(\"Are you sure you want to update ID: " + id +"\")'>";
        inputupdateadmin +="";
        //inputupdateadmin += "<label for='KeyData'>KeyData:</label> <textarea name='KeyData' id='KeyData' rows='3' style='width: 130px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("KeyData")+"</textarea><br>";
        inputupdateadmin +="<textarea name='config' id='config' rows='3' style='width: 35%;height: 200px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("config")+"</textarea><br>";
        inputupdateadmin +="<label >KeyData:</label><textarea name='KeyData' id='KeyData' rows='3' style='width: 130px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("KeyData")+"</textarea><br>";
        inputupdateadmin +="<label >table1:</label><textarea name='table1' id='table1' rows='3' style='width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("table1")+"</textarea><br>";
        inputupdateadmin +="<label >table2:</label><textarea name='table2' id='table2' rows='3' style='width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("table2")+"</textarea><br>";
        inputupdateadmin +="<label >table3:</label><textarea name='table3' id='table3' rows='3' style='width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("table3")+"</textarea><br>";
        inputupdateadmin +="<label >table4:</label><textarea name='table4' id='table4' rows='3' style='width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("table4")+"</textarea><br>";
        
        //inputupdateadmin += "<label for='table5'>Table5:</label><br>";
        inputupdateadmin +="<label >table5:</label><textarea name='table5' id='table5' rows='3' style='width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard''>"+rs.getString("table5")+"</textarea><br><br><br>";
        
        inputupdateadmin +="<input class='update' type='submit' value='Update'>";
        inputupdateadmin += "</form>";
 

        
        String buttonDelete = "<form action='deleteadmin.jsp' method='post' onsubmit='return confirm(\"Are you sure you want to delete ID: " + id +"\")'>" +
                      "<input type='hidden' name='id' value='" + id + "'>" +
                      "<input type='submit' class='delete' value='Delete'>" +
                      "</form>";
        
        String buttonSetdefault = "<form action='Setdefaultadmin.jsp' method='post'  onsubmit='return confirm(\"Are you sure you want to set ID: " + id + " as default?\")'>" +
                      "<input type='hidden' name='id' value='" + id + "'>" +
                      "<input class='setdefault' type='submit' value='Set Default'>" +
                      "</form>";
        
        
out.print(inputupdateadmin);



out.print(buttonSetdefault);



out.print(buttonDelete);

      } else {
        out.print("<p>Invalid ID</p>");
      }
      ps.close();
    }

    // Close the database connection
    rs.close();
    stmt.close();
    con.close();
  %>
  <script>
  let textarea = document.getElementById('config');

  textarea.addEventListener('input', function () {
    this.style.height = 'auto';
    this.style.height = this.scrollHeight + 'px';
  });
</script>
<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
</div>
    </body>
</html>