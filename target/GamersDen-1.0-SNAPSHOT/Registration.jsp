<%-- 
    Document   : Registration
    Created on : Mar 26, 2018, 4:02:03 PM
    Author     : Tawhid
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mysql.jdbc.*"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US"><head>
<title>Gamer's Den</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .jumbotron{
  margin-bottom: 0;
  height: 40%;
  }
  footer {
  background-color: slategray;
  color: white;
  padding: 30px;
  text-align: center;
  }
  
            .container{
                height: 80%;
                width: auto;
                border: 1px solid #000;
            }



#client_form {
    margin: auto;
    width: 60%;
    border: 3px solid;
    padding: 10px;
}
            
            input[type=text], select {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            
            .contentsec{
                border: 1px ;
                height: 500px;
                width: 100%;
                float: left;
                margin-top: 1px;
               
            }
           #save {
    /* text-align: center; */
    right-margin: 10px;
    margin-left: 300px;
    color: white;
    background-color: black;
    margin-top: 15px;
}

    

  </style>
  </head>
    <body>
        
          <div class="container-fluid">
  <div style="text-align:center;color:#5E6E66;" class="jumbotron">
  <h1>Gamer's Den</h1>
  <br>
  <p style="color:darkseagreen">WE HAVE LIMITED NUMBER OF GAMES :)</p><br><br><br>
  </div>
  <nav class="navbar navbar-inverse">
<div class="container-fluid">
<ul class="nav navbar-nav">
<li><a href="Home.jsp">Home</a></li>
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Catagory<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="CatagorySearch.jsp?search=casual">Casual</a></li>
<li><a href="CatagorySearch.jsp?search=sports">Sports</a></li>
<li><a href="CatagorySearch.jsp?search=moba">Moba</a></li>
<li><a href="CatagorySearch.jsp?search=action">Action</a></li>
<li><a href="CatagorySearch.jsp?search=story">Story</a></li>
<li><a href="CatagorySearch.jsp?search=horror">Horror</a></li>
<li><a href="CatagorySearch.jsp?search=puzzle">Puzzle</a></li>
<li><a href="CatagorySearch.jsp?search=racing">Racing</a></li>
</ul>
</li>

<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Game Platform<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="PlatformSearch.jsp?search=ps4">PlayStation</a></li>
<li><a href="PlatformSearch.jsp?search=xbox" <="" a="">Xbox</a></li>
<li><a href="PlatformSearch.jsp?search=pc">PC</a></li>
</ul>
</li>
<li> <a href="ContactUs.jsp?pagename=Registration.jsp">Contact Us</a></li>
<li> <a href="Registration.jsp">Register Here!!!</a></li>
<li> <a href="Login.jsp">Login</a></li>
</ul>

<form class="navbar-form navbar-right" action="GameSearch.jsp" method="post" role="search">
<div class="form-group input-group">
<input type="text" class="form-control" name="search" placeholder="Search..." style="height:28.4px !important">
<span class="input-group-btn">
   <button class="btn btn-primary" type="submit">
     <span class="glyphicon glyphicon-search"></span>
    </button>
 </span>        
</div>
</form>
</div></nav>
</div><!-- Header finishes here -->

<form action="Registration" method="get">
 <div class="container">
     
        <div class="contentsec">
            <h3 style="text-align: center;"> Registration Form</h3>
            
            <div id="client_form" class="row">
                <div class="col-lg-6" >
                    <label><h6>User ID*</h6></label> 
                    <input type="number" class="form-control" name="userid" required="">
                    
                </div>
                <div class="col-lg-6" >
                    <label><h6> First name:*</h6></label> 
                    <input type="text" class="form-control" name="firstname" required="">
                    
                </div>
                
                 <div class="col-lg-6">
                     <label><h6>Last name:</h6> </label> 
                    <input type="text" class="form-control" name="lastname">

                </div>
                 
                <div class="col-lg-6">
                    <label><h6>User Name*</h6></label> 
                    <input type="text" class="form-control" name="username" required="">

                </div>
                
                <div class="col-lg-6">
                    <label><h6>Email:*</h6></label> 
                    <input type="email" class="form-control" name="email" required="">

                </div>
                
                 <div class="col-lg-12">
                     <label><h6>Address:</h6></label> 
                    <input type="text" class="form-control" name="address">


                </div>
                 <div class="col-lg-6">
                     <label><h6>Password*</h6></label> 
                    <input type="password" class="form-control" name="pass1" required="">


                </div>
                <div class="col-lg-6">
                     <label><h6>Re-Type Password*</h6></label> 
                    <input type="password" class="form-control" name="pass2" required="">


                </div>
                <input type="submit" id="Register" class="btn btn-Primary" value="Register">
            </div>
        </div>
</div>
</form>
<!-- form finishes here-->
<footer class="container-fluid">
<p>All Rights Reserved</p>
<p></p>
<p><strong>GAMEING FOREVER</strong></p>
</footer>
</body></html>
