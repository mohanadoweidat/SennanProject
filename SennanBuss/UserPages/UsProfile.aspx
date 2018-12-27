<%@ Page Title="PROFILE" Language="C#" MasterPageFile="~/bas/master.Master" AutoEventWireup="true" CodeBehind="UsProfile.aspx.cs" Inherits="SennanBuss.UserPages.UsProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet"/>-->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> 

    ¨<style>
          
 
     </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
   <center>
       <img src="../images/1.jpg" class="img-circle" />
   </center>
    
     <br />
    <br />
      <div class="container">
         <div class="row">

            <div class="col-md-3">
                <ul class="nav nav-pills nav-stacked admin-menu" >
                    <li class="active"><a href="" data-target-id="profile"><i class="glyphicon glyphicon-user"></i> Profil</a></li>
                    <li><a href="" data-target-id="change-password"><i class="glyphicon glyphicon-lock"></i> Ändra Lösenord</a></li>
                    <li><a href="" data-target-id="settings"><i class="glyphicon glyphicon-cog"></i>Inställingar</a></li>
                    <li><a href="" data-target-id="logout"><i class="glyphicon glyphicon-log-out"></i> Logga Ut</a></li>
                </ul>
            </div>

            <div class="col-md-9  admin-content" id="profile">
                <div class="panel panel-info" style="margin: 1em;">
                    <div class="panel-heading">
                        <h3 class="panel-title">Användarnamnet</h3>

                    </div>
                    <div class="panel-body">
                        <asp:Label ID="Usnmae" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="panel panel-info" style="margin: 1em;">
                    <div class="panel-heading">
                        <h3 class="panel-title">Email</h3>
                    </div>
                    <div class="panel-body">
                        <asp:Label ID="Usep" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="panel panel-info" style="margin: 1em;">
                    <div class="panel-heading">
                        <h3 class="panel-title">Last Password Change</h3>

                    </div>
                    <div class="panel-body">
                        4 days Ago
                    </div>
                </div>

            </div>
   <div class="col-md-9  admin-content" id="settings">
                <div class="panel panel-info" style="margin: 1em;">
                    <div class="panel-heading">
                        <h3 class="panel-title">Notification</h3>
                    </div>
                    <div class="panel-body">
                        <div class="label label-success">allowed</div>
                    </div>
                </div>
                <div class="panel panel-info" style="margin: 1em;">
                    <div class="panel-heading">
                        <h3 class="panel-title">Newsletter</h3>
                    </div>
                    <div class="panel-body">
                        <div class="badge">Monthly</div>
                    </div>
                </div>
                <div class="panel panel-info" style="margin: 1em;">
                    <div class="panel-heading">
                        <h3 class="panel-title">Admin</h3>

                    </div>
                    <div class="panel-body">
                         <div class="label label-success">yes</div>
                    </div>
                </div>

            </div>

            <div class="col-md-9  admin-content" id="change-password">
                <form action="/password" method="post">

                      <div class="panel panel-info" style="margin: 1em;">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <label for="new_password" class="control-label panel-title">Gammal Lösenord</label>

                            </h3>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-sm-10">
                                    <asp:TextBox ID="oldpwd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                    </div>
           
                    <div class="panel panel-info" style="margin: 1em;">
                        <div class="panel-heading">
                            <h3 class="panel-title"><label for="new_password" class="control-label panel-title">Nya Lösenord</label></h3>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-sm-10">
                                    <asp:TextBox ID="newpwd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                    </div>

             
                    <div class="panel panel-info" style="margin: 1em;">
                        <div class="panel-heading">
                            <h3 class="panel-title"><label for="confirm_password" class="control-label panel-title">Bekräfta Lösenord</label></h3>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-sm-10">
                                    <asp:TextBox ID="newpwdcon" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>

           
                    <div class="panel panel-info border" style="margin: 1em;">
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="pull-left">
                                  
                                    <asp:Button ID="cpwdbtn" runat="server" Text="Ändra Lösenordet" CssClass="form-control btn btn-primary" OnClick="cpwdbtn_Click" />
                                </div>
                            </div>
                        </div>
                    </div>

                </form>
            </div>

            <div class="col-md-9  admin-content" id="settings"></div>

            <div class="col-md-9  admin-content" id="logout">
                <div class="panel panel-info" style="margin: 1em;">
                    <div class="panel-heading">
                        <h3 class="panel-title">Confirm Logout</h3>
                    </div>
                    <div class="panel-body">
                        Do you really want to logout ?  
                        <a  href="#" class="label label-danger"
                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                            <span >   Yes   </span>
                        </a>    
                        <a href="/account" class="label label-success"> <span >  No   </span></a>
                    </div>
                    <form id="logout-form" action="#" method="POST" style="display: none;">
                    </form>



                </div>
            </div>
        </div>
</div>

   <center>
       <br />
      <hr style="margin:0 80px 0 80px ; border:5px solid black" />
   </center>

     <script type="text/javascript">
                $(document).ready(function()
      {
        var navItems = $('.admin-menu li > a');
        var navListItems = $('.admin-menu li');
        var allWells = $('.admin-content');
        var allWellsExceptFirst = $('.admin-content:not(:first)');
        allWellsExceptFirst.hide();
        navItems.click(function(e)
        {
            e.preventDefault();
            navListItems.removeClass('active');
            $(this).closest('li').addClass('active');
            allWells.hide();
            var target = $(this).attr('data-target-id');
            $('#' + target).show();
        });
        });
        </script>



    
        <!-- Success logg in script-->
        <script type="text/javascript" lang="ja">
            function success()
            {
                swal("Info!", "Ditt Lösenord har Ändrats!" + "</br>"+ "<a href='Login.aspx'>Logga in På nytt</a>", "success", "LogIn");
            }

      
             
        </script>


     <!-- Error logg in Alredy exist Email and name Both-->
        <script type="text/javascript" lang="ja">

            function Changeerror() {
                swal({
         type: 'error',
         title: 'Oops...',
           text:"Det nya Lösenordet och bekräftelsen matchar inte!"})}
        </script>
   
</asp:Content>
