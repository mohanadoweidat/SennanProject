<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="SennanBuss.AdminPages.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Admin</title>
    <link href="../styles/pages/Admin/styler.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
      
    
      <header role="banner">
  <h1>Admin Panel</h1>
  <ul class="utilities">
    <li class="users"><a href="#">My Account</a></li>
    <li class="logout warn"><a href="#">Log Out</a></li>
  </ul>
</header>

<nav role='navigation'>
  <ul class="main">
    <li class="dashboard"><a href="admindashboard">Dashboard</a></li>
    <li class="edit"><a href="#">Edit Website</a></li>
    <li class="write"><a href="#">Write news</a></li>
    <li class="comments"><a href="#">Ads</a></li>
    <li class="users"><a href="#">Manage Users</a></li>
    <li class="edit"><a href="#">Hosting Provider</a></li>
  </ul>
</nav>

<main role="main">
  <section class="panel important">
    <h2>Write Some News</h2>
    <ul>
      <li>Write some news for the users to see.</li>
    </ul>
  </section>
  
  <section class="panel important">
    <h2>Write a post</h2>
     <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
      <div class="twothirds">
        News title:<br/>
        <input type="text" name="title" size="40"/><br/><br/>
    Content:<br/>    
<textarea name="newstext" rows="15" cols="67"></textarea><br/>
       

      </div>

    
          

        <div>
          <input type="submit" name="submit" value="Save" />
         
        </div>
      </form>
  </section>
  </main>

    
    

  

         
    </form>
</body>
</html>
