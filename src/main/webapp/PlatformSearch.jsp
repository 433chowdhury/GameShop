<%-- 
    Document   : PlatformSearch
    Created on : Mar 27, 2018, 6:36:53 AM
    Author     : Tawhid
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<div class="data" style="width:100%;height:1000px;">
<br>
<div class="container" style="width:100%;height:60px;">
<div class="panel panel-default">
<div class="panel-body" style="background-color:lavender;height:48px;font-size:160%;color:firebrick"><strong>SEARCH RESULTS</strong></div>
</div>
    </div> <!-- Search found shows here -->
<br>
<div class="holder" style="width:100%;height:720px;">
<div class="row" style="width:100%;height:100px;"><!-- Row1 -->

    <%
        Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
            Statement st=con.createStatement();
            String search=request.getParameter("search");
            String sql="SELECT * FROM games where "+search+"=1";
            ResultSet rs=st.executeQuery(sql);
               
            String gamename=null;
            while(rs.next())
            {
                
                int gameid=Integer.parseInt(rs.getString("gameid"));
                String picturename=rs.getString("picturename");
                gamename=rs.getString("gamename");
                int price=Integer.parseInt(rs.getString("price"));
            %>
        
<div class="thumbnail" style="width:20%;">
<img src="Image/<%=picturename%>.jpg" style="width:95%;    height: 135px;">

</div>

<div class="script" style="width:79%;height:70px;float: right;   margin-top: -121px;">
<p style="font-size:20px"> <strong style="color:red"><%=gamename%></strong></p>
<%
    if(Integer.parseInt(rs.getString("ps4"))==1)
    {
%><button type="button" class="btn btn-primary"><a href="Gamepage.jsp?gameid=<%=gameid%>" style="color:white"><strong> PS4 </strong></a></button>
<%
                      }

    if(Integer.parseInt(rs.getString("xbox"))==1)
    {
%><button type="button" class="btn btn-success"><a href="Gamepage.jsp?gameid=<%=gameid%>" style="color:white"><strong>XBOX </strong></a></button>
<%
                      }
%>
<% if(Integer.parseInt(rs.getString("pc"))==1)
    {
%><button type="button" class="btn btn-danger"><a href="Gamepage.jsp?gameid=<%=gameid%>" style="color:white"><strong>PC</strong></a></button>
<%
                      }
%>

<p style="font-size:20px"><strong> Price: <strong style="color:darkmagenta;"> <%=price%> TK</strong></strong></p>

</div>
<br>
<br>

    <%
        

if(gamename.equals("empty"))
{
%>
<center><strong style="color:red;">Sorry!! No Result Found</strong></center>
<%
}
}  
%>
    </div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>




</div></div></body></html>
