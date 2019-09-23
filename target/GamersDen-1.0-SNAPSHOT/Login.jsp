<%-- 
    Document   : Login
    Created on : Mar 27, 2018, 7:13:05 AM
    Author     : Tawhid
--%>

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
  body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
button {
    background-color: black;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}
button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
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
<li> <a href="ContactUs.jsp?pagename=PlatformSearch.jsp?search=<%=request.getParameter("search")%>">Contact Us</a></li>
<li> <a href="Registration.jsp">Register Here!!!</a></li>
<li> <a href="Login.jsp">Login</a></li>
<li> <a href="UploadGames">Upload Games</a></li>
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
<br>
<br>
<h2 style="text-align:center">Login Form</h2>
<form action="Login">

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required="">

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required="">
        
    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
      <a href="Registration.jsp"><button type="button"  class="cancelbtn">Register Here!!!</button></a>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>

<br>
<br>
<footer class="container-fluid">
<p> All Rights Reserved</p><p>
</p><p><strong>Gamer Forever 2018</strong></p>
</footer>
 

	











  
  
  
  
  
</body></html>
