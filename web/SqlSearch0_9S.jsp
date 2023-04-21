


<%@page import="org.apache.commons.lang3.time.StopWatch"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mongodb.AggregationOutput"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Scanner"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.Mongo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User</title>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css" />
        <style>
            #wrapperx
{

	min-width: 940px;
	max-width: 1000px;
}
#wrapperx #layout_middle
{
	width: 100%;
	max-width: 1000px;
}
.buttonlogin{
  border: none;
  color: white;
  padding: 18px 32px;
  text-align: center;
  cursor: pointer;
  background-color: #947D6F;
  position: absolute;
  top: 16px;
  right: 20px;
  border-radius: 100px;
  font-size: 20px;
/*  right: 15px; top: 15px*/

float: right;
   display: stretch;
  flex-flow: row wrap;
  align-items: center;
}
button[type="submit"] {
    background-color: #65bfe6;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 80%;
    
    font-size: 16px;
    cursor: pointer;
}

.inputS{
    height: 2rem;
    width: 40rem;
    border: 2px solid black;
    border-radius: 1rem;
}
.submit{
    border: none;
  color: white;
  padding: 15px 22px;
  text-align: center;
  cursor: pointer;
  background-color: #0b5ed7;
}
.content{
    padding-top:100px; 
}
input {
    writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-variant-alternates: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    font-optical-sizing: ;
    font-kerning: ;
    font-feature-settings: ;
    font-variation-settings: ;
    text-rendering: auto;
    color: fieldtext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    appearance: auto;
    -webkit-rtl-ordering: logical;
    cursor: text;
    background-color: field;
    margin: 0em;
    padding: 1px 2px;
    border-width: 2px;
    border-style: inset;
    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
}


#search_container {
    position: absolute;
    top: 10px;
    left: 100px;
    width: 48%;
    margin-left: 100px;
    margin-top: 5px;
    background-color: #ffffff;
    border: 4px solid #ffffff;
    border-radius: 100px;
    box-shadow: 5px 4px 12px 1px rgba(0, 0, 0, 0.32);
}
#search_container > table
{
	width: 100%;
}
*, a, input, textarea, button, input:focus, textarea:focus {
    outline: 0 !important;
    -webkit-tap-highlight-color: rgba(255, 255, 255, 0);
}

/* Top Menu */
.top_menu { float: left; margin-left: 20px;}
.top_menu > ul { display: inline-block; margin: 0px 0px 3px 15px; padding: 0px; border-bottom: none; }
.top_menu > ul > li { display: inline-block; list-style: none; }
.top_menu > ul > li > a { color: #c8d8ef; display: block; padding: 0px 10px; line-height: 29px; text-decoration: none; font-weight: bold; font-size: 14px; border-bottom: 2px solid transparent; }
.top_menu > ul > li > a:hover { color: #f76d6a; }
.top_menu > ul > li.active > a { color: #f76d6a; position: relative; border-bottom: 2px solid #f76d6a; }

body .gsc-author {
  display: none;
}
.gsc-webResult.gsc-result, .gsc-results .gsc-imageResult {
    border-color: transparent;
    background-color: transparent;
}
.gsc-webResult.gsc-result:hover, .gsc-imageResult:hover {
    border-color: transparent;
    background-color: transparent;
}
.cse .gsc-control-cse, .gsc-control-cse {
    padding: 0em;
    width: auto;
}

body .gcsc-find-more-on-google {
    display: none;
}

body .gcsc-find-more-on-google-branding {
    display: block;
    float: none;
}

.gsc-webResult .gsc-url-bottom {
    display: block;
}

.gsc-webResult .gsc-url-top {
    display: none;
}

.gs-result .gs-image,
.gs-result .gs-promotion-image {
  vertical-align: middle;
  border: none;
  float: none;
}
#search_container.active #search_form_input_clear_one.search_form_input_clear_opened {
    background-position: center center;
}
#search_form_input_clear_one {
    display: table-cell;
    width: 34px;
    padding: 0px;
    margin: 0px;
    height: 34px;
    text-indent: -9999em;
    border: none;
    cursor: pointer;
    border-radius: 0px;
    background: url(https://www.kiddle.co/clear_but.png) transparent no-repeat -100px -100px;
}
button.s_btn {
    background: url(https://www.kiddle.co/search_icon_m.png) no-repeat center 13px;
    background-color: #ffffff;
    text-indent: -9999em;
    cursor: pointer;
    width: 45px;
    height: 45px;
    padding: 0px 0px;
    margin-left: 0px;
    color: #ffffff;
    border: none !important;
    border-left: none !important;
    vertical-align: top;
    border-radius: 100px;
    font-family: Arial,Helvetica,sans-serif;
    font-size: 13px;
}
.body1 {
  background: url('https://cdn.discordapp.com/attachments/1002950629100101642/1092285061774184538/Get_Our_Latest_1.png') no-repeat center center fixed; /* Replace 'your-image-url.jpg' with the URL of your background image */
  background-size: cover;
}

.search_field_clear input#q, .search_field_clear input#q2
{
  width: 400px;
  line-height: 23px;
  height: 23px;
  font-family: arial, sans-serif;
  color: #141414;
  font-size: 16px;
  background: transparent;
  border: none !important; 
  padding: 6px 0px 6px 6px;
  vertical-align: top;
  outline: none;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
  -webkit-border-radius: 0px;
  -moz-border-radius: 0px;
  border-radius: 0px;
}
.search_field_clear #search_form_input_clear_one, .search_field_clear #search_form_input_clear_two
{
  background: url(/clear_but.png) no-repeat center center;
  width: 30px;
  margin-left: -3px;
  padding: 0px;
  height: 34px;
  text-indent: -9999em;
  border: none;
  cursor: pointer;
}
.search_field_clear #search_form_input_clear_one.search_form_input_clear_closed, .search_field_clear #search_form_input_clear_two.search_form_input_clear_closed
{
  background: transparent;
}
.search_inner input.submit
{
  float: left;
}
input::-ms-clear {
  display: none;
}
.table2 {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  background-color: white;
  position: absolute;
  top: 106px;
  left: 135px;
}

.table2 th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

.table2 td {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
.top-header{
    background-color: #f8efc6;
    position: relative;
    background-repeat: no-repeat;
    background-position-x: -170px;
    padding-bottom: 118px;
    margin-bottom: -39px;
    border-bottom: 2px solid #ddd;
}
.dataTables_wrapper {
    position: relative;
    top: 12px;
    clear: both;
}
.Headmongo{
text-align: left;

}
.Headmongo h1{
    
    font-size:35px; 
    color: #141414;
    font-weight: 600;
    position: absolute;
    left: 55px;
}
.buttonswitch{
    border: none;
    color: white;
    padding: 18px 32px;
    text-align: center;
    cursor: pointer;
    background-color: #947D6F;
    position: absolute;
    top: 16px;
    right: 30%;
    border-radius: 100px;
    font-size: 20px;
    float: right;
}
.timestop{
    position: relative;
    top: 25px;
}
</style>
    </head>
    
    <body>
        <header class="top-header">
            <div class="Headmongo"><h1>SQL</h1></div>
            
<!--            <img class="jfN4p" src="https://w7.pngwing.com/pngs/63/19/png-transparent-mongodb-database-nosql-postgresql-mongo-text-logo-business.png" style="background:none" alt="Google" height="150" width="150" data-atf="1" data-frt="0">-->
           <a href="CDSearch0_9S.jsp">
            <button class="buttonswitch" >MongoDB</button>
        </a>

<a href="loginp2.jsp">
            <button class="buttonlogin" >Login</button>
        </a>
         <%request.setCharacterEncoding("UTF-8");
         
         %>
        
        
        <table id="search_container" class="active">
              <tbody ><tr>
              
                <td class="search_field_clear">
                    <%if(request.getParameter("q")==null){%>
                  <form action="testSqlSearchGPT.jsp" method="POST">
  <input type="text" name="q" id="q" value="" size="45" autocapitalize="off" autocomplete="off" autocorrect="off" onfocus="if (this.value === '') { document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_closed'; }
  if (this.value !== '') { document.getElementById('search_container').className = 'active'; } " onblur="document.getElementById('search_container').className = ''; " onkeydown="document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_opened';
  document.getElementById('search_container').className = 'active';" onkeyup="if (this.value === '') { document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_closed';
  document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_closed';
  document.getElementById('search_container').className = 'active'; };" fdprocessedid="4yzn4">
  <td class="search_form_input_clear">
                  <button id="search_form_input_clear_one" class="search_form_input_clear_opened" type="button" value="X" onclick="document.getElementById('q').value=''; document.getElementById('q').focus();" fdprocessedid="88z0q">Clear</button>
                </td>
                <td class="search_button">
                  <button type="submit" value="Search" class="submit s_btn" fdprocessedid="x3pe5u" >Search</button>
                </td> 
  
</form><%}%><%else{%>
<form action="testSqlSearchGPT.jsp" method="POST">
    <input type="text" name="q" id="q" value='<%=request.getParameter("q")%>' size="45" autocapitalize="off" autocomplete="off" autocorrect="off" onfocus="if (this.value === '') { document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_closed'; }
  if (this.value !== '') { document.getElementById('search_container').className = 'active'; } " onblur="document.getElementById('search_container').className = ''; " onkeydown="document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_opened';
  document.getElementById('search_container').className = 'active';" onkeyup="if (this.value === '') { document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_closed';
  document.getElementById('search_form_input_clear_one').className = 'search_form_input_clear_closed';
  document.getElementById('search_container').className = 'active'; };" fdprocessedid="4yzn4">
  <td class="search_form_input_clear">
                  <button id="search_form_input_clear_one" class="search_form_input_clear_opened" type="button" value="X" onclick="document.getElementById('q').value=''; document.getElementById('q').focus();" fdprocessedid="88z0q">Clear</button>
                </td>
                <td class="search_button">
                  <button type="submit" value="Search" class="submit s_btn" fdprocessedid="x3pe5u" >Search</button>
                </td> 
  
</form>
<%}%>
                

                
                
                
                             
              
              </tr>
            </tbody></table> 
                
                
                             
              
            
        
          
          
           
        </header>
<body class="body1">
         
        </body>  