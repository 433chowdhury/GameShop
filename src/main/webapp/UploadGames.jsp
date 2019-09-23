<%-- 
    Document   : UploadGames
    Created on : Mar 27, 2018, 9:07:22 AM
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
<li> <a href="ContactUs.jsp?pagename=UploadGames.jsp">Contact Us</a></li>
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
<form action="UploadGames" method="get">
 <div class="container">
        <div class="contentsec">
            <h3 style="text-align: center;"> Registration Form</h3>

            <div id="client_form" class="row">
                <div class="col-lg-6">
                    <label><h6> Game Name:*</h6></label> 
                    <input type="text" class="form-control" name="gamename" value="" id="gamename">
                    
                </div>
                
                 <div class="col-lg-6">
                     <label><h6>Game ID:</h6> </label> 
                    <input type="number" class="form-control" name="gameid" value="">

                </div>
                 
                
                
                <div class="col-lg-4">
                    <label><h6>Upload Game Picture:*</h6></label> 
                    <input type="file" name="file" value="" id="pic" accept="image/*">
                </div>
                |
                 <div class="col-lg-8">
                     <label><h6>Price:</h6></label> 
                    <input type="number" class="form-control" name="price" value="">
                </div>
                 <div class="col-lg-4">
                     <label><h6>Number of Game:</h6></label> 
                    <input type="number" class="form-control" name="count" value="">
                </div>
                                 <div class="col-lg-4">
                     
                     <select name="Catagory">
    <option value="catagory">Casual</option>
    <option value="catagory">Sport</option>
    <option value="catagory">Moba</option>
    <option value="catagory">Action</option>
    <option value="catagory">Story</option>
    <option value="catagory">Horror</option>
    <option value="catagory">Puzzle</option>
    <option value="catagory">Racing</option>
  </select>

                </div>
                <div class="col-lg-2">
                     <label><h6>PC:</h6></label> 
                    <input type="number" class="form-control" name="pc" value="">
                </div>
                 <div class="col-lg-2">
                     <label><h6>XBOX:</h6></label> 
                    <input type="number" class="form-control" name="xbox" value="">
                </div>
                 <div class="col-lg-2">
                     <label><h6>PS4:</h6></label> 
                    <input type="number" class="form-control" name="ps4" value="">
                </div>
                <input type="submit" id="save" class="btn btn-Primary" value="Upload">

            </div>

        </div> 
        </div>
</form><!-- form finishes here-->
<footer class="container-fluid">
<p> All Rights Reserved</p><p>
</p><p><strong>Gamer Forever 2018</strong></p>
</footer>
 












	











  
  
  
  
  
</body></html>
