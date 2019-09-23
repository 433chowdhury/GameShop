<%-- 
    Document   : Home
    Created on : Mar 25, 2018, 11:58:27 PM
    Author     : Tawhid
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mysql.jdbc.*"%>
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
  <div style="text-align:center;color: #5E6E66;\!important" class="jumbotron">
  <h1>Gamer's Den</h1>
  <br>
  <p style="color: darkseagreen">WE HAVE LIMITED NUMBER OF GAMES :)</p><br><br><br>
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
<li> <a href="ContactUs.jsp?pagename=Home.jsp?">Contact Us</a></li>
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
<div class="container">
<div class="panel panel-default">
<div class="panel-body" style="background-color:lavender;height:48px;font-size:160%;color:firebrick"><strong>COMING SOON !</strong></div>
</div>
</div>
<br>
<div class="container">
<div class="row">
<div class="col-lg-4">
<div class="thumbnail">
<a href="Gamepage.jsp?gameid=1">
    <%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
            Statement st=con.createStatement();
            String sql="SELECT picturename FROM games where gameid=1";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
                String picturename=rs.getString("picturename");
            %>
            <image src="Image/<%=picturename%>.jpg" width="100%" height="100%">
            <% 
                }
}
catch(Exception e)
{
System.out.println(e);
}
            %>
<div class="caption">
<p style="text-align:center"><strong>Need For Speed Payback</strong></p><p>
</p></div>
</a>
</div>
</div>
    
<div class="col-lg-4">
<div class="thumbnail">
<a href="Gamepage.jsp?gameid=2">
    <%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
            Statement st=con.createStatement();
            String sql="SELECT picturename FROM games where gameid=2";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
                String filename=rs.getString("picturename");
            %>
            <image src="Image/<%=filename%>.jpg" width="100%" height="100%">
            <% 
                }
}
catch(Exception e)
{
System.out.println(e);
}
            %>
        
<div class="caption">
<p style="text-align:center"><strong>Far Cry 5</strong></p><p>
</p></div>
</a>
</div>
</div>
            


<div class="col-lg-4">
<div class="thumbnail">
<a href="Gamepage.jsp?gameid=3">
    <%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
            Statement st=con.createStatement();
            String sql="SELECT picturename FROM games where gameid=3";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
                String filename=rs.getString("picturename");
            %>
            <image src="Image/<%=filename%>.jpg" width="100%" height="100%">
            <% 
                }
}
catch(Exception e)
{
System.out.println(e);
}
            %>
<div class="caption">
<p style="text-align:center"><strong>The Last Of Us Part II</strong></p><p>
</p></div>
</a>
</div>
</div>
</div>
</div>
<br>
<br>
<div class="container">
<div class="panel panel-default">
<div class="panel-body" style="background-color:lavender;height:48px;font-size:160%;color:firebrick"><strong>TOP CHART!!!</strong></div>
</div>
</div>
<br>
<div class="container">
<div class="row">
<div class="col-lg-4">
<div class="thumbnail">
<a href="Gamepage.jsp?gameid=5">
    <%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
            Statement st=con.createStatement();
            String sql="SELECT picturename FROM games where gameid=5";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
                String filename=rs.getString("picturename");
            %>
            <image src="Image/<%=filename%>.jpg" width="100%" height="100%">
            <% 
                }
}
catch(Exception e)
{
System.out.println(e);
}
            %>
<div class="caption">
<p style="text-align:center"><strong>Battlefield 1</strong></p><p>
</p></div>
</a>
</div>
</div>
<div class="col-lg-4">
<div class="thumbnail">
<a href="Gamepage.jsp?gameid=4">
    <%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
            Statement st=con.createStatement();
            String sql="SELECT picturename FROM games where gameid=4";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
                String filename=rs.getString("picturename");
            %>
            <image src="Image/<%=filename%>.jpg" width="100%" height="100%">
            <% 
                }
}
catch(Exception e)
{
System.out.println(e);
}
            %>
<div class="caption">
<p style="text-align:center"><strong>Fifa'18</strong></p><p>
</p></div>
</a>
</div>
</div>
<div class="col-lg-4">
<div class="thumbnail">
<a href="Gamepage.jsp?gameid=6">
    <%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
            Statement st=con.createStatement();
            String sql="SELECT picturename FROM games where gameid=6";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
                String filename=rs.getString("picturename");
            %>
            <image src="Image/<%=filename%>.jpg" width="100%" height="100%">
            <% 
                }
}
catch(Exception e)
{
System.out.println(e);
}
            %>
<div class="caption">
<p style="text-align:center"><strong>The Evil Within 2</strong></p><p>
</p></div>
</a>
</div>
</div>
</div>
</div>
<br>
<br>
<footer class="container-fluid">
<p> All Rights Reserved</p><p>
</p><p><strong>GAMEING FOREVER</strong></p>
</footer>

</body></html>
