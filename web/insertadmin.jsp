<%-- 
    Document   : update3
    Created on : Feb 19, 2023, 7:04:44 PM
    Author     : user
--%>
<%@ page import="java.sql.*" %>
<%
   request.setCharacterEncoding("UTF-8");
   
    String name = session.getAttribute("usernamein").toString();
     
    String age = session.getAttribute("idadmin").toString();
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/converterdb?user=root&password=");
        if (request.getParameter("submit") != null) {
    String config2 = request.getParameter("ordersql");
    String KeyData2 = request.getParameter("KeyData");
    String table1R = request.getParameter("table1");
    String table2R = request.getParameter("table2");
    String table3R = request.getParameter("table3");
    String table4R = request.getParameter("table4");
    String table5R = request.getParameter("table5");
    String sql = "INSERT INTO config (config, create_by,KeyData,table1,table2,table3,table4,table5) VALUES (?,?,?,?,?,?,?,?)";
    PreparedStatement statement = con.prepareStatement(sql);
    statement.setString(1, config2);
    statement.setString(2, name);
    statement.setString(3, KeyData2);
    statement.setString(4, table1R);
    statement.setString(5, table2R);
    statement.setString(6, table3R);
    statement.setString(7, table4R);
    statement.setString(8, table5R);
    int rowsInserted = statement.executeUpdate();
    String path = "./adminBest.jsp";
    response.sendRedirect(path);
    statement.close();
}

con.close();
    } catch (Exception e) {
        out.println(e);
      
  
  

    }
%>
<html>
<head>
	<title>Insert Data into MySQL Table</title>
        <style>
		body {
			background-color: #F7F7F7;
			font-family: Arial, sans-serif;
		}
		
		form {
			background-color: #FFFFFF;
			border-radius: 5px;
			box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
			margin: 50px auto;
			max-width: 500px;
			padding: 30px;
		}
		
		label {
			color: #333333;
			display: block;
			font-size: 16px;
			font-weight: bold;
			margin-bottom: 10px;
		}
		
		input[type="text"] {
			border: 1px solid #CCCCCC;
			border-radius: 3px;
			font-size: 16px;
			margin-bottom: 20px;
			padding: 10px;
			width: 100%;
			
		}
		
		input[type="submit"] {
			background-color: #009688;
			border: none;
			border-radius: 3px;
			color: #FFFFFF;
			cursor: pointer;
			font-size: 16px;
			padding: 10px;
			transition: background-color 0.3s ease-in-out;
			width: 100%;
                        
		}
		
		input[type="submit"]:hover {
			background-color: #008080;
		}
                #ordersql {
        font-size: 26px; /* set the font size to 16 pixels */
    }
                #KeyData,#table1,#table2,#table3,#table4,#table5 {
        font-size: 20px; /* set the font size to 16 pixels */
    }
	</style>
        	
</head>
<body>
	<form method="post" action="insertadmin.jsp">
		<label for="config">Config:</label>
<!--		<input type="text" name="ordersql" id="ordersql" ><br>-->
                <textarea name='ordersql'  id='ordersql' rows='13' style="width: 100%;height: 200px;resize: vertical; overflow-y: auto; wrap='hard'"></textarea><br>
		<label >KeyData:</label><textarea name='KeyData' id='KeyData' rows='2' style="width: 130px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard' "></textarea><br>
                <label >table1:</label><textarea name='table1' id='table1' rows='2' style="width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard' "></textarea><br>
                <label >table2:</label><textarea name='table2' id='table2' rows='2' style="width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard' "></textarea><br>
                <label >table3:</label><textarea name='table3' id='table3' rows='2' style="width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard' "></textarea><br>
                <label >table4:</label><textarea name='table4' id='table4' rows='2' style="width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard' "></textarea><br>
                <label >table5:</label><textarea name='table5' id='table5' rows='2' style="width: 200px;height: 45px;resize: vertical; overflow-y: auto; wrap='hard' "></textarea><br>
                <br><input type="submit" name="submit" value="Submit">
	</form>
    <script>
  let textarea = document.getElementById('ordersql');

  textarea.addEventListener('input', function () {
    this.style.height = 'auto';
    this.style.height = this.scrollHeight + 'px';
  });
</script>
</body>
</html>
